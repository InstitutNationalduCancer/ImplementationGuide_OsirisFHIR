Profile:        ImagingContrast
Parent:         Medication   
Id:             onco-biological-contrast
Title:          "Imaging Study Injection Contrast"
Description:    "Description of a contrast product."

* code MS
* code 1..1
* code.text ^short = "Name of the radiopharmaceutical or the contrast agent"
* code.text ^definition = "Name of the radiopharmaceutical (Dicom Tag (0018,0031)) or the contrast agent (Dicom Tag (0018,0010)). This variable is mandatory only if the series is PT."


/*
    ##########################
    # MAPPING OSIRIS <--> FHIR-OSIRIS #
    ##########################
*/
Mapping: FhirOSIRISImagingContrast
Source: onco-biological-contrast
Target: "Imaging Study Contrast"
Id: fhir-osiris-imaging-contrast
Title: "OSIRIS pivot files"
* -> "Imaging Contrast" "Imaging Contrast description"

* code.text -> "OSIRIS_pivot_Injection.Injection_Radiopharmaceutical / OSIRIS_pivot_Injection.Injection_ContrastBolusAgent"

/*
    ##########################
    # DICOM<--> FHIR-OSIRIS #
    ##########################
*/
Mapping: DicomToFhirImagingContrast
Source: onco-biological-contrast
Target: "Imaging Study Injection"
Id: dicom-to-fhir-imaging-contrast
Title: "DICOM Tag Mapping (version OSIRIS)"
* -> "Imaging Contrast" "Imaging Contrast description"

* code.text -> "Dicom Tag (0018,0031) / Dicom Tag (0018,0010)"