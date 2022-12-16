Profile:        ImagingContrast
Parent:         Medication   
Id:             onco-biological-contrast
Title:          "Imaging Study Injection Contrast"
Description:    "Description of a contrast product."

* code MS
* code 1..1
* code.text ^short = "Name of the radiopharmaceutical"
* code.text ^definition = "Name of the radiopharmaceutical. Dicom Tag (0018,0031)"


/*
    ##########################
    # MAPPING OSIRIS <--> FHIR-OSIRIS #
    ##########################
*/
Mapping: FhirOSIRISImagingContrast
Source: onco-imagingstudy-contrast
Target: "Imaging Study Contrast"
Id: fhir-osiris-imaging-contrast
Title: "Fhir-osiris to osiris"
* -> "Imaging Contrast" "Imaging Contrast description"

* code.text -> "OSIRIS_pivot_Injection.Injection_Radiopharmaceutical"

/*
    ##########################
    # DICOM<--> FHIR-OSIRIS #
    ##########################
*/
Mapping: DicomToFhirImagingContrast
Source: onco-imagingstudy-contrast
Target: "Imaging Study Injection"
Id: dicom-to-fhir-imaging-contrast
Title: "Fhir-osiris to Dicom"
* -> "Imaging Contrast" "Imaging Contrast description"

* code.text -> "Dicom Tag (0018,0031)"