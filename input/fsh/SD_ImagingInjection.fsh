Profile:        ImagingInjection
Parent:         MedicationAdministration   
Id:             onco-biological-imagingstudy-injection
Title:          "Imaging Study Injection"
Description:    "Description of an imaging study injection used for radiomic studies."

* dosage MS
* dosage 1..1

* dosage.dose MS
* dosage.dose 1..1
* dosage.dose ^short = "Total amount of radionuclide injected. dicomTag(0018,1074)"
* dosage.route MS
* dosage.route 1..1
* dosage.route ^short = "Administration route of contrast agent. dicomTag(0018,1040)"

* effective[x] MS
* effective[x] ^short = "Time of start of injection. dicomTag(0018,1072)"

* medication[x] MS
* medication[x] 1..1
* medication[x] only Reference (ImagingContrast)
* medication[x] ^short = "Name of the radiopharmaceuticel. dicomTag(0018,0031)"
