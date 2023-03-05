Instance: fhir-osiris-example-causeofdeath
InstanceOf: cause-of-death
Description: "Example of VitalStatus"

* subject = Reference(fhir-osiris-example-patient)
* valueCodeableConcept.coding = UMLS#C0027651
* effectiveDateTime = "2017-11-29"
* status = #final