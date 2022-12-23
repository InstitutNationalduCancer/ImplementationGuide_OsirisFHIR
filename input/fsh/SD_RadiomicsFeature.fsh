Profile:        RadiomicsFeatures
Parent:         Observation
Id:             radiomics-features
Title:          "Radiomics Features"
Description:    "Description of the radiomics measurements described in IBSI nomenclature"

* focus MS
* focus 1..1
* focus only Reference(roi-segmentation)

* partOf MS
* partOf 1..1
* partOf only Reference(onco-imagingstudy)

* hasMember MS
* hasMember 1..*
* hasMember only Reference(radiomics-criteria or radiomics-Image-filters)

* code MS
* code 1..1
* code.text ^short = "Radiomics Feature Name"
* code.text ^definition = "Name of the radiomic measure in the IBSI nomenclature"
* code.text 1..1
* code.text MS
* code.coding.code from RadiomicsFeaturesVS (extensible)
* code.coding.code 1..1 
* code.coding.code ^short = "Unique number"
* code.coding.code ^definition = "Unique number in the IBSI nomenclature"

* value[x] MS
* value[x] 1..1
* valueQuantity.value only decimal
* value[x] ^short = "Value"
* value[x] ^definition = "Value"

/*
    ##########################
    # FHIR-OSIRIS <--> OSIRIS #
    ##########################
*/

Mapping: FhirOSIRIS-RadiomicsFeatures
Source: radiomics-features
Target: "RadiomicsFeatures"
Id: fhir-osiris-RadiomicsFeatures
Title: "Fhir-osiris to osiris"
* code.coding.code -> "RadiomicsFeature_Id"
* code.text -> "RadiomicsFeature.RadiomicsFeature_Name"
* value[x] -> "RadiomicsFeature.RadiomicsFeature_Value"
