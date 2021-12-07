Profile:        ImagingInjection
Parent:         MedicationAdministration   
Id:             onco-biological-imagingstudy-injection
Title:          "Imaging Study Injection"
Description:    "Description of an imaging study injection used for radiomic studies."

* dosage MS
* dosage 1..1
* dosage.dose MS
* dosage.dose 1..1
* dosage.route MS
* dosage.route 1..1

* effective[x] MS

* medication[x] MS
* medication[x] 1..1
* medication[x] only Reference (ImagingContrast)