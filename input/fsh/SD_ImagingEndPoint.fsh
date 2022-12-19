Profile:        EndpointImaging
Parent:         Endpoint   
Id:             imaging-pacs
Title:          "Location to the PACS server"
Description:    "System communication to the PACS server"

* address 1..1
* address MS
* address ^short = "Storage location"
* address ^definition = "Study storage location (PACS, web server etc)."

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

* address -> "OSIRIS_pivot_Study.Study_Location"
