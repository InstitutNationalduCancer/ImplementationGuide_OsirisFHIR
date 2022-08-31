Profile:        SequencingDevice
Parent:         Device
Id:             sequencing-device
Title:          "Sequencing Device"
Description:    "Description of a sequencing device used for a Sequencing Analysis."

* identifier ^short = "GEO Identifier of the platform"

* deviceName ^slicing.discriminator.type = #pattern
* deviceName ^slicing.discriminator.path = "type"
* deviceName ^slicing.rules = #open
* deviceName ^slicing.description = "Slice based on deviceName pattern"
* deviceName contains platform-name 0..1
* deviceName[platform-name].type = http://hl7.org/fhir/device-nametype#model-name
* deviceName[platform-name].name 1..1
* deviceName[platform-name] ^short = "Technological platform name (provider followed by the platform name)"

// To be discussed: how to store panel name ?
* version ^slicing.discriminator.type = #pattern
* version ^slicing.discriminator.path = "type.code"
* version ^slicing.rules = #open
* version ^slicing.description = "Slice based on the PanelName pattern"
* version contains panel-name 0..1
* version[panel-name].type = LNC#48017-8
* version[panel-name].value 1..1
* version[panel-name] ^short = "Name of the panel targeted by the experimental analysis (provider followed by the panel name)"

Mapping: FhirOSIRISDevice
Source: sequencing-device
Target: "Device"
Id: fhir-osiris-device
Title: "Fhir-osiris to osiris"
* -> "Sequencing Device" "Sequencing device description"
* deviceName -> "Analysis.Technology_PlatformName"
* identifier -> "Analysis.Technology_PlatformAccession"
* version.value -> "Analysis.Panel_Name"