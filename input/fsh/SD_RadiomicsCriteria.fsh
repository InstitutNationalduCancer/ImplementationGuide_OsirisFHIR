
Profile:        RadiomicsCriteria
Parent:         Observation
Id:             radiomics-criteria
Title:          "Radiomics Criteria"
Description:    "Description of the criteria used for the biomarkers calculations"

* extension contains radiomics-criteria-settings named radiomics-criteria-settings 1..1

* focus MS
* focus 1..1
* focus only Reference(roi-segmentation)

* hasMember MS
* hasMember 1..1
* hasMember only Reference(radiomics-Image-filters)

* code = LNC#85430-7

* obeys windowsMatrix-if-localizationMethod-local
* obeys bounds-if-discretisationMethod-FBN
* obeys lowestIntensity-if-discretisationMethod-FBS

Extension:      RadiomicsCriteriaSettings
Id:             radiomics-criteria-settings
Title:          "Radiomics Criteria Settings"
Description:    "Radiomics Criteria Settings."


* extension contains
    softwareName 1..1  MS and
    softwareVersion 1..1  MS and
    localizationMethod 1..1  MS and
    windowMatrix 0..1 MS and
    usedImageFilter 1..1 MS and
    usedImageFilterParameters 1..1 MS and
    distanceWeighting 1..1 MS and
    discretisationMethod 1..1 MS and
    binSize 1..1 MS and
    bounds 0..1 MS and
    lowestIntensity 0..1 MS and
    biggestIntensity 0..1 MS and
    boundsRangeOfValueAfterDiscretisation 1..1 MS and
    spatialResamplingMethod 1..1 MS and
    spatialResamplingValues 0..1 MS and
    textureMatrixAggregation 1..1 MS

/* 1.1 Software Name */
* extension[softwareName].extension contains
    code 1..1 MS and
    valueString 1..1 MS
* extension[softwareName].extension[valueString].valueString 1..1 MS

* extension[softwareName] ^short = "Software name"
* extension[softwareName] ^definition = "Name of the software used to calculate the biomarkers image (IBSI 61)"
* extension[softwareName].extension[code] ^short = "ISBI Code"
* extension[softwareName].extension[code].valueCoding = IBSICS#61
* extension[softwareName].extension[valueString] ^short = "Software name"
* extension[softwareName].extension[valueString].valueString

/* 1.2 Software Version */
* extension[softwareVersion].extension contains
    code 1..1 MS and
    valueString 1..1 MS
* extension[softwareVersion].extension[valueString].valueString 1..1 MS

* extension[softwareVersion] ^short = "Version name"
* extension[softwareVersion] ^definition = "Version of the software used to calculate the biomarkers image (IBSI 61)"
* extension[softwareVersion].extension[code] ^short = "ISBI Code"
* extension[softwareVersion].extension[code].valueCoding = IBSICS#61
* extension[softwareVersion].extension[valueString] ^short = "Version name"
* extension[softwareVersion].extension[valueString].valueString

/* 1.3 Localization Method */
* extension[localizationMethod] ^short = "Location of the the method of calculation : LOCAL || GLOBAL"
* extension[localizationMethod] ^definition = "The field allows you to define whether the calculation method has been applied to the whole image (voxels of the image) or on a area of interest (ROI)."
* extension[localizationMethod].valueString
* extension[localizationMethod].valueString 1..1 MS

/* 1.4 Calculation Window Matrix */
* extension[windowMatrix] ^short = "Calculation window"
* extension[windowMatrix] ^definition = "Matrix of the calculation window (ex. 5x5x5 voxels)"
* extension[windowMatrix].valueString 
* extension[windowMatrix] MS

/* 1.5 Image Filter*/
* extension[usedImageFilter] ^short = "Method used to filter the images before calculation"
* extension[usedImageFilter] ^definition = "Method used to filter the images before calculation"
* extension[usedImageFilter].valueString
* extension[usedImageFilter].valueString 1..1 MS

/* 1.6 Method Parameters Used */
* extension[usedImageFilterParameters] ^short = "Parameters of the used method"
* extension[usedImageFilterParameters] ^definition = "Parameters of the method used to filter the images before the calculation"
* extension[usedImageFilterParameters].valueString
* extension[usedImageFilterParameters] 1..1 MS

/* 1.7 Distance Weighting */
* extension[distanceWeighting].extension contains
    code 1..1 MS and
    valueString 1..1 MS
* extension[distanceWeighting].extension[valueString].valueString 1..1 MS

* extension[distanceWeighting] ^short = "Distance weighting"
* extension[distanceWeighting] ^definition = "Define how CM, RLM, NGTDM and NGLDM weight the distances, for example no weighting (IBSI 63)"
* extension[distanceWeighting].extension[code] ^short = "ISBI Code"
* extension[distanceWeighting].extension[code].valueCoding = IBSICS#63
* extension[distanceWeighting].extension[valueString] ^short = "Distance weighting"
* extension[distanceWeighting].extension[valueString].valueString only string 

/* 1.8 Resampling Intensity Method */
* extension[discretisationMethod].extension contains
    code 1..1 MS and
    valueString 1..1 MS
* extension[discretisationMethod].extension[valueString].valueString 1..1 MS

* extension[discretisationMethod] ^short = "Resampling intensity method: FBS || FBN"
* extension[discretisationMethod] ^definition = "Resampling intensity method: FBS || FBN (IBSI 56a)"
* extension[discretisationMethod].extension[code] ^short = "ISBI Code"
* extension[discretisationMethod].extension[code].valueCoding = IBSICS#56a
* extension[discretisationMethod].extension[valueString] ^short = "Resampling intensity method"
* extension[discretisationMethod].extension[valueString].valueString
* extension[discretisationMethod].extension[valueString].valueString 1..1 MS

/* 1.9 Number Or Size Bins */
* extension[binSize].extension contains
    code 1..1 MS and
    valueDecimal 1..1 MS
* extension[binSize].extension[valueDecimal].valueDecimal 1..1 MS

* extension[binSize] ^short = "Number of bins or size of bin"
* extension[binSize] ^definition = "Number of bins (FBN), size of bins (FBS) for discretization (IBSI 56b)"
* extension[binSize].extension[code] ^short = "ISBI Code"
* extension[binSize].extension[code].valueCoding = IBSICS#56b
* extension[binSize].extension[valueDecimal] ^short = "Number (FBN) Or size (FBS) bins"
* extension[binSize].extension[valueDecimal].valueDecimal

/* 1.10 Bounds */
* extension[bounds] ^short = "Bounds"
* extension[bounds] ^definition = "Bounds in intensity to perform the discretization"
* extension[bounds].valueString
* extension[bounds].valueString MS

/* 1.11 Lowest Intensity */
* extension[lowestIntensity].extension contains
    code 1..1 MS and
    valueDecimal 1..1 MS
* extension[lowestIntensity].extension[valueDecimal].valueDecimal 1..1 MS

* extension[lowestIntensity] ^short = "Lowest intensity of discretization of the first bin"
* extension[lowestIntensity] ^definition = "Lowest intensity of the first bin for the FBS discretization (IBSI 56c)"
* extension[lowestIntensity].extension[code] ^short = "ISBI Code"
* extension[lowestIntensity].extension[code].valueCoding = IBSICS#56c
* extension[lowestIntensity].extension[valueDecimal] ^short = "Lowest Intensity"
* extension[lowestIntensity].extension[valueDecimal].valueDecimal only decimal 

/* 1.12 Biggest Intensity */
* extension[biggestIntensity].extension contains
    code 1..1 MS and
    valueDecimal 1..1 MS
* extension[biggestIntensity].extension[valueDecimal].valueDecimal 1..1 MS

* extension[biggestIntensity] ^short = "Biggest intensity of discretization of the first bin"
* extension[biggestIntensity] ^definition = "Biggest intensity of the last bin for the FBS discretization (IBSI 56c)"
* extension[biggestIntensity].extension[code] ^short = "ISBI Code"
* extension[biggestIntensity].extension[code].valueCoding = IBSICS#56c
* extension[biggestIntensity].extension[valueDecimal] ^short = "Biggest Intensity"
* extension[biggestIntensity].extension[valueDecimal].valueDecimal only decimal 

/* 1.13 Bounds Range Of Value After Discretisation */
* extension[boundsRangeOfValueAfterDiscretisation] ^short = "Bounds of the intensity value after discretization"
* extension[boundsRangeOfValueAfterDiscretisation] ^definition = "Bounds of the intensity value after discretization"
* extension[boundsRangeOfValueAfterDiscretisation].valueString
* extension[boundsRangeOfValueAfterDiscretisation].valueString 1..1 MS

/* 14. Spatial Resampling Method */
* extension[spatialResamplingMethod] ^short = "Spatial resampling method: Bicubic spline|Tricubic spline|Lagrangian polynomial"
* extension[spatialResamplingMethod] ^definition = "Spatial resampling method: Bicubic spline|Tricubic spline|Lagrangian polynomial"
* extension[spatialResamplingMethod].valueString
* extension[spatialResamplingMethod].valueString 1..1 MS

/* 15. Spatial Resampling Values */
* extension[spatialResamplingValues] ^short = "Spatial resampling values: x, y, z"
* extension[spatialResamplingValues] ^definition = "Spatial resampling values: x, y, z"
* extension[spatialResamplingValues].valueString 
* extension[spatialResamplingValues].valueString MS

/* 16. Texture Matrix Aggregation */
* extension[textureMatrixAggregation].extension contains
    code 1..1 MS and
    valueString 1..1 MS
* extension[textureMatrixAggregation].extension[valueString].valueString 1..1 MS

* extension[textureMatrixAggregation] ^short = "Description of the calculation of biomarkers based on texture matrices"
* extension[textureMatrixAggregation] ^definition = "Define how texture matrix-based biomarkers were calculated from the underlying texture matrices (IBSI 62)"
* extension[textureMatrixAggregation].extension[code] ^short = "ISBI Code"
* extension[textureMatrixAggregation].extension[code].valueCoding = IBSICS#62
* extension[textureMatrixAggregation].extension[valueString] ^short = "Texture Matrix Aggregation"
* extension[textureMatrixAggregation].extension[valueString].valueString only string 

/* Invariants */
Invariant:   windowsMatrix-if-localizationMethod-local
Description: "If extension[localizationMethod].valueString is LOCAL, then extension[windowMatrix].valuestring MUST be present"
Expression: "extension.where(url= 'http://build.fhir.org/ig/arkhn/arkhn-ig-osiris/StructureDefinition/radiomics-criteria-settings').extension.where(url='localizationMethod').valueString = 'LOCAL'implies
extension.where(url= 'http://build.fhir.org/ig/arkhn/arkhn-ig-osiris/StructureDefinition/radiomics-criteria-settings').extension.where(url='windowMatrix').exists()"
Severity:    #error

Invariant:   bounds-if-discretisationMethod-FBN
Description: "If extension[discretisationMethod].valueString is FBN, then extension[bounds].valueString MUST be present"
Expression:  "extension.where(url= 'http://build.fhir.org/ig/arkhn/arkhn-ig-osiris/StructureDefinition/radiomics-criteria-settings').extension.where(url='discretisationMethod').extension.where(url='valueString').valueString = 'FBN' implies
extension.where(url= 'http://build.fhir.org/ig/arkhn/arkhn-ig-osiris/StructureDefinition/radiomics-criteria-settings').extension.where(url='bounds').exists()"
Severity:    #error

Invariant:   lowestIntensity-if-discretisationMethod-FBS
Description: "If extension[discretisationMethod].valueString is FBS, then extension[lowestIntensity].valueDecimal MUST be present"
Expression:  "extension.where(url= 'http://build.fhir.org/ig/arkhn/arkhn-ig-osiris/StructureDefinition/radiomics-criteria-settings').extension.where(url='discretisationMethod').extension.where(url='valueString').valueString = 'FBS' implies
extension.where(url= 'http://build.fhir.org/ig/arkhn/arkhn-ig-osiris/StructureDefinition/radiomics-criteria-settings').extension.where(url='lowestIntensity').exists()"
Severity:    #error

/*
    ##########################
    # FHIR-OSIRIS <--> OSIRIS #
    ##########################
*/

Mapping: FhirOSIRIS-RadiomicsCriteria
Source: radiomics-criteria-settings
Target: "RadiomicsCriteria"
Id: fhir-osiris-RadiomicsCriteria
Title: "OSIRIS pivot files"

* extension[softwareName] -> "RadiomicsCriteria.RadiomicsCriteria_SoftwareName"
* extension[softwareVersion] -> "RadiomicsCriteria.RadiomicsCriteria_SoftwareVersion"
* extension[localizationMethod] -> "RadiomicsCriteria.RadiomicsCriteria_ComputationalLocalisationMethod"
* extension[windowMatrix] -> "RadiomicsCriteria.RadiomicsCriteria_CalculationWindowMatrix"
* extension[usedImageFilter] -> "RadiomicsCriteria.RadiomicsCriteria_UsedImageFilter"
* extension[usedImageFilterParameters] -> "RadiomicsCriteria.RadiomicsCriteria_UsedImageFilterParameters"
* extension[distanceWeighting] -> "RadiomicsCriteria.RadiomicsCriteria_DistanceWeighted"
* extension[discretisationMethod] -> "RadiomicsCriteria.RadiomicsCriteria_DiscretisationMethod"
* extension[binSize] -> "RadiomicsCriteria.RadiomicsCriteria_BinSize"
* extension[bounds] -> "RadiomicsCriteria.RadiomicsCriteria_Bound"
* extension[lowestIntensity] -> "RadiomicsCriteria.RadiomicsCriteria_LowestIntensity"
* extension[biggestIntensity] -> "RadiomicsCriteria.RadiomicsCriteria_BiggestIntensity"
* extension[boundsRangeOfValueAfterDiscretisation] -> "RadiomicsCriteria.RadiomicsCriteria_BoundsRangeOfValueAfterDiscretisation"
* extension[spatialResamplingMethod] -> "RadiomicsCriteria.RadiomicsCriteria_SpatialResamplingMethod"
* extension[spatialResamplingValues] -> "RadiomicsCriteria.RadiomicsCriteria_SpatialResamplingValues"	
* extension[textureMatrixAggregation] -> "RadiomicsCriteria.RadiomicsCriteria_TextureMatrixAggregation"

/*
    ##########################
    # FHIR-OSIRIS <--> IBSI #
    ##########################
*/

Mapping: FhirOSIRISIBSI-RadiomicsCriteria
Source: radiomics-criteria-settings
Target: "RadiomicsCriteria"
Id: fhir-osiris-ibsi-RadiomicsCriteria
Title: "IBSI (https://ibsi.readthedocs.io/)"

* extension[softwareName] -> "IBSI 61"
* extension[softwareVersion] -> "IBSI 61"
* extension[distanceWeighting] -> "IBSI 63"
* extension[discretisationMethod] -> "IBSI 56a"
* extension[binSize] -> "IBSI 56b"
* extension[lowestIntensity] -> "IBSI 56c"
* extension[biggestIntensity] -> "IBSI 56c"
* extension[textureMatrixAggregation] -> "IBSI 62"
