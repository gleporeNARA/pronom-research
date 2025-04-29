#!/usr/bin/env python3

""" This module contains classes for manipulating HTML and converting HTML to plain text. """

# import modules.
import codecs
import logging
import os
import subprocess
import tempfile
from bs4 import BeautifulSoup


class ModifyHTML():
    """ A class with tools to modify the HTML DOM via BeautifulSoup.
    
    Example:
        >>> html = open("sample.html").read() # string.
        >>> html = ModifyHTML(html, "html5lib") # BeautifulSoup object.
        >>> html.shift_links()
        >>> html.remove_images()
        >>> html.raw() # string version of the HTML with shifted links and no images.
    """


    def __init__(self, html, parser="html5lib"):
        """ Sets instance attributes. 
        
        Args:
            - html (str): The HTML source code to modify.
            - parser (str): The library with which to parse @html. See: 
            "https://www.crummy.com/software/BeautifulSoup/bs4/doc/#installing-a-parser". 
        """

        # set logger; suppress logging by default. 
        self.logger = logging.getLogger(__name__)
        self.logger.addHandler(logging.NullHandler())

        # compose BeautifulSoup object.
        self.logger.info("Creating BeautifulSoup object.")
        self.root = BeautifulSoup(html, parser)


    def shift_links(self):
        """ Appends each <a> tag's "href" attribute value to the tag's text value if the 
        value starts with "http" or "https", i.e. "<a href='bar'>foo</a>" to 
        "<a href='bar'>foo [bar]</a>".

        Returns:
            None
        """

        self.logger.info("Shifting @href values to parent <a> tags.")

        # get all <a> tags.
        a_tags = self.root.find_all("a")
        
        # append @href values to text values.
        for a_tag in a_tags:
            
            if a_tag.string is None:
                continue
            if "href" not in a_tag.attrs:
                continue
            
            # get @href; ignore non-http|https values. 
            href = a_tag["href"]
            if href[0:4].lower() == "http": # case insensitive.
                text = a_tag.string + " [" + href + "]"  
                a_tag.string.replace_with(text)

        return


    def remove_images(self, preserve_alt=False):
        """ Removes image tags from DOM.

        Args:
            - preserve_alt (bool): If True, the "alt" attribute in the <img> tag will be 
            extracted and placed in a new and adjacent <span> tag to preserve the attribute 
            value.
        
        Returns:
            None
        """
        
        self.logger.info("Removing image tags.")
        
        # get all image tags; remove them.
        img_tags = self.root.find_all("img")
        for img_tag in img_tags:
            if preserve_alt:
                if "alt" in img_tag.attrs and img_tag["alt"] != "":
                    span = BeautifulSoup.new_tag(self.root, "span")
                    span.string = "[IMAGE: " + img_tag["alt"] + "]"
                    img_tag.insert_after(span)
            img_tag.extract()

        return


    def raw(self):
        """ Returns string version of current DOM.
        
        Returns:
            str: The return value.
        """

        self.logger.info("Converting BeautifulSoup object to HTML string.")
        strroot = str(self.root)
        return strroot


class HTMLToText():
    """ A class to convert HTML files OR strings to plain text via the Lynx browser 
    (http://lynx.invisible-island.net/).
    
    Examples:
        >>> h2t = HTMLToText()
        >>> h2t.get_text("sample.html", is_raw=False)
        # returns plain text version of "sample.html".
        >>> ht2.get_text("<p class='hi'>Hello World!</p>", is_raw=True)
        # returns "Hello World!" with leading/trailing line breaks.
    """
    
    def __init__(self, lynx_command="lynx", lynx_options=None):
        """ Sets instance attributes.
    
        Args:
            - lynx_command (str): The path to the "lynx" executable.
            - lynx_options (dict): Any additional command line options for the Lynx "dump"
            command. See: 
            "http://lynx.invisible-island.net/release/lynx_help/Lynx_users_guide.html#Invoking". 
        """

        # set logger; suppress logging by default. 
        self.logger = logging.getLogger(__name__)
        self.logger.addHandler(logging.NullHandler())

        # set Lynx command path.
        self.lynx_command = lynx_command

        # set default and custom options for Lynx.
        self.lynx_options = {"nolist":True, "nomargins":True}
        if isinstance(lynx_options, dict):
            for key, val in lynx_options.items():
                self.lynx_options[key] = val
        self.lynx_options["dump"] = True

        # start with null output folder.
        self.temp_dir = None


    def __del__(self):
        """ Attempts to delete @self.temp_dir if it is not None. """

        # first make sure @self.temp_dir isn't None.
        if self.temp_dir is None:
            return

        # otherwise, remove folder.
        try:
            self.temp_dir.cleanup()
        except Exception as err:
            self.logger.error(err)

        # verify folder is removed.
        if not os.path.isdir(self.temp_dir.name):
            self.logger.info("Removed temporary HTML folder: {}".format(self.temp_dir.name))
        else:
            self.logger.warning("Couldn't delete temporary HTML folder: {}".format(
                self.temp_dir.name))
            self.logger.info("Please manually delete the folder.")
        
        return


    def _make_temp_dir(self):
        """ Creates a temporary folder inside "./_temp" in which to write temporary files for
        the duration of the class instance.
        
        Returns:
            tempfile.TemporaryDirectory: The return value.

        Raises:
            - OSError: If the container "./_temp" folder does not exist AND can't be created. 
        """

        # get absoluate path of container folder.
        container_dir = os.path.dirname(os.path.abspath(__file__))
        container_dir = os.path.join(container_dir, "_temp")
        
        # verify container folder exists; if needed, create it.
        if not os.path.isdir(container_dir):
            try:
                self.logger.info("Creating missing container folder: {} ".format(
                    container_dir))
                os.mkdir(container_dir)
            except OSError as err:
                self.logger.error(err)
                self.logger.warning("Failed to create missing container folder: {} ".format(
                    container_dir))
                raise OSError(err)
        
        # create temporary folder inside container folder.
        temp_dir = tempfile.TemporaryDirectory(dir=container_dir)
        self.logger.info("Created temporary HTML folder: {}".format(temp_dir.name))
                
        return temp_dir


    def get_text(self, html, is_raw=True, charset="utf-8"):
        """ Converts an HTML file OR an HTML string to plain text via the Lynx browser.

        Args:
            - html (str): The HTML file OR the raw HTML string to convert to text.
            - is_raw (bool): Use True is @html is an HTML string snippet. Otherwise, use False
            if @html is an HTML file path.
            - charset (str): The encoding for the converted text.

        Returns:
            str: The return value.

        Raises:
            - FileNotFoundError: If the "lynx" command can't be called.
        """
    
        # verify @html is a string or a file.
        if not isinstance(html, str):
            self.logger.error("Expected file path or string, found '{}' instead.".format(
                type(html).__name__))
            self.logger.warning("Falling back to empty string.""")
            return ""   
        if not is_raw and not os.path.isfile(html):
            self.logger.error("Non-existant file path: {}".format(html))
            self.logger.warning("Falling back to empty string.""")
            return ""

        # create Lynx command line arguments.
        cli_args = [self.lynx_command]
        for key, val in self.lynx_options.items():
            if val:
                cli_args.append("-{}".format(key))

        # is @self.temp_dir is None, update it.
        if self.temp_dir is None:
            self.temp_dir = self._make_temp_dir()

        # if needed, write @html to a temporary file.
        if is_raw:
            tf_handle, tf_path = tempfile.mkstemp(dir=self.temp_dir.name, suffix=".html")
            self.logger.info("Writing HTML to temporary file: {}".format(tf_path))
            with codecs.open(tf_path, "w", encoding=charset) as tf:
                tf.write(html)
            cli_args.append(tf_path)
        else:
            cli_args.append(html)

        # run Lynx; return its output.
        self.logger.debug("Using Lynx command line: {}".format(" ".join(cli_args)))
        try:
            self.logger.info("Converting HTML to text via Lynx.")
            cmd = subprocess.run(cli_args, stdout=subprocess.PIPE, stderr=subprocess.PIPE, 
                    check=True)
            text = cmd.stdout.decode(encoding=charset, errors="backslashreplace")
        except FileNotFoundError as err:
            self.logger.error(err)
            self.logger.warning("Couldn't convert HTML. Is Lynx installed and working?")
            raise FileNotFoundError(err)
          
        # if a temporary file was made, delete it. 
        # deletion method per: "https://www.logilab.org/blogentry/17873".
        if is_raw:
            try:
                self.logger.info("Deleting temporary file: {}".format(tf_path))
                os.close(tf_handle)
                os.remove(tf_path)
            except Exception as err:
                self.logger.error(err)
                self.logger.warning("Unable to delete temporary file: {}".format(tf_path))

        return text


if __name__ == "__main__":    
    pass

