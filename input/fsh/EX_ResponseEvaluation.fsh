Instance: FhirOSIRISResponseEvaluation-1
InstanceOf: ResponseEvaluation
Description: "Example of ResponseEvaluation from OSIRIS_pivot_ResponseEvaluation .csv"

* subject = Reference(fhir-osiris-example-patient)
* basedOn = Reference(fhir-osiris-example-treatment-1) 
* effectiveDateTime = "1000-01-01"
* valueCodeableConcept.coding.code = UMLS#C0439673
* status = 	http://hl7.org/fhir/observation-status#final
