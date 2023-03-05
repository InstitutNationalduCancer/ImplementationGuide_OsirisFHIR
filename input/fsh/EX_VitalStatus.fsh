Instance: fhir-osiris-example-vitalstatus
InstanceOf: vital-status
Description: "Example of VitalStatus"

* subject = Reference(fhir-osiris-example-patient)
* valueCodeableConcept.coding = UMLS#C1546956
* effectiveDateTime = "2017-11-29"
* status = #final