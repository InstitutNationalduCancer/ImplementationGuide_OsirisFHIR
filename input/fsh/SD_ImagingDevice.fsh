Profile:        ImagingDevice
Parent:         Device
Id:             imaging-device
Title:          "Imaging Device"
Description:    "Description of an imaging device."

* identifier ^short = "GEO Identifier of the platform"

* manufacturer MS
<<<<<<< HEAD
=======
* manufacturer 1..1
* manufacturer ^definition = "A name of the manufacturer. Dicom Tag (0008,0070)"

* deviceName 1..1
* deviceName MS
* deviceName.type = http://hl7.org/fhir/device-nametype#manufacturer-name
* deviceName ^short = "Equipment model name"
* deviceName ^definition = "Equipment model name. Dicom Tag (0008,1090)"

>>>>>>> cf3848c (add short and definition to version variable)
* version MS
* version 1..1
* version ^short = "Acquisition software version"
* version ^definition = "Software version of the acquisition equipment of the series. Dicom Tag (0018,1020)"

<<<<<<< HEAD
* deviceName ^slicing.discriminator.type = #pattern
* deviceName ^slicing.discriminator.path = "type"
* deviceName ^slicing.rules = #open
* deviceName ^slicing.description = "Slice based on deviceName pattern"
* deviceName contains manufacturer-name 1..1
* deviceName[manufacturer-name].type = http://hl7.org/fhir/device-nametype#manufacturer-name
* deviceName[manufacturer-name].name 1..1 MS
* deviceName[manufacturer-name] ^short = "Manufacturer’s Model Name"

=======
/*
    ###################################
    # MAPPING OSIRIS <--> FHIR-OSIRIS #
    ###################################
*/
>>>>>>> cf3848c (add short and definition to version variable)

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
