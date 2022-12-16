Profile:        ImagingDevice
Parent:         Device
Id:             imaging-device
Title:          "Imaging Device"
Description:    "Qualification of the equipment used to acquire a series of images"


* manufacturer MS
* manufacturer 1..1
* manufacturer ^definition = "A name of the manufacturer. Dicom Tag (0008,0070)"

* deviceName 1..1
* deviceName MS
* deviceName.type = http://hl7.org/fhir/device-nametype#manufacturer-name
* deviceName ^short = "Equipment model name"
* deviceName ^definition = "Equipment model name. Dicom Tag (0008,1090)"

* version MS
* version 1..1
* version ^short = "Acquisition software version"
* version ^definition = "Software version of the acquisition equipment of the series. Dicom Tag (0018,1020)"

/*
    ###################################
    # MAPPING OSIRIS <--> FHIR-OSIRIS #
    ###################################
*/

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
