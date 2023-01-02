Profile: RadiotherapyVolume	
Parent: BodyStructure
Id: radiotherapy-volume
Title: "Radiotherapy Volume Profile"
Description: "A volume of the body treated by radiotherapy (plannes or delivered)."
	
* patient MS
* patient only Reference(onco-patient)

* identifier 1..1 MS
* identifier ^short = "ID"
* identifier ^definition = " Identification number of the prescription volume. Dicom Tag (3006,0022)"


* location ^short = "Location"
* location 1..1 MS
* location ^definition = "Codes describing the body locations where radiotherapy treatments can be directed. They should be extracted from MOSAIQ/ARIA Record and Verify."

* locationQualifier ^short = "Codes specifying the location"
* locationQualifier ^definition = "Various modifiers that can be applied to body locations where radiotherapy treatments can be directed."
* locationQualifier 0..* MS
	
* description ^short = "Volume Description"
* description ^definition = "A text description of the radiotherapy volume, which SHOULD contain any additional information above and beyond the location and locationQualifier that describe the volume."
* description 0..1 MS

/*
    ##########################
    # FHIR-OSIRIS <--> OSIRIS #
    ##########################
*/

Mapping: FhirOSIRIS-RadiotherapyVolume
Source: radiotherapy-volume
Target: "RadiotherapyVolume"
Id: fhir-osiris-RadiotherapyVolume
Title: "Fhir-osiris to osiris"

* identifier -> "OSIRIS_pivot_VolumeRT.Volume_Identifier"
* location  -> "OSIRIS_pivot_VolumeRT.Volume_Location"
* locationQualifier -> "OSIRIS_pivot_VolumeRT.Volume_LocationQualifier"
* description -> "OSIRIS_pivot_VolumeRT.Volume_Description"

/*
    ##########################
    # FHIR-OSIRIS <--> DICOM TAG #
    ##########################
*/

Mapping: FhirOSIRIS-DicomTag-RadiotherapyVolume
Source: radiotherapy-volume
Target: "RadiotherapyVolume"
Id: fhir-osiris-DicomTag-RadiotherapyVolume
Title: "Fhir-osiris to Dicom Tag"

* identifier -> "RT Structure Set/Structure	Set/Structure Set ROI Sequence/ROI Number Attribute	(3006,0022) 
Or RT Plan/RT General Plan/Treatment Sites Attribute (300A,000B)"

