Deploying Translations
The .qm files required for the application should be placed in a location where the loader code using QTranslator can locate them. Typically, this is done by specifying a path relative to QCoreApplication::applicationDirPath().

Usually, there are .qm files for the application, and, if a version of Qt is used that is not installed on the system, Qt's .qm files need to be deployed as well.

In Qt 4, there is one big, monolithic .qm file per locale. For example, the file qt_de.qm contains the German translation of all libraries.

In Qt 5, the .qm files were split up by module and there is a so-called meta catalog file which includes the .qm files of all modules. The name of the meta catalog file is identical to the name of Qt 4's monolithic .qm file so that existing loader code works as before provided all included .qm files are found.


https://doc.qt.io/qt-5/linguist-programmers.html
