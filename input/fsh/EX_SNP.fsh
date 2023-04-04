Instance: fhir-osiris-example-snp-1
InstanceOf: SNP
Description: "Example of Surgery from OSIRIS_pivot_Variant.csv"

* subject = Reference(fhir-osiris-example-patient)
* derivedFrom[analysis] = Reference(fhir-osiris-example-sequencinganalysis-1)
* status = #final
//* component[pathogenicity].valueCodeableConcept 
//* component[actionability].valueBoolean
//* component[proposed-for-orientation].valueBoolean 
* component[chromosome].code.coding  = LNC#48000-4
* component[chromosome].valueCodeableConcept = LNC#LA21256-5
* component[exact-start-end].code.coding = LNC#81254-5
* component[exact-start-end].valueRange.low.value = 178916948
* component[exact-start-end].valueRange.high.value = 178916948
* component[ref-sequence-assembly].code.coding = LNC#62374-4
* component[ref-sequence-assembly].valueCodeableConcept = #hg19
//* component[cytogenetic-location].valueCodeableConcept 
* component[ref-allele].code.coding = LNC#69547-8
* component[ref-allele].valueString = "T"
* component[alt-allele].code.coding = LNC#69551-0
* component[alt-allele].valueString = "A"
* component[dna-chg-type].code.coding = LNC#48019-4
* component[dna-chg-type].valueCodeableConcept = LNC#LA6690-7
* component[allelic-read-depth].code.coding = LNC#82121-5
* component[allelic-read-depth].valueQuantity.value = 31
* component[variant-read-depth].code.coding = LNC#82121-5
* component[variant-read-depth].valueQuantity.value = 6	
* extension[strand-bias].valueBoolean = false
* component[genomic-source-class].code.coding = LNC#48002-0
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0
* component[allelic-state].code.coding = LNC#53034-5
* component[allelic-state].valueCodeableConcept = LNC#LA6706-1
* valueCodeableConcept = LNC#LA9633-4