<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.22 (Build 170) (http://www.copasi.org) at 2018-04-23 15:02:10 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="22" versionDevel="170" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-13T11:16:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000041" />
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for first order irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_81" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Natural Growth Rate" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-13T11:16:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000041" />
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        switch*k1*Substrate
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_254" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_264" name="switch" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_258" name="Substrate" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Natural Death Rate" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-13T11:16:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000041" />
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        switch*k1*Substrate
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="switch" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="Substrate" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Qunatification of Unbound Toxin (Primary Effect)" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-21T10:59:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Ttoxin*K1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_268" name="Ttoxin" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_246" name="K1" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Quantification of Unbound Toxin (Apoptotic)" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-21T10:59:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        IF(TotalToxin/TotalCells &lt; 28000, K1*Unbound_Toxin, 0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_272" name="K1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="TotalToxin" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="TotalCells" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="Unbound_Toxin" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Toxin Cell Wall Binding Function" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-02T11:28:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        IF( Y/Tcell &lt; 16800000, (v*(X^2))/(Km + X), 0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="Y" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_271" name="Tcell" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="v" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="X" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_280" name="Km" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Threshold Toxin Induced Death" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-21T11:12:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        IF(Ttoxin/Vcells > 28000, K1*VC*KRE1P, IF(Ttoxin/Vcells > 825, K2*VC*KRE1P, 0))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_281" name="Ttoxin" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="Vcells" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="K1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="VC" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_285" name="KRE1P" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_287" name="K2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Toxin Cell Membrane Binding Function" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-02T11:29:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        IF(substrate2/Tcell &lt; 336000, Switch*(V*(substrate^2))/(Km+substrate), 0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_288" name="substrate2" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_284" name="Tcell" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="Switch" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="V" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="substrate" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_293" name="Km" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="K1 Toxin Model" simulationType="time" timeUnit="min" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="deterministic" avogadroConstant="6.0221408570000002e+023">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-07T18:39:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="ECF" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-07T22:56:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Viable_Cells_(Model)" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-07T22:51:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Dead_Cells_(Model)" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-07T22:51:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="GLUC_Toxin" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-17T12:42:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="KRE1P_Toxin" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-17T14:28:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="Dead_Cells_(Primary_effect)" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-18T12:32:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Viable_Cells_(Primary_effect)" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-18T12:32:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="Dead_Cells_(Apoptotic_effect)" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-18T17:21:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Viable_Cells_(Apoptotic_effect)" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-18T17:21:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="Total_Toxin" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-21T11:07:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="Unbound_Toxin_(Primary)" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-21T11:03:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="Unbound_Toxin_(Apoptosis)" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-21T11:10:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Moiety[DC].TotalAmount" simulationType="fixed">
        <InitialExpression>
          &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Moiety[DC].TotalAmount_1" simulationType="fixed">
        <InitialExpression>
          &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="Moiety[DC].TotalAmount_2" simulationType="fixed">
        <InitialExpression>
          &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="Moiety[DC].TotalAmount_3" simulationType="fixed">
        <InitialExpression>
          &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
        </InitialExpression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Toxin Induced Cell Death" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-07T22:51:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Cell Death modelled as Mass Action.

Incorporates amount of toxin bound to cell wall.

When molecules bind to cell it is instantly considered dead.

No current lag time built into model or does it match well with Santos et al of 80% in 5 hours.
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4984" name="Ttoxin" value="1.125e+010"/>
          <Constant key="Parameter_4985" name="Vcells" value="150000"/>
          <Constant key="Parameter_4986" name="K1" value="5e-007"/>
          <Constant key="Parameter_4987" name="K2" value="4e-009"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Parameter_4984"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Parameter_4985"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Parameter_4986"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Parameter_4987"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Natural Cell Growth Rate" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-12T22:26:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4988" name="k1" value="0.00431667"/>
          <Constant key="Parameter_4989" name="switch" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Parameter_4988"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4989"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Natural Cell Death Rate" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-12T22:26:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4990" name="k1" value="0.00025"/>
          <Constant key="Parameter_4991" name="switch" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Parameter_4991"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Parameter_4990"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Experimental Reaction (Primary Method)" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-18T12:32:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          @ 75000 molecules/cell
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4979" name="k1" value="0.0968748"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4979"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="K1 Cell Membrane Binding" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-18T15:16:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4980" name="Tcell" value="150000"/>
          <Constant key="Parameter_4981" name="Switch" value="1"/>
          <Constant key="Parameter_4982" name="V" value="0.20512"/>
          <Constant key="Parameter_4983" name="Km" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Parameter_4980"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_4981"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Parameter_4982"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Parameter_4983"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Experimental Reaction (Apoptotic Method)" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-18T17:21:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          @ 8720 molecules/cell
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4953" name="k1" value="0.0176255"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4953"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Total Toxin Converted to Unbound Toxin" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-21T10:57:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="28000"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4954" name="K1" value="1e+008"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Parameter_4954"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Unbound Toxin to Apoptotic Pathway" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-21T11:07:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="32"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4955" name="K1" value="1e+008"/>
          <Constant key="Parameter_4956" name="TotalToxin" value="1.125e+010"/>
          <Constant key="Parameter_4957" name="TotalCells" value="150000"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_4955"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Parameter_4956"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_4957"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="K1 Cell Wall Binding (Primary)" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-21T11:21:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4958" name="Km" value="1"/>
          <Constant key="Parameter_4959" name="Tcell" value="150000"/>
          <Constant key="Parameter_4960" name="v" value="1.23071"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_4959"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_4960"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Parameter_4958"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="K1 Cell Wall Binding (Apoptotic)" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-21T11:21:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4961" name="Km" value="1"/>
          <Constant key="Parameter_4962" name="Tcell" value="150000"/>
          <Constant key="Parameter_4963" name="v" value="1.23071"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_4962"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_4963"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Parameter_4961"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="2150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Total_Toxin]" value="11250000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Primary)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Apoptosis)]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Ttoxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Vcells" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K2" value="4.0000000000000002e-009" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.096874799999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Switch" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=V" value="0.20512" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.017625499999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalToxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalCells" value="150000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_2" name="PE: 2018-02-18 17:07:22 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_3" name="PE: 2018-02-18 17:07:22 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_4" name="PE: 2018-02-18 17:08:44 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_5" name="PE: 2018-02-18 17:08:44 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322290782690188" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_6" name="PE: 2018-02-18 17:13:22 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_7" name="PE: 2018-02-18 17:13:22 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_8" name="PE: 2018-02-18 17:24:37 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_9" name="PE: 2018-02-18 17:24:37 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="5.0462699553063733e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_10" name="PE: 2018-02-18 17:26:59 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_11" name="PE: 2018-02-18 17:26:59 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="7.7857146898994904e-014" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_12" name="PE: 2018-02-18 17:27:35 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_13" name="PE: 2018-02-18 17:27:35 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_14" name="PE: 2018-02-18 17:30:39 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_15" name="PE: 2018-02-18 17:30:39 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_16" name="PE: 2018-02-18 17:32:13 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_17" name="PE: 2018-02-18 17:32:13 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_18" name="PE: 2018-02-18 17:33:26 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_19" name="PE: 2018-02-18 17:33:26 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_20" name="PE: 2018-02-18 17:35:02 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_21" name="PE: 2018-02-18 17:35:02 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.058968369979171167" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_22" name="PE: 2018-02-18 17:35:47 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_23" name="PE: 2018-02-18 17:35:47 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040324745482278314" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_24" name="PE: 2018-02-18 17:37:17 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_25" name="PE: 2018-02-18 17:37:17 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_26" name="PE: 2018-02-18 17:40:37 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_27" name="PE: 2018-02-18 17:40:37 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_28" name="PE: 2018-02-18 17:41:57 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_29" name="PE: 2018-02-18 17:41:57 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="1.5986571887051417e-148" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_30" name="PE: 2018-02-18 17:42:56 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_31" name="PE: 2018-02-18 17:42:56 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="8.5704427195906356e-278" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_32" name="PE: 2018-02-18 17:44:40 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_33" name="PE: 2018-02-18 17:44:40 Exp: Experiment_1">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_34" name="PE: 2018-02-18 17:45:11 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_35" name="PE: 2018-02-18 17:45:11 Exp: Experiment_1">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040323770270404109" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_36" name="PE: 2018-02-18 17:48:37 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_37" name="PE: 2018-02-18 17:48:37 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.0011181661662816979" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_38" name="PE: 2018-02-18 17:51:31 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="2200000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_39" name="PE: 2018-02-18 17:51:31 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="2200000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00054272135367187805" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_40" name="PE: 2018-02-18 17:55:29 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="2200000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_41" name="PE: 2018-02-18 17:55:29 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="2200000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="1.7161537850994394e-005" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_42" name="PE: 2018-02-18 17:57:37 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="2200000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="1.7161500000000002e-005" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_43" name="PE: 2018-02-18 17:57:37 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="2200000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="1.7161432985053407e-005" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_44" name="PE: 2018-04-02 16:28:07 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="2150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Total_Toxin]" value="11250000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Primary)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Apoptosis)]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Ttoxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Vcells" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K1" value="1.7999999999999999e-011" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K2" value="4.0000000000000002e-009" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322299999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Switch" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=V" value="0.20512" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="1.7161500000000002e-005" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalToxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalCells" value="150000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_45" name="PE: 2018-04-02 16:28:07 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="2150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Total_Toxin]" value="11250000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Primary)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Apoptosis)]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Ttoxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Vcells" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K1" value="1.7999999999999999e-011" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K2" value="4.0000000000000002e-009" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322299999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Switch" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=V" value="0.20512" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="2.3717360200522635e-006" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalToxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalCells" value="150000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_46" name="PE: 2018-04-02 16:29:35 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="2150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="2150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Total_Toxin]" value="11250000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Primary)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Apoptosis)]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Ttoxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Vcells" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K1" value="1.7999999999999999e-011" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K2" value="4.0000000000000002e-009" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322299999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Switch" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=V" value="0.20512" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="1.7161500000000002e-005" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalToxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalCells" value="150000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_47" name="PE: 2018-04-02 16:29:35 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="2150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="2150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Total_Toxin]" value="11250000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Primary)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Apoptosis)]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Ttoxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Vcells" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K1" value="1.7999999999999999e-011" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K2" value="4.0000000000000002e-009" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322299999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Switch" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=V" value="0.20512" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="1.7562078292551091e-005" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalToxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalCells" value="150000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_48" name="PE: 2018-04-02 20:18:21 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="2150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Total_Toxin]" value="11250000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Primary)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Apoptosis)]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Ttoxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Vcells" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K1" value="1.7999999999999999e-011" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K2" value="4.0000000000000002e-009" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322299999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Switch" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=V" value="0.20512" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="1.4047699999999999e-005" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalToxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalCells" value="150000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_49" name="PE: 2018-04-02 20:18:21 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="2150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Total_Toxin]" value="11250000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Primary)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Apoptosis)]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Ttoxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Vcells" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K1" value="1.7999999999999999e-011" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K2" value="4.0000000000000002e-009" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322299999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Switch" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=V" value="0.20512" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.01762552489366067" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalToxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalCells" value="150000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_50" name="PE: 2018-04-02 20:20:21 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="2150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Total_Toxin]" value="11250000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Primary)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Apoptosis)]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Ttoxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Vcells" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K1" value="1.7999999999999999e-011" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K2" value="4.0000000000000002e-009" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322299999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Switch" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=V" value="0.20512" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.01762552489366067" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalToxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalCells" value="150000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_51" name="PE: 2018-04-02 20:20:21 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="2150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Total_Toxin]" value="11250000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Primary)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Apoptosis)]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Ttoxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Vcells" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K1" value="1.7999999999999999e-011" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K2" value="4.0000000000000002e-009" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322299999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Switch" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=V" value="0.20512" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.19822919769171374" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalToxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalCells" value="150000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_52" name="PE: 2018-04-02 20:21:56 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="2150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Total_Toxin]" value="11250000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Primary)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Apoptosis)]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Ttoxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Vcells" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K1" value="1.7999999999999999e-011" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K2" value="4.0000000000000002e-009" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322299999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Switch" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=V" value="0.20512" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.01762552489366067" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalToxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalCells" value="150000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_53" name="PE: 2018-04-02 20:21:56 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="2150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Total_Toxin]" value="11250000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Primary)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Apoptosis)]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Ttoxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Vcells" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K1" value="1.7999999999999999e-011" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K2" value="4.0000000000000002e-009" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.096874791682608402" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Switch" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=V" value="0.20512" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.01762552489366067" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalToxin" value="11250000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalCells" value="150000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Tcell" value="150000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K1 Toxin Model,Vector=Reactions[K1 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 11250000000000 0 150000000 0 0 150000000 0 0 0 2150000000 0 1000 150000000 150000000 150000000 150000000 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_12" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-009"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="0"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="10800"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
        <Parameter name="Duration" type="float" value="1080"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-007"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-013"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_10" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Maximum" type="float" value="6.9999999999999997e-007"/>
            <Parameter name="Minimum" type="float" value="2.9999999999999999e-007"/>
            <Parameter name="Number of steps" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K1,Reference=Value"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="log" type="bool" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_9" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_8" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="../../Data/untitled.txt" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="1"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=K1 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="0.096874791682608402"/>
            <Parameter name="UpperBound" type="cn" value="1"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="1"/>
        <ParameterGroup name="Experiment Set">
          <ParameterGroup name="Experiment">
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="File Name" type="file" value="Reiter et al 2004 K1 12 pmol.txt"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Key" type="key" value="Experiment_0"/>
            <Parameter name="Last Row" type="unsignedInteger" value="5"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="2"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
            </ParameterGroup>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Separator" type="string" value="&#x09;"/>
            <Parameter name="Weight Method" type="unsignedInteger" value="1"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
        </ParameterGroup>
      </Problem>
      <Method name="Genetic Algorithm" type="GeneticAlgorithm">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-009"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-007"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-013"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_4" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-013"/>
      </Method>
    </Task>
    <Task key="Task_2" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_1" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="0"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="0"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-007"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-013"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_13" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_8" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_4" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_3" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Experimental Data (Primary Effect)" type="Plot2D" active="0">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Dead Cells" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Viable Cells" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Experimental Data (Apoptotic Effect)" type="Plot2D" active="0">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Dead Cells" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Viable Cells" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Toxin Model Vs Experimental (Primary)" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Dead_Cells_(Model)]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Dead_Cells_(Primary_effect)]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Viable_Cells_(Model)]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Viable_Cells_(Primary_effect)]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="K1 Cell Wall and Membrane Binding" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Toxin bound to Cell Wall Glucans" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[GLUC_Toxin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Toxin bound to Kre1p Membrane Receptor" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Unbound Toxin (Apoptosis)" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Apoptosis)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Unbound Toxin (Primary)" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Primary)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Toxin Model Vs Experimental (Apoptotic)" type="Plot2D" active="0">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Dead Cells Apoptotic" type="Curve2D">
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Dead Cells Model" type="Curve2D">
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Viable Cells Apoptotic" type="Curve2D">
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Viable cells Model" type="Curve2D">
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Parameter Estimation Result" type="Plot2D" active="0">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Experiment,[Viable_Cells_(Apoptotic_effect)](Fitted Value)" type="Curve2D">
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[Viable_Cells_(Apoptotic_effect)](Measured Value)" type="Curve2D">
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[Viable_Cells_(Apoptotic_effect)](Weighted Error)" type="Curve2D">
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="plot" type="Plot2D" active="0">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Viable_Cells_(Apoptotic_effect)]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Viable_Cells_(Primary_effect)]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K1 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_0" name="meter" symbol="m">
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_2" name="second" symbol="s">
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_8" name="item" symbol="#">
      <Expression>
        #
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
