Profile:        ImagingInjection
Parent:         MedicationAdministration   
Id:             onco-imagingstudy-injection
Title:          "Imaging Study Injection"
Description:    "Description of an imaging study injection."

* medication[x] MS
* medication[x] 0..1
* medication[x] only Reference (ImagingContrast)

* effective[x] MS
* effective[x] 0..1
* effective[x] ^short = "Start and end time of the injection for contrast agents / Actual injection time for radiopharmaceutical"
* effective[x] ^definition = "Start (Dicom Tag (0018,1042)) and end time (Dicom Tag (0018,1043)) of the injection for contrast agents. / Actual time of administration of the radiopharmaceutical to the patient for imaging purposes. Dicom Tag (0018,1072). This variable is mandatory only if the series is PT."



* dosage MS
* dosage 1..1

* dosage.dose MS
* dosage.dose 1..1
* dosage.dose ^short = "Total amount of radionuclide injected."
* dosage.route MS
* dosage.route 1..1
* dosage.route ^short = "Administration route of contrast agent."






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
