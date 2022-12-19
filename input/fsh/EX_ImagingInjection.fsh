Instance: fhir-osiris-example-injection-pt-nm
InstanceOf: onco-imagingstudy-injection
Description: "Example of Imaging Study from OSIRIS_pivot_Injection.csv"

* medicationReference = Reference(fhir-osiris-example-injection-medication-pt-nm)
* effectiveDateTime = "0000-00-00"
* dosage.dose.value = 132600.00

Instance: fhir-osiris-example-injection-medication-pt-nm
InstanceOf: onco-biological-contrast
Description: "Example of Imaging Study from OSIRIS_pivot_Injection.csv"

* code.text = "FDG -- fluorodeoxyglucose"	