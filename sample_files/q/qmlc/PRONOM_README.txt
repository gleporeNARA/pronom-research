QML (Qt Modeling Language[4]) is a user interface markup language. It is a declarative language (similar to CSS and JSON) for designing user interface–centric applications. Inline JavaScript code handles imperative aspects. It is associated with Qt Quick, the UI creation kit originally developed by Nokia within the Qt framework. Qt Quick is used for mobile applications where touch input, fluid animations and user experience are crucial. QML is also used with Qt3D[5] to describe a 3D scene and a "frame graph" rendering methodology. A QML document describes a hierarchical object tree. QML modules[6] shipped with Qt include primitive graphical building blocks (e.g., Rectangle, Image), modeling components (e.g., FolderListModel, XmlListModel), behavioral components (e.g., TapHandler, DragHandler, State, Transition, Animation), and more complex controls (e.g., Button, Slider, Drawer, Menu). These elements can be combined to build components ranging in complexity from simple buttons and sliders, to complete internet-enabled programs.

QML elements can be augmented by standard JavaScript both inline and via included .js files. Elements can also be seamlessly integrated and extended by C++ components using the Qt framework.

QML is the language; its JavaScript runtime is the custom V4 engine,[7] since Qt 5.2;[8] and Qt Quick is the 2D scene graph and the UI framework based on it. These are all part of the Qt Declarative module, while the technology is no longer called Qt Declarative.

QML and JavaScript code can be compiled into native C++ binaries with the Qt Quick Compiler.[9] Alternatively there is a QML cache file format[10] which stores a compiled version of QML dynamically for faster startup the next time it is run.

https://en.wikipedia.org/wiki/QML

QML Caching
The QML runtime loads QML documents by parsing them and generating byte code. Most of the time, the document hasn't changed since the last time it was loaded. To speed up this loading process, the QML runtime maintains a cache file for each QML document. This cache file contains the compiled byte code and a binary representation of the QML document structure. In addition, when multiple applications use the same QML document, the memory needed for the code is shared between application processes. The cache files are loaded via the mmap() system call on POSIX-compliant operating systems or CreateFileMapping() on Windows, resulting in significant memory savings.

Each time you load a changed QML document, the cache is automatically re-created. Cache files are located in a sub-directory of QStandardPaths::CacheLocation with the name "qmlcache". The file extension is .qmlc for QML documents 

https://doc.qt.io/qt-5/qtquick-deployment.html
