Instance: fhir-osiris-example-biologicalsample-1
InstanceOf: BiologicalSample
Description: "Example of BiologicalSample from OSIRIS_pivot_BiologicalSample.csv"

* subject = Reference(fhir-osiris-example-patient)
* identifier.value = "ech primary"
* collection.collectedDateTime = "2005-12-27"
* collection.bodySite = ICDO3#C34
* type = UMLS#C4039816
* extension[BiologicalSampleOrigin].valueCodeableConcept.coding = OsirisCS#O59-2
* extension[BiologicalSampleOrigin].valueCodeableConcept.text = "Origin of the sample"
* condition.coding = https://learning.iarc.fr/biobanking/all-resources/sample-and-data-management/miabis#"Tissue Frozen"
* condition.text = "Storage temperature of the sample."
* extension[BasedOnCondition].valueReference = Reference(fhir-osiris-example-TumorPathologyEvent-instance-1)
* collection.quantity.value = 30
* collection.quantity.unit = UCUM#%
* collection.quantity.code = UMLS#C4055283 

Instance: fhir-osiris-example-biologicalsample-2
InstanceOf: BiologicalSample
Description: "Example of BiologicalSample from OSIRIS_pivot_BiologicalSample.csv"

* subject = Reference(fhir-osiris-example-patient)
* identifier.value = "ech 2"
* parent = Reference(fhir-osiris-example-biologicalsample-1)
* collection.collectedDateTime = "2011-02-08"
* collection.bodySite = ICDO3#C30
* type = UMLS#C1519524
* extension[BiologicalSampleOrigin].valueCodeableConcept.coding = OsirisCS#O59-2
* extension[BiologicalSampleOrigin].valueCodeableConcept.text = "Origin of the sample"
* condition.coding = #FFPE
* condition.text = "Storage temperature of the sample."
* extension[BasedOnCondition].valueReference = Reference(fhir-osiris-example-TumorPathologyEvent-instance-1)
* collection.quantity.value = 60
* collection.quantity.unit = UCUM#%
* collection.quantity.code = UMLS#C4055283 
