Instance: fhir-osiris-example-surgery
InstanceOf: Surgery
Description: "Example of Surgery from OSIRIS_pivot_Treatment.csv"

* subject = Reference(fhir-osiris-example-patient )
* basedOn = Reference(fhir-osiris-example-treatment)
* category.text = "Unknown"
* outcome = RECIST#R0
* status = #completed
