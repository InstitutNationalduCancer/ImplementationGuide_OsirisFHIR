Instance: fhir-osiris-example-validation-1
InstanceOf: DataValidation
Description: "Example of Surgery from OSIRIS_pivot_Variant.csv"

* target = Reference(fhir-osiris-example-snp-1)
* status = http://hl7.org/fhir/R4/valueset-verificationresult-status.html#in-process
* validationType.coding = OSIRIS#O16-2 "By biologist"
* validationProcess.text = "biblio"
