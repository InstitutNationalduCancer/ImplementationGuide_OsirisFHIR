Profile: RadiotherapyVolume	
Parent: BodyStructure
Id: radiotherapy-volume
Title: "Radiotherapy Volume Profile"
Description: "A volume of the body treated by radiotherapy (plannes or delivered)."
	
* patient MS
* patient only Reference(onco-patient)

* identifier ^short = "ROI identification number"
* identifier 1..1 MS
* identifier ^definition = "The ROI identification number corresponds to the dicom path: RT Structure Set/Structure Set/Structure Set ROI Sequence/ROI Number (3006,0022)."

* morphology from RadiotherapyVolumeTypeVS (extensible)
* morphology ^short = "Type of Radiotherapy Volume"
* morphology 1..1 MS
* morphology ^definition = "The type of Radiotherapy Volume corresponds to the dicom path: RT Structure Set/Structure Set/Structure Set ROI Sequence/ROI Name (3006,0026)."

* location from Topography (required)
* location ^short = "Codes describing the body locations where radiotherapy treatments can be directed."
* location 1..1 MS
* location ^definition = "The location should be extracted from MOSAIQ/ARIA Record and Verify."

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

