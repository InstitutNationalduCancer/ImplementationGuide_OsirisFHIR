Profile:        ImagingDevice
Parent:         Device
Id:             imaging-device
Title:          "Imaging Device"
Description:    "Qualification of the equipment used to acquire a series of images"


* manufacturer MS
* version MS
* version 1..1

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
* version -> "Version of the software"
* deviceName[manufacturer-name] -> "Equipement.Model_name"


/*
    ##########################
    # DICOM <--> FHIR-OSIRIS #
    ##########################
*/

Mapping: DicomToFhirImagingDevice
Source: imaging-device
Target: "ImagingDevice"
Id: dicom-to-fhir-imaging-device
Title: "Fhir-osiris to osiris"
* -> "Imaging Device" "Imagind device description"
* manufacturer -> "(0008,0070)"
* version -> "(0018,1020)"
* deviceName[manufacturer-name] -> "(0018,1090)"
