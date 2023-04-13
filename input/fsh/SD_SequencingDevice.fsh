Profile:        SequencingDevice
Parent:         Device
Id:             sequencing-device
Title:          "Sequencing Device"
Description:    "Description of a sequencing device used for a Sequencing Analysis."

* identifier 0..1 MS
* identifier ^short = "GEO accession number"
* identifier ^definition = "Accession number of the molecular analysis method in the GEO (Gene Expression Omnibus) database"

* type 1..1 MS
* type from PlatformName (extensible)
* type ^short = "Technology name"
* type ^definition = "Name of the technology used to implement the analysis method."


* version 0..1 MS
* version.type.text = "Name of the gene panel"
* version.type.coding from PanelName
* version.type.coding ^short = "Name of the gene panel"
* version.type.coding ^definition = " In the case of targeted sequencing, the name of the gene panel used."

Mapping: FhirOSIRISDevice
Source: sequencing-device
Target: "Device"
Id: fhir-osiris-device
Title: "Fhir-osiris to osiris"
* -> "Sequencing Device" "Sequencing device description"
* type -> "OSIRIS_pivot_Analysis.Technology_PlatformName"
* identifier -> "OSIRIS_pivot_Analysis.Technology_PlatformAccession"
* version.type -> "OSIRIS_pivot_Analysis.Panel_Name"