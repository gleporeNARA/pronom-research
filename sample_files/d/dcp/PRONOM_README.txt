Delphi is a general-purpose programming language and a software product that uses the Delphi dialect of the Object Pascal programming language and provides an integrated development environment (IDE) for rapid application development of desktop, mobile, web, and console software,[3] currently developed and maintained by Embarcadero Technologies.

Delphi's compilers generate native code for Microsoft Windows, macOS, iOS, Android and Linux (x64).[4][5][6]

Delphi includes a code editor, a visual designer, an integrated debugger, a source code control component, and support for third-party plugins. The code editor features Code Insight (code completion), Error Insight (real-time error-checking), and refactoring. The visual forms designer has the option of using either the Visual Component Library (VCL) for pure Windows development or the FireMonkey (FMX) framework for cross-platform development. Database support is a key feature and is provided by FireDAC (Database Access Components). Delphi is known for its fast compilation speed, native code, and developer productivity.[citation needed]

Delphi was originally developed by Borland as a rapid application development tool for Windows as the successor of Turbo Pascal. Delphi added full object-oriented programming to the existing language, and the language has grown to support generics, anonymous methods, closures, and native Component Object Model (COM) support.

https://en.wikipedia.org/wiki/Delphi_(software)


\AW: Delphi XE's DCP format: Reading out some basic information
  Old May 6, 2015 at 12:26 p.m
Why do you need knowledge about DCP files?

Maybe you can start something with the following lines...
A DCP file starts with MagicBytes.

fold · markDelphi source code:
Delphi Compiled Package (vv. 2.0-8.0,2005-2010,XE1-XE7), Kylix (vv. 1.0-3.0)(DCP.rfh):
Class : Executable and Object , Status: Guess Work, Last change: 2015-02-09 12:54:12

data
  0x0000 array [4] of Char Magic

%$ IF (Magic=' PKG4 ');
//Delphi3.0 package
const
  Ver=4;
descr (' Borland Delphi 3.0 package file. ')
%$ELSIF (Magic=' PKG5 ');
//Delphi5.0 package
const
  Ver=5;
descr ('Borland Delphi 5.0 package file. ')
%$ELSIF (Magic=' PKG6 ');
//Delphi6.0 package ?
const
  Ver=6;
descr (' Borland Delphi 6.0 package file? ')
%$ELSIF (Magic=' PKG7 ');
//Delphi6.0 7.0 package
const
  Ver=7;
descr (' Borland Delphi 6.0 or 7.0 package file. ')
%$ELSIF (Magic=' PKG9 ');
//Delphi 2005 package
const
  Ver=9;
descr (' Borland Delphi 2005 packagefile. ')
%$ELSIF (Magic=' PKX0 ');
//Delphi 2006 MSIL and later versions package
const
  Ver=10;
descr (' Borland Delphi 2006 MSIL package file. ')
%$ ELSE
assert 0; //fail
%$ END

%$ IF not defined MSIL;
const
  MSIL=0;
%$ END



https://www.delphipraxis.net/1300426-post2.html
