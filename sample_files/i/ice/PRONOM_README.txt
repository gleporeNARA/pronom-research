Image Cytometry Experiment Format
International Society for Advancement of Cytometry
Candidate Recommendation
Document Status
This document is an ISAC Candidate Recommendation of the Image Cytometry Experiment
Format specification. Based on additional feedback from implementors and users of this
specification, features and design aspects specified in this document may be changed in the final
version of the Recommendation.
This specification has been formally tested to comply with the W3C XML schema version 1.0
specification but no position is taken in respect to whether a particular software implementing this
specification performs according to medical or other valid regulations.
...
4.2 ICEFormat Data Directory File Structure
An ICEFormat Data Directory XML file shall successfully validate against the provided ICE.xsd XML
schema file. The ICEFormat element (ice namespace, section 1.9) is expected as the root element of the
XML file. The ICEFormat element shall include the version attribute that is fixed to the value of “1.0” in
this version of the specification. The following sub-elements may be used:
⎯ ChannelDefinitions: Definitions of channels (optional, section 4.3)
⎯ SegmentationDefinitions: Definitions of segmentations (optional, section 4.4)
⎯ FeatureDefinitions: Definitions of features (optional, section 4.5)
After these optional elements, either DataSet (multiple DataSet elements may be present) or Plate (in case
of a plate-based experiment(s), multiple Plate elements may be used) shall be used. All of these elements
are defined in the ice namespace (section 1.9). In addition, a single Sitemap element may be included to
provide information about positions of image data from multiple sites were collected. A syntax description
of an ICEFormat Data Directory XML file follows:
<?xml version="1.0" encoding="utf-8"?>
<ICEFormat
 xmlns = "http://www.isac-net.org/std/ICEFormat/1.0/ice"
 xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"
 xsi:schemaLocation = "http://www.isac-net.org/std/ICEFormat/1.0/
 http://flowcyt.sf.net/ice/ICE.xsd"
 version = "1.0"> 
 
 http://flowcyt.sourceforge.net/ice/att1.pdf
