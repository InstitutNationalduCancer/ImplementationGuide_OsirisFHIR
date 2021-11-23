Profile:        ImagingDevice
Parent:         Device
Id:             imaging-device
Title:          "Imaging Device"
Description:    "Description of an imaging device used for radiotherapy or radiomics Analysis."

* identifier ^short = "GEO Identifier of the platform"

* manufacturer MS

* deviceName ^slicing.discriminator.type = #pattern
* deviceName ^slicing.discriminator.path = "type"
* deviceName ^slicing.rules = #open
* deviceName ^slicing.description = "Slice based on deviceName pattern"
* deviceName contains manufacturer-name 1..1
* deviceName[manufacturer-name].type = http://hl7.org/fhir/device-nametype#manufacturer-name
* deviceName[manufacturer-name].name 1..1 MS
* deviceName[manufacturer-name] ^short = "Manufacturer’s Model Name"


Mapping: FhirOSIRISImagingDevice
Source: imaging-device
Target: "Device"
Id: fhir-osiris-imaging-device
Title: "Fhir-osiris to osiris"
* -> "Imaging Device" "Imaging device description"
* manufacturer -> "Equipment.manufacturer"
* deviceName[manufacturer-name] -> "Equipement.Model_name"