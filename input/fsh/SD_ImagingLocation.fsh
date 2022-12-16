Profile:        LocationImaging
Parent:         Location    
Id:             imaging-service
Title:          "Imaging Service"
Description:    "Description of an imaging service."

* name 0..1
* name MS
* name ^short = "Name of the institution"
* name ^definition = "Name of the organization or institution responsible for the study. Dicom Tag (0008,0080)"

/*
    ###################################
    # MAPPING OSIRIS <--> FHIR-OSIRIS #
    ###################################
*/
Mapping: FhirOSIRISImagingService
Source: imaging-service
Target: "ImagingService"
Id: fhir-osiris-imaging-service
Title: "Fhir-osiris to osiris"
* -> "Imaging Service" "Imaging service description"

* name -> "OSIRIS_pivot_Study.Study_InstitutionName"

/*
    ##########################
    # FHIR-OSIRIS  <--> DICOM #
    ##########################
*/
Mapping: FhirToDicomImagingService
Source: imaging-service
Target: "ImagingService"
Id: fhir-osiris-to-dicom-imaging-service
Title: "Fhir-osiris to Dicom"
* -> "Imaging Service" "Imaging service description"

* name -> "Dicom Tag (0008,0080)"
