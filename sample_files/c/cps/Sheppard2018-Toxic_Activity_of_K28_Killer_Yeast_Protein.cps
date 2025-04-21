<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.22 (Build 170) (http://www.copasi.org) at 2018-04-23 15:03:29 UTC -->
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
    <Function key="Function_47" name="Threshold Toxin Induced Death (k28)" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-21T11:12:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        IF(Ttoxin/Vcells > 28000, K1*VC*KRE1P, IF(Ttoxin/Vcells > 1080, K2*VC*KRE1P, 0))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_337" name="Ttoxin" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_328" name="Vcells" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="K1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="VC" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_332" name="KRE1P" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_339" name="K2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="K28 Toxin Model" simulationType="time" timeUnit="min" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="deterministic" avogadroConstant="6.0221408570000002e+023">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-07T18:39:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="ECF" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
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
      <Metabolite key="Metabolite_11" name="Viable_Cells_(Model)" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-07T22:51:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="Dead_Cells_(Model)" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-07T22:51:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="Manno_Toxin" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-17T12:42:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="Dead_Cells_(Primary_effect)" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-18T12:32:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="Viable_Cells_(Primary_effect)" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-18T12:32:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="Dead_Cells_(Apoptotic_effect)" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-18T17:21:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="Viable_Cells_(Apoptotic_effect)" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-18T17:21:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="Total_Toxin" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-21T11:07:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="Unbound_Toxin_(Primary)" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-21T11:03:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="Unbound_Toxin_(Apoptosis)" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-21T11:10:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="Erd2_Toxin" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-23T16:18:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_4" name="Moiety[DC].TotalAmount" simulationType="fixed">
        <InitialExpression>
          &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="Moiety[DC].TotalAmount_1" simulationType="fixed">
        <InitialExpression>
          &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="Moiety[DC].TotalAmount_2" simulationType="fixed">
        <InitialExpression>
          &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="Moiety[DC].TotalAmount_3" simulationType="fixed">
        <InitialExpression>
          &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
        </InitialExpression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_10" name="Toxin Induced Cell Death" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
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
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4492" name="Ttoxin" value="8.96e+014"/>
          <Constant key="Parameter_4491" name="Vcells" value="92000"/>
          <Constant key="Parameter_4490" name="K1" value="3e-013"/>
          <Constant key="Parameter_4489" name="K2" value="3.5e-010"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Parameter_4492"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Parameter_4491"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Parameter_4490"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Parameter_4489"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="Natural Cell Growth Rate" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-12T22:26:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4488" name="k1" value="0.00431667"/>
          <Constant key="Parameter_4487" name="switch" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Parameter_4488"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4487"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="Natural Cell Death Rate" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-12T22:26:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4486" name="k1" value="0.00025"/>
          <Constant key="Parameter_4485" name="switch" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Parameter_4485"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Parameter_4486"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="Experimental Reaction (Primary Method)" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
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
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4484" name="k1" value="0.00693079"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4484"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="Experimental Reaction (Apoptotic Method)" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
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
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4483" name="k1" value="0.0171309"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4483"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="Total Toxin Converted to Unbound Toxin" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-21T10:57:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="28000"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4482" name="K1" value="1e+008"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Parameter_4482"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="Unbound Toxin to Apoptotic Pathway" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-21T11:07:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="3"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4481" name="K1" value="100000"/>
          <Constant key="Parameter_4480" name="TotalToxin" value="8.9e+014"/>
          <Constant key="Parameter_4479" name="TotalCells" value="92000"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_4481"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Parameter_4480"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_4479"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="K28 Cell Wall Binding (Primary)" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-21T11:21:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4478" name="Km" value="1"/>
          <Constant key="Parameter_4477" name="Tcell" value="92000"/>
          <Constant key="Parameter_4469" name="v" value="1.23071"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_4477"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_4469"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Parameter_4478"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="K28 Cell Wall Binding (Apoptotic)" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-21T11:21:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4468" name="Km" value="1"/>
          <Constant key="Parameter_4467" name="Tcell" value="92000"/>
          <Constant key="Parameter_4466" name="v" value="1.23071"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_4467"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_4466"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Parameter_4468"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="K28 Cell Membrane Binding" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-23T16:19:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4465" name="Tcell" value="92000"/>
          <Constant key="Parameter_4464" name="Switch" value="1"/>
          <Constant key="Parameter_4463" name="V" value="0.20512"/>
          <Constant key="Parameter_4462" name="Km" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Parameter_4465"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_4464"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Parameter_4463"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Parameter_4462"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="92000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="92000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="1950000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Total_Toxin]" value="8.96e+017" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Primary)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Apoptosis)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Erd2_Toxin]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="92000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="92000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="92000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="92000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Ttoxin" value="896000000000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Vcells" value="92000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K1" value="2.9999999999999998e-013" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K2" value="3.4999999999999998e-010" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.0069307900000000009" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.017130900000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin],ParameterGroup=Parameters,Parameter=K1" value="100000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=K1" value="100000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalToxin" value="890000000000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalCells" value="92000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Tcell" value="92000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Tcell" value="92000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=v" value="1.23071" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Tcell" value="92000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Switch" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=V" value="0.20512" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_54" name="PE: 2018-02-18 17:07:22 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_55" name="PE: 2018-02-18 17:07:22 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_56" name="PE: 2018-02-18 17:08:44 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_57" name="PE: 2018-02-18 17:08:44 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322290782690188" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_58" name="PE: 2018-02-18 17:13:22 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_59" name="PE: 2018-02-18 17:13:22 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_60" name="PE: 2018-02-18 17:24:37 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_61" name="PE: 2018-02-18 17:24:37 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="5.0462699553063733e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_62" name="PE: 2018-02-18 17:26:59 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_63" name="PE: 2018-02-18 17:26:59 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="7.7857146898994904e-014" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_64" name="PE: 2018-02-18 17:27:35 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_65" name="PE: 2018-02-18 17:27:35 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_66" name="PE: 2018-02-18 17:30:39 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_67" name="PE: 2018-02-18 17:30:39 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_68" name="PE: 2018-02-18 17:32:13 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_69" name="PE: 2018-02-18 17:32:13 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_70" name="PE: 2018-02-18 17:33:26 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_71" name="PE: 2018-02-18 17:33:26 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_72" name="PE: 2018-02-18 17:35:02 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_73" name="PE: 2018-02-18 17:35:02 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.058968369979171167" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_74" name="PE: 2018-02-18 17:35:47 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_75" name="PE: 2018-02-18 17:35:47 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040324745482278314" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_76" name="PE: 2018-02-18 17:37:17 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_77" name="PE: 2018-02-18 17:37:17 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-007" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_78" name="PE: 2018-02-18 17:40:37 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_79" name="PE: 2018-02-18 17:40:37 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_80" name="PE: 2018-02-18 17:41:57 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_81" name="PE: 2018-02-18 17:41:57 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="1.5986571887051417e-148" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_82" name="PE: 2018-02-18 17:42:56 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_83" name="PE: 2018-02-18 17:42:56 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="8.5704427195906356e-278" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_84" name="PE: 2018-02-18 17:44:40 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_85" name="PE: 2018-02-18 17:44:40 Exp: Experiment_1">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_86" name="PE: 2018-02-18 17:45:11 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_87" name="PE: 2018-02-18 17:45:11 Exp: Experiment_1">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040323770270404109" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_88" name="PE: 2018-02-18 17:48:37 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_89" name="PE: 2018-02-18 17:48:37 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="150000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.0011181661662816979" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_90" name="PE: 2018-02-18 17:51:31 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="2200000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_91" name="PE: 2018-02-18 17:51:31 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="2200000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00054272135367187805" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_92" name="PE: 2018-02-18 17:55:29 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="2200000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_93" name="PE: 2018-02-18 17:55:29 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="2200000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="1.7161537850994394e-005" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_94" name="PE: 2018-02-18 17:57:37 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="2200000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="1.7161500000000002e-005" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_95" name="PE: 2018-02-18 17:57:37 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin]" value="468750000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[KRE1P_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[MANT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="150000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Live]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="2200000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="150000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.00040322300000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K1 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="1.7161432985053407e-005" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_96" name="PE: 2018-04-02 13:25:02 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="2000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="2000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="1950000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Total_Toxin]" value="5600000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Primary)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Apoptosis)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Erd2_Toxin]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Ttoxin" value="5600000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Vcells" value="2000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K1" value="3.4999999999999998e-010" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K2" value="3.4999999999999998e-010" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.0061299300000000004" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.0019031200000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin],ParameterGroup=Parameters,Parameter=K1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=K1" value="100000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalToxin" value="5600000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalCells" value="2000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.80000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=V" value="0.80000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.1333" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_97" name="PE: 2018-04-02 13:25:02 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="2000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="2000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="1950000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Total_Toxin]" value="5600000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Primary)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Apoptosis)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Erd2_Toxin]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Ttoxin" value="5600000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Vcells" value="2000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K1" value="3.4999999999999998e-010" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K2" value="3.4999999999999998e-010" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.056400779734751619" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.0019031200000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin],ParameterGroup=Parameters,Parameter=K1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=K1" value="100000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalToxin" value="5600000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalCells" value="2000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.80000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=V" value="0.80000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.1333" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_98" name="PE: 2018-04-02 13:26:13 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="2000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="2000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="1950000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Total_Toxin]" value="5600000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Primary)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Apoptosis)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Erd2_Toxin]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Ttoxin" value="5600000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Vcells" value="2000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K1" value="3.4999999999999998e-010" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K2" value="3.4999999999999998e-010" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.0061299300000000004" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.0019031200000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin],ParameterGroup=Parameters,Parameter=K1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=K1" value="100000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalToxin" value="5600000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalCells" value="2000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.80000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=V" value="0.80000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.1333" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_99" name="PE: 2018-04-02 13:26:13 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="2000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="2000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="1950000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Total_Toxin]" value="5600000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Primary)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Apoptosis)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Erd2_Toxin]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Ttoxin" value="5600000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Vcells" value="2000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K1" value="3.4999999999999998e-010" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K2" value="3.4999999999999998e-010" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.056398063295002618" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.0019031200000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin],ParameterGroup=Parameters,Parameter=K1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=K1" value="100000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalToxin" value="5600000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalCells" value="2000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.80000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=V" value="0.80000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.1333" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_100" name="PE: 2018-04-02 13:27:52 Exp: Original">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="2000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="92000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="1950000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Total_Toxin]" value="5600000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Primary)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Apoptosis)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Erd2_Toxin]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Ttoxin" value="5600000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Vcells" value="2000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K1" value="3.4999999999999998e-010" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K2" value="3.4999999999999998e-010" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.0061299300000000004" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.0019031200000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin],ParameterGroup=Parameters,Parameter=K1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=K1" value="100000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalToxin" value="5600000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalCells" value="2000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.80000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=V" value="0.80000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.1333" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_101" name="PE: 2018-04-02 13:27:52 Exp: Experiment">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF]" value="1000" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)]" value="2000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)]" value="92000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)]" value="1950000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Total_Toxin]" value="5600000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Primary)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Apoptosis)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Erd2_Toxin]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_1]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_2]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Values[Moiety\[DC\].TotalAmount_3]" value="2000000000" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=InitialParticleNumber>+&lt;CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=InitialParticleNumber>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Ttoxin" value="5600000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=Vcells" value="2000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K1" value="3.4999999999999998e-010" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K2" value="3.4999999999999998e-010" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=k1" value="0.0043166699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Growth Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=k1" value="0.00025000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Natural Cell Death Rate],ParameterGroup=Parameters,Parameter=switch" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1" value="0.0069307935712845017" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Apoptotic Method)],ParameterGroup=Parameters,Parameter=k1" value="0.0019031200000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Total Toxin Converted to Unbound Toxin],ParameterGroup=Parameters,Parameter=K1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=K1" value="100000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalToxin" value="5600000000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Unbound Toxin to Apoptotic Pathway],ParameterGroup=Parameters,Parameter=TotalCells" value="2000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=V" value="0.80000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Primary)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=V" value="0.80000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Wall Binding (Apoptotic)],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Membrane Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=K28 Toxin Model,Vector=Reactions[K28 Cell Membrane Binding],ParameterGroup=Parameters,Parameter=k1" value="0.1333" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 8.96e+017 0 92000000 0 0 0 0 0 0 92000000 1950000000 1000 92000000 92000000 92000000 92000000 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_26" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_25" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="1000"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="1000"/>
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
    <Task key="Task_24" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Maximum" type="float" value="2.9999999999999998e-013"/>
            <Parameter name="Minimum" type="float" value="2.0000000000000001e-013"/>
            <Parameter name="Number of steps" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Toxin Induced Cell Death],ParameterGroup=Parameters,Parameter=K1,Reference=Value"/>
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
    <Task key="Task_23" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_22" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_21" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="../../Data/untitled.txt" append="1" confirmOverwrite="1"/>
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
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=K28 Toxin Model,Vector=Reactions[Experimental Reaction (Primary Method)],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="0.0069307935712845017"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
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
            <Parameter name="File Name" type="file" value="Schmitt et al 1996 K28.txt"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Key" type="key" value="Experiment_1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="9"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="2"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
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
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_26"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-009"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_18" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_17" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_16" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_15" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_27" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_26"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_17" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_14" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_13" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_12" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_11" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_10" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_9" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Toxin Model Vs Experimental (Primary)" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Dead_Cells_(Model)]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Dead_Cells_(Primary_effect)]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Primary_effect)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Viable_Cells_(Model)]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Viable_Cells_(Primary_effect)]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Primary_effect)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="K28 Cell Wall and Membrane Binding" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Toxin bound to Cell Wall Mannos" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Manno_Toxin],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Apoptosis)],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Unbound_Toxin_(Primary)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Erd2_Toxin]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Erd2_Toxin],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Apoptotic_effect)],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Dead_Cells_(Model)],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Apoptotic_effect)],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=K28 Toxin Model,Vector=Compartments[ECF],Vector=Metabolites[Viable_Cells_(Model)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Parameter Estimation Result" type="Plot2D" active="0">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Experiment,[Viable_Cells_(Primary_effect)](Measured Value)" type="Curve2D">
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
        <PlotItem name="Experiment,[Viable_Cells_(Primary_effect)](Fitted Value)" type="Curve2D">
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
        <PlotItem name="Experiment,[Viable_Cells_(Primary_effect)](Weighted Error)" type="Curve2D">
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
