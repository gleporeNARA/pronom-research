The JDK Flight Recorder File Format
Posted at Feb 20, 2022
The JDK Flight Recorder (JFR) is one of Java’s secret weapons; deeply integrated into the Hotspot VM, it’s a high-performance event collection framework, which lets you collect metrics on runtime aspects like object allocation and garbage collection, class loading, file and network I/O, and lock contention, do method profiling, and much more.

JFR data is persisted in recording files (since Java 14, also "realtime" event streaming is supported), which can be loaded for analysis into tools like JDK Mission Control (JMC), or the jfr utility coming with OpenJDK itself.

While there’s lots of blog posts, conference talks, and other coverage on JFR itself, information about the format of recording files is surprisingly heard to come by. There is no official specification, so the only way to actually understand the JFR file format is to read the source code for writing recordings in the JDK itself, which is a combination of Java and C++ code. Alternatively, you can study the code for parsing recordings in JMC (an official JDK project). Btw., JMC comes with a pure Java-based JFR file writer implementation too.

Apart from the source code itself, the only somewhat related resources which I could find are this JavaOne presentation by Staffan Larssan (2013, still referring to the proprietary Oracle JFR), several JFR-related blog posts by Marcus Hirt, and a post about JFR event sizes by Richard Startin. But there’s no in-depth discussion or explanation of the file format. As it turns out, this by design; the OpenJDK team shied away from creating a spec, "because of the overhead of maintaining and staying compatible with it". I.e. the JFR file format is an implementation detail of OpenJDK, and as such the only stable contract for interacting with it are the APIs provided by JFR.

Now, also if it is an implementation detail, knowing more about the JFR file format would certainly be useful; for instance, you could use this to implement tools for analyzing and visualizing JFR data in non-JVM programming languages, say Python, or to patch corrupted recording files. So my curiosity was piqued and I thought it’d be fun to try and find out how JFR recording files are structured. In particular, I was curious about which techniques are used for keeping files relatively small, also with hundreds of thousands or even millions of recoreded events.

I grabbed a hex editor, the source code of JMC’s recording parser (which I found a bit easier to grasp than the Java/C++ hybrid in the JDK itself), and loaded several example recordings from my JFR Analytics project, stepping through the parser code in debug mode (fun fact: while doing so, I noticed JMC currently fails to parse events with char attributes).

Just a feeew hours later, and I largely understood how the thing works. As an image says more than a thousand words, and I’ll never say no to an opportunity to draw something in the fabuluous Excalidraw, so I proudly present to you this visualization of the JFR file format as per my understanding (click to enlarge):

jfr file format
It’s best viewed on a big screen 😎. Alternatively, here’s a SVG version. Now this doesn’t go into all the finest aspects, so you probably couldn’t go off and implement a clean-room JFR file parser solely based on this. But it does show the relevant concepts and mechanisms. I suggest you spend some time going through sections one to five in the picture, and dive into the sections for header, metadata, constant pool, and actual recorded events. Studying the image should give you a good understanding of the JFR file format and its structure.

Four magic bytes:
F, L, R, \0

https://www.morling.dev/blog/jdk-flight-recorder-file-format/
