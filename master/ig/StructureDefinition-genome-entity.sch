<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MolecularSequence
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:MolecularSequence</sch:title>
    <sch:rule context="f:MolecularSequence">
      <sch:assert test="count(f:extension[@url = 'https://build.fhir.org/ig/arkhn/arkhn-ig-osiris/StructureDefinition/genomeentityType']) &gt;= 1">extension with URL = 'https://build.fhir.org/ig/arkhn/arkhn-ig-osiris/StructureDefinition/genomeentityType': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://build.fhir.org/ig/arkhn/arkhn-ig-osiris/StructureDefinition/genomeentityType']) &lt;= 1">extension with URL = 'https://build.fhir.org/ig/arkhn/arkhn-ig-osiris/StructureDefinition/genomeentityType': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MolecularSequence/f:repository</sch:title>
    <sch:rule context="f:MolecularSequence/f:repository">
      <sch:assert test="count(f:name) &gt;= 1">name: minimum cardinality of 'name' is 1</sch:assert>
      <sch:assert test="count(f:datasetId) &gt;= 1">datasetId: minimum cardinality of 'datasetId' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
