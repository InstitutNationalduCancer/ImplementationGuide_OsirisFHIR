Profile:        EndpointImaging
Parent:         Endpoint   
Id:             imaging-pacs
Title:          "Location to the PACS server"
Description:    "System communication to the PACS server"

* name 1..1
* name MS
* name ^short = "Storage location"
* name ^definition = "Study storage location (PACS, web server etc)."

/*
    ###################################
    # MAPPING OSIRIS <--> FHIR-OSIRIS #
    ###################################
*/
Mapping: FhirOSIRISImagingEndpoint
Source: imaging-pacs
Target: "ImagingEndpoint"
Id: fhir-osiris-imaging-endpoint
Title: "Fhir-osiris to osiris"
* -> "Imaging endpoint" "Imaging endpoint description"

* name -> "OSIRIS_pivot_Study.Study_Location"
