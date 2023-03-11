Instance: fhir-osiris-example-biomarker
InstanceOf: Biomarker
Description: "Example of Biomarker"

* subject = Reference(fhir-osiris-example-patient)
* derivedFrom = Reference(fhir-osiris-example-analysis-clinical )
* code = #cg6548
* valueString = "++"
* status = #final