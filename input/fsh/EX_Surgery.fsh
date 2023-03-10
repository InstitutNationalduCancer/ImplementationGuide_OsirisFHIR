Instance: fhir-osiris-example-surgery-1
InstanceOf: Surgery
Description: "Example of Surgery from OSIRIS_pivot_Treatment.csv"

* subject = Reference(fhir-osiris-example-patient)
* basedOn = Reference(fhir-osiris-example-treatment-1)
* category.text = "Unknown"
* outcome = RECIST#R0
* status = #completed

Instance: fhir-osiris-example-surgery-2
InstanceOf: Surgery
Description: "Example of Surgery from OSIRIS_pivot_Treatment.csv"

* subject = Reference(fhir-osiris-example-patient)
* basedOn = Reference(fhir-osiris-example-treatment-2)
* category.text = "Unknown"
* outcome = RECIST#R1
* status = #completed
