What is it?
GEXF (Graph Exchange XML Format) is a language for describing complex networks structures, their associated data and dynamics. Started in 2007 at Gephi project by different actors, deeply involved in graph exchange issues, the gexf specifications are mature enough to claim being both extensible and open, and suitable for real specific applications.

Manifest
It has been a long time a new graph format was created, so we decided to do one ourselves. No, this is not the reason. Here are some of the reasons we decided to create the GEXF format:

Strong pedestal but addition liberty: The key word is exchange, respect the base constraints to exchange at least the graph topology and data but let people add their own namespace to do their own businesses.
Network only: Our community domain of interest is networks, nothing else. The goal is to represent a network’s elements: nodes, edges and data associated to them. We tried to keep it simple and focus on what we have in common.
Hierarchy structure: Some other formats do have this as well. Nodes can simply host other nodes and so on. The format allows creating hierarchical structure. This is essential for represent clustering.
Dynamic ready: The support of dynamic functionalities is experimental and need more feedback but networks dynamics is a growing topic of research and it is appropriate to think dynamic from the beginning.
Implementation aware: Because hierarchy and dynamic support are not easy tasks, the format can include specific implementation attribute to help parsers to do their job. Again, this is not mandatory but we think it will help.
Utility of XML: You probably already know the utility of markup languages in general, but why XML? Because it is a well known language, because we intend to use namespaces, because XML parsers exists in all programming languages and because XML databases are coming.
Dummy example
This is a minimal file for a static graph containing 2 nodes and 1 edge between them:

http://gexf.net/data/hello-world.gexf
<?xml version="1.0" encoding="UTF-8"?>
<gexf xmlns="http://www.gexf.net/1.2draft" version="1.2">
    <meta lastmodifieddate="2009-03-20">
        <creator>Gexf.net</creator>
        <description>A hello world! file</description>
    </meta>
    <graph mode="static" defaultedgetype="directed">
        <nodes>
            <node id="0" label="Hello" />
            <node id="1" label="Word" />
        </nodes>
        <edges>
            <edge id="0" source="0" target="1" />
        </edges>
    </graph>
</gexf>

https://web.archive.org/web/20210814204340/https://gephi.org/gexf/format/
