
Profile: RadiotherapyVolume
Parent: BodyStructure
Id: radiotherapy-volume
Title: "Radiotherapy Volume Profile"
Description: "A volume of the body used in radiotherapy planning or treatment delivery."

// MISING LINK TO IMAGE or IMAGINGSTUDY or SERIE !!!!

* identifier ^short = "Volume Identifier"
* identifier ^definition = "The portion of the identifier typically relevant to the user and which is unique within the context of the system."
* identifier 1..* MS

* description ^short = "Volume Description"
* description ^definition = "A text description of the radiotherapy volume, which SHOULD contain any additional information above and beyond the location and locationQualifier that describe the volume."
* description 1..1 MS

* morphology from RadiotherapyVolumeTypeVS (extensible)
* morphology ^short = "Type of Radiotherapy Volume"
* morphology 1..1 MS

* location from Topography (required)
* location ^short = "Codes describing the body locations where radiotherapy treatments can be directed."
* location 1..1 MS

* locationQualifier from RadiotherapyTreatmentLocationQualifierVS
* locationQualifier ^short = "Various modifiers that can be applied to body locations where radiotherapy treatments can be directed."
* locationQualifier 1..* MS

* patient only Reference(onco-patient)
* patient ^short = "The patient for which a radiotherapy procedure is planned or performed."
* patient 1..1 MS

//---- Mapping -----

