Profile:        RadiomicsFeatures
Parent:         Observation
Id:             radiomics-features
Title:          "Radiomics Features"
Description:    "Radiomics features"

//* extension contains radiomics-image-filters-settings named radiomics-image-filters-settings 1..1

* identifier MS 
* identifier 1..1

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
* code from IBSI
* code.coding.display ^short = "Radiomics Feature Name"
* code.coding.display 1..1
* code.coding.display MS
* code.coding.code 0..1
* code.coding.code ^short = "IBSI code ("

* value[x] MS
* value[x] 1..1

* note MS
* note 0..1
* note ^short = "Radiomics Feature Description. References"
