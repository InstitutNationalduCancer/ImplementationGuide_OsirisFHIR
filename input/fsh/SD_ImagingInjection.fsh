Profile:        ImagingInjection
Parent:         MedicationAdministration   
Id:             onco-imagingstudy-injection
Title:          "Imaging Study Injection"
Description:    "Description of an imaging study injection used for radiomic studies."

* dosage MS
* dosage 1..1

* dosage.dose MS
* dosage.dose 1..1
* dosage.dose ^short = "Total amount of radionuclide injected."
* dosage.route MS
* dosage.route 1..1
* dosage.route ^short = "Administration route of contrast agent."

* effective[x] MS
* effective[x] ^short = "Time of start of injection.)"

* medication[x] MS
* medication[x] 1..1
* medication[x] only Reference (ImagingContrast)
* medication[x] ^short = "Name of the radiopharmaceuticel."


/*
    ##########################
    # DICOM <--> FHIR-OSIRIS #
    ##########################
*/
Mapping: DicomToFhirImagingInjection
Source: onco-imagingstudy-injection
Target: "Imaging Study Injection"
Id: dicom-to-fhir-imaging-injection
Title: "Fhir-osiris to osiris"
* -> "Imaging Injection" "Imaging injection description"

* dosage.dose -> "(0018,1074)"
* dosage.route -> "(0018,1040)"
* effective[x] -> "(0018,1072)"
* medication[x] -> "(0018,0031)"
