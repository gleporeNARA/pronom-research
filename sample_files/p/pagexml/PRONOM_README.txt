NOTE: Once again I can't figure out how to make this format supercede the standard XML format. Am I using the <HasPriorityOver...> wrong? Who knows.



Abstract
There is a plethora of established and proposed document representation formats but none that can adequately support individual stages within an entire sequence of document image analysis methods (from document image enhancement to layout analysis to OCR) and their evaluation. This paper describes PAGE, a new XML-based page image representation framework that records information on image characteristics (image borders, geometric distortions and corresponding corrections, binarisation etc.) in addition to layout structure and page content. The suitability of the framework to the evaluation of entire workflows as well as individual stages has been extensively validated by using it in high-profile applications such as in public contemporary and historical ground-truthed datasets and in the ICDAR Page Segmentation competition series.

http://www.primaresearch.org/publications/ICPR2010_Pletschacher_PAGE


PAGE XML format collection for document image page content and more

For an introduction, please see the following publication: http://www.primaresearch.org/publications/ICPR2010_Pletschacher_PAGE

The most actively used XML formats are:

PAGE XML for page content (regions, text lines, words, glyphs, reading order, text content, ...)
PAGE XML for layout analysis evaluation (evaluation profiles, evaluation results, ...)
PAGE XML for document image dewarping (dewarping grids)
All formats are defined by an XML schema, hosted officially on primaresearch.org: http://www.primaresearch.org/schema/PAGE/gts/pagecontent/2019-07-15/pagecontent.xsd http://www.primaresearch.org/schema/PAGE/eval/layout/2013-07-15/layouteval.xsd http://www.primaresearch.org/schema/PAGE/gts/dewarping/2014-08-26/dewarping.xsd

Please see the wiki for more information.

Note: The master branch contains the proposed changes for the next release.

https://github.com/PRImA-Research-Lab/PAGE-XML
