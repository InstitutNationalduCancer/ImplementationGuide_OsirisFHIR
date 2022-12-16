Profile:        ImagingInjection
Parent:         MedicationAdministration   
Id:             onco-imagingstudy-injection
Title:          "Imaging Study Injection"
Description:    "Description of an imaging study injection."

* medication[x] MS
* medication[x] 1..1
* medication[x] only Reference (ImagingContrast)

* effective[x] MS
* effective[x] 1..1
* effective[x] ^short = "Start and end time of the injection for contrast agents / Actual injection time for radiopharmaceutical"
* effective[x] ^definition = "Start (Dicom Tag (0018,1042)) and end time (Dicom Tag (0018,1043)) of the injection for contrast agents. / Actual time of administration of the radiopharmaceutical to the patient for imaging purposes. Dicom Tag (0018,1072). This variable is mandatory only if the series is PT."



* dosage MS
* dosage 0..1
* dosage ^definition = "This variable is mandatory only if the series is PT."
* dosage.dose MS
* dosage.dose 1..1
* dosage.dose ^short = "Total amount of radionuclide injected"
* dosage.dose ^definition = "Radiopharmaceutical dose administered to the patient, measured in megabecquerels (Mbq) at the time the radiopharmaceutical treatment was started. Dicom Tag (0018,1074)"
* dosage.route.coding.code = SCT#47625008
* dosage.route.coding.display = "Intravenous use"
* dosage.route ^short = "Administration route of contrast agent."

/*
    ##########################
    # MAPPING OSIRIS <--> FHIR-OSIRIS #
    ##########################
*/
Mapping: FhirOSIRISImagingInjection
Source: onco-imagingstudy-injection
Target: "Imaging Study Injection"
Id: fhir-osiris-imaging-injection
Title: "Fhir-osiris to osiris"
* -> "Imaging Injection" "Imaging Injection description"

* effectiveDateTime -> "OSIRIS_pivot_Injection.Injection_RadiopharmaceuticalStartTime"
* effectivePeriod.start -> "OSIRIS_pivot_Injection.Injection_ContrastBolusStartTime"
* effectivePeriod.end -> "OSIRIS_pivot_Injection.Injection_ContrastBolusStopTime"
* dosage.dose  -> "OSIRIS_pivot_Injection.Injection_RadionuclideTotalDose"

/*
    ##########################
    # DICOM <--> FHIR-OSIRIS #
    ##########################
*/
Mapping: DicomToFhirImagingInjection
Source: onco-imagingstudy-injection
Target: "Imaging Study Injection"
Id: dicom-to-fhir-imaging-injection
Title: "Fhir-osiris to Dicom"
* -> "Imaging Injection" "Imaging injection description"

* effectiveDateTime -> "Dicom Tag (0018,1072)"
* effectivePeriod.start -> "Dicom Tag (0018,1042)"
* effectivePeriod.end -> "Dicom Tag (0018,1043)"
* dosage.dose  -> "Dicom Tag (0018,1074)"
