Profile: RadiotherapyVolume	
Parent: BodyStructure
Id: radiotherapy-volume
Title: "Radiotherapy Volume Profile"
Description: "A volume of the body treated by radiotherapy (plannes or delivered)."
	
* patient MS
* patient only Reference(onco-patient)

* identifier ^short = "Volume Identifier"
* identifier ^definition = "The portion of the identifier typically relevant to the user and which is unique within the context of the system."
* identifier 1..1 MS

* morphology from RadiotherapyVolumeTypeVS (extensible)
* morphology ^short = "Type of Radiotherapy Volume"
* morphology 1..1 MS

* location from Topography (required)
* location ^short = "Codes describing the body locations where radiotherapy treatments can be directed."
* location 1..1 MS

* locationQualifier from RadiotherapyTreatmentLocationQualifierVS
* locationQualifier ^short = "Various modifiers that can be applied to body locations where radiotherapy treatments can be directed."
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
* morphology  -> "OSIRIS_pivot_VolumeRT.Volume_Morphology"
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

* identifier -> "ROI Number (3006,0022)"
* morphology  -> "ROI Name (3006,0026)"

