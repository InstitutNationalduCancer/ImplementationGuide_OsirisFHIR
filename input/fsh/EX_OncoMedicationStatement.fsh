Instance: fhir-osiris-example-oncomedicalstatement-1 
InstanceOf: OncoMedicationStatement
Description: "Example of OncoMedicalStatement from OSIRIS_pivot_Drug.csv"

* subject = Reference(fhir-osiris-example-patient)
* basedOn = Reference(fhir-osiris-example-treatment-2)
* medicationCodeableConcept.coding = ATC#c3564
* medicationCodeableConcept.text = "cis-platine"
* status = #unknown
