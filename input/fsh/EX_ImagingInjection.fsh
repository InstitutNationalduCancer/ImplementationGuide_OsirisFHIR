Instance: fhir-osiris-example-injection-pt-nm
InstanceOf: onco-imagingstudy-injection
Description: "Example of Imaging Study from OSIRIS_pivot_Injection.csv"

* subject = Reference (fhir-osiris-example-patient-pt-nm)
* medicationReference = Reference(fhir-osiris-example-injection-medication-pt-nm)
* effectiveDateTime = "1000-01-01"
* dosage.dose.value = 132600.00
* status = http://terminology.hl7.org/CodeSystem/medication-admin-status#completed

Instance: fhir-osiris-example-injection-medication-pt-nm
InstanceOf: onco-biological-contrast
Description: "Example of Imaging Study from OSIRIS_pivot_Injection.csv"

* code.text = "FDG -- fluorodeoxyglucose"	