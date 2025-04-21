nmrML Overview
We had several overarching goals that guided our decision making process. The data format should:

Allow 1D and 2D NMR spectra and raw data to be easily shared in a vendor agnostic manner
Record enough information about an NMR spectrum acquisition to allow for further processing of the raw spectrum without referring to the original vendor files.
The data format should reference the original files for the sake of posterity and in the case where original vendor specific information is required.
The data format should be flexible and allow for multiple use cases of NMR experiments.
The data format should be easy for developers to understand and integrate into software.
As in our PSI role model, we agreed on implementing a combined standard using XML and accompanying CV terms (see image below), as this allows multiple validation levels to be established: XML syntax and structural validity of XML instances (xml element and attribute positions, order and cardinality) are validated by the XML parser against the XML Schema.

http://nmrml.org/schema/

http://nmrml.org/schema/v1.0.rc1/design-doc/specification/NMR-ML1.0_specificationDoc.docx
