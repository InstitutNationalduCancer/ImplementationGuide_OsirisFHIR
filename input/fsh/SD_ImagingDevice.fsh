Profile:        ImagingDevice
Parent:         Device
Id:             imaging-device
Title:          "Imaging Device"
Description:    "Description of an imaging device."

* identifier ^short = "GEO Identifier of the platform"

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
* manufacturer -> "OSIRIS_pivot_Equipment.Equipment_Manufacturer"
* version -> "OSIRIS_pivot_Equipment.Equipment_SoftwareVersion"
* deviceName -> "OSIRIS_pivot_Equipment.Equipment_ModelName"


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
* manufacturer -> "Dicom Tag (0008,0070)"
* version -> "Dicom Tag (0018,1020)"
* deviceName -> "Dicom Tag (0018,1090)"
