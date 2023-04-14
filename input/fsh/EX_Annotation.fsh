Instance: fhir-osiris-annotation-1
InstanceOf: VariantAnnotation
Description: "Example of Instance from OSIRIS_pivot_Annotations.csv"

* subject = Reference(fhir-osiris-example-patient)
* hasMember[0] = Reference(fhir-osiris-genome-entity-1)
* hasMember[1] = Reference(fhir-osiris-annotation-reference-1)
* derivedFrom[0] = Reference(fhir-osiris-example-snp-1)

* status = #final
* valueCodeableConcept = LNC#LA9633-4

* component[gene-studied].code = LNC#48018-6
* component[gene-studied].valueCodeableConcept = HUGO#PI3K

* component[dna-chg-type].code = LNC#48019-4
* component[dna-chg-type].valueCodeableConcept = OSIRIS#O15-4

* component[mutation-prediction-software].code = LNC#LP91038-7
* component[mutation-prediction-software].code.text = "Prediction software"
* component[mutation-prediction-software].valueCodeableConcept = OSIRIS#SIFT

* component[mutation-prediction-score].code = LNC#LP70194-3
* component[mutation-prediction-score].code.text = "Prediction of the variation effect over the protein"
* component[mutation-prediction-score].valueQuantity.value = 0.35

* component[mutation-prediction-evidence-value].code = LNC#93044-6
* component[mutation-prediction-evidence-value].code.text = "Confidence score"
* component[mutation-prediction-evidence-value].valueString = "Deleterious"

* component[cytogenetic-location].code = LNC#48001-2
* component[cytogenetic-location].valueCodeableConcept.text = "exon 2"

* component[amino-acid-chg].code = LNC#48005-3
* component[amino-acid-chg].valueCodeableConcept = HGVS#p.E542K

* component[amino-acid-chg-type].code = LNC#48006-1
* component[amino-acid-chg-type].valueCodeableConcept = LNC#LA6698-0

* component[genomic-dna-chg].code = LNC#81290-9
* component[genomic-dna-chg].valueCodeableConcept = UMLS#C0439673

* component[dna-chg].code = LNC#48004-6
* component[dna-chg].valueCodeableConcept = HGVS#c.1624G>A

* component[rna-chg].code = LNC#LP232001-0
* component[rna-chg].code.text = "Incidence on the transcript"
* component[rna-chg].valueCodeableConcept = UMLS#C0439673
//* derivedFrom[fusion-molecular-sequences] = Reference()