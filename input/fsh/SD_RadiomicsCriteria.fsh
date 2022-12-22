
Profile:        RadiomicsCriteria
Parent:         Observation
Id:             radiomics-criteria
Title:          "Radiomics Criteria"
Description:    "Description of the criteria used for the biomarkers calculations"

* extension contains radiomics-criteria-settings named radiomics-criteria-settings 1..1

* identifier MS 
* identifier 1..1

* focus MS
* focus 1..1
* focus only Reference(roi-segmentation)

* partOf MS
* partOf 1..1
* partOf only Reference(onco-imagingstudy)

* code = LNC#85430-7

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
* extension[softwareName].extension[valueString].value[x] 1..1 MS

* extension[softwareName] ^short = "Software name"
* extension[softwareName] ^definition = "Name of the software used to calculate the biomarkers image (IBSI 61)"
* extension[softwareName].extension[code] ^short = "ISBI Code"
* extension[softwareName].extension[code].valueCoding = IBSI#61
* extension[softwareName].extension[valueString] ^short = "Software name"
* extension[softwareName].extension[valueString].value[x] only string

/* 1.2 Software Version */
* extension[softwareVersion].extension contains
    code 1..1 MS and
    valueString 1..1 MS
* extension[softwareVersion].extension[valueString].value[x] 1..1 MS

* extension[softwareVersion] ^short = "Version name"
* extension[softwareVersion] ^definition = "Version of the software used to calculate the biomarkers image (IBSI 61)"
* extension[softwareVersion].extension[code] ^short = "ISBI Code"
* extension[softwareVersion].extension[code].valueCoding = IBSI#61
* extension[softwareVersion].extension[valueString] ^short = "Version name"
* extension[softwareVersion].extension[valueString].value[x] only string 

/* 1.3 Localization Method */
* extension[localizationMethod] ^short = "Location of the the method of calculation : Local || Global"
* extension[localizationMethod] ^definition = "The field allows you to define whether the calculation method has been applied to the whole image (voxels of the image) or on a area of interest (ROI)."
* extension[localizationMethod].valueCoding from VSLocalizationMethod (required)
* extension[localizationMethod].valueCoding 1..1 MS

/* 1.4 Calculation Window Matrix */
* extension[windowMatrix] ^short = "Calculation window"
* extension[windowMatrix] ^definition = "Matrix of the calculation window (ex. 5x5x5 voxels)"
* extension[windowMatrix].value[x] only string 
* extension[windowMatrix] obeys windowsMatrix-if-localizationMethod-local
* extension[windowMatrix] MS

/* 1.5 Image Filter*/
* extension[usedImageFilter] ^short = "Method used to filter the images before calculation"
* extension[usedImageFilter] ^definition = "Method used to filter the images before calculation"
* extension[usedImageFilter].value[x] only string

/* 1.6 Method Parameters Used */
* extension[usedImageFilterParameters] ^short = "Parameters of the method"
* extension[usedImageFilterParameters] ^definition = "Parameters of the method used to filter the images before the calculation "
* extension[usedImageFilterParameters].value[x] only string
* extension[usedImageFilterParameters] MS

/* 1.7 Distance Weighting */
* extension[distanceWeighting].extension contains
    code 1..1 MS and
    valueString 1..1 MS
* extension[distanceWeighting].extension[valueString].value[x] 1..1 MS

* extension[distanceWeighting] ^short = "Distance weighting"
* extension[distanceWeighting] ^definition = "Define how CM, RLM, NGTDM and NGLDM weight the distances, for example no weighting (IBSI 63)"
* extension[distanceWeighting].extension[code] ^short = "ISBI Code"
* extension[distanceWeighting].extension[code].valueCoding = IBSI#63
* extension[distanceWeighting].extension[valueString] ^short = "Distance weighting"
* extension[distanceWeighting].extension[valueString].value[x] only string 

/* 1.8 Resampling Intensity Method */
* extension[discretisationMethod].extension contains
    code 1..1 MS and
    valueCoding 1..1 MS
* extension[discretisationMethod].extension[valueCoding].value[x] 1..1 MS

* extension[discretisationMethod] ^short = "Resampling intensity method"
* extension[discretisationMethod] ^definition = "Resampling intensity method (IBSI 56a)"
* extension[discretisationMethod].extension[code] ^short = "ISBI Code"
* extension[discretisationMethod].extension[code].valueCoding = IBSI#56a
* extension[discretisationMethod].extension[valueCoding] ^short = "Resampling intensity method"
* extension[discretisationMethod].extension[valueCoding].valueCoding from VSIntensityResampling (required) 
* extension[discretisationMethod].extension[valueCoding].valueCoding 1..1 MS

/* 1.9 Number Or Size Bins */
* extension[binSize].extension contains
    code 1..1 MS and
    valueDecimal 1..1 MS
* extension[binSize].extension[valueDecimal].value[x] 1..1 MS

* extension[binSize] ^short = "Number of bins or size of bin"
* extension[binSize] ^definition = "Number of bins (FBN), size of bins (FBS) for discretization (IBSI 56b)"
* extension[binSize].extension[code] ^short = "ISBI Code"
* extension[binSize].extension[code].valueCoding = IBSI#56b
* extension[binSize].extension[valueDecimal] ^short = "Number (FBN) Or size (FBS) bins"
* extension[binSize].extension[valueDecimal].value[x] only decimal 

/* 1.10 Bounds */
* extension[bounds] ^short = "Bounds"
* extension[bounds] ^definition = "Bounds in intensity to perform the discretization"
* extension[bounds].value[x] only string
* extension[bounds] obeys bounds-if-discretisationMethod-FBN
* extension[bounds] MS

/* 1.11 Lowest Intensity */
* extension[lowestIntensity].extension contains
    code 1..1 MS and
    valueDecimal 1..1 MS
* extension[lowestIntensity].extension[valueDecimal].value[x] 1..1 MS

* extension[lowestIntensity] ^short = "Lowest intensity of discretization of the first bin"
* extension[lowestIntensity] ^definition = "Lowest intensity of the first bin for the FBS discretization (IBSI 56c)"
* extension[lowestIntensity].extension[code] ^short = "ISBI Code"
* extension[lowestIntensity].extension[code].valueCoding = IBSI#56c
* extension[lowestIntensity].extension[valueDecimal] ^short = "Lowest Intensity"
* extension[lowestIntensity].extension[valueDecimal].value[x] only decimal 
* extension[lowestIntensity] obeys lowestIntensity-if-discretisationMethod-FBS

/* 1.12 Biggest Intensity */
* extension[biggestIntensity].extension contains
    code 1..1 MS and
    valueDecimal 1..1 MS
* extension[biggestIntensity].extension[valueDecimal].value[x] 1..1 MS

* extension[biggestIntensity] ^short = "Biggest intensity of discretization of the first bin"
* extension[biggestIntensity] ^definition = "Biggest intensity of the last bin for the FBS discretization (IBSI 56c)"
* extension[biggestIntensity].extension[code] ^short = "ISBI Code"
* extension[biggestIntensity].extension[code].valueCoding = IBSI#56c
* extension[biggestIntensity].extension[valueDecimal] ^short = "Biggest Intensity"
* extension[biggestIntensity].extension[valueDecimal].value[x] only decimal 
* extension[biggestIntensity] obeys biggestIntensity-if-discretisationMethod-FBS

/* 1.13 Bounds Range Of Value After Discretisation */
* extension[boundsRangeOfValueAfterDiscretisation] ^short = "Bounds of the intensity value after discretization"
* extension[boundsRangeOfValueAfterDiscretisation] ^definition = "Bounds of the intensity value after discretization"
* extension[boundsRangeOfValueAfterDiscretisation].value[x] only string
* extension[boundsRangeOfValueAfterDiscretisation] MS

/* 14. Spatial Resampling Method */
* extension[spatialResamplingMethod] ^short = "Spatial resampling method"
* extension[spatialResamplingMethod] ^definition = "Spatial resampling method"
* extension[spatialResamplingMethod].valueCoding from VSSpatialResamplingMethodAndInterpolationType (required)
* extension[spatialResamplingMethod].valueCoding 1..1 MS

/* 15. Spatial Resampling Values */
* extension[spatialResamplingValues] ^short = "Spatial resampling values: x, y, z"
* extension[spatialResamplingValues] ^definition = "Spatial resampling values: x, y, z"
* extension[spatialResamplingValues].value[x] only string 
* extension[spatialResamplingValues].value[x] MS

/* 16. Texture Matrix Aggregation */
* extension[textureMatrixAggregation].extension contains
    code 1..1 MS and
    valueString 1..1 MS
* extension[textureMatrixAggregation].extension[valueString].value[x] 1..1 MS

* extension[textureMatrixAggregation] ^short = "Description of the calculation of biomarkers based on texture matrices"
* extension[textureMatrixAggregation] ^definition = "Define how texture matrix-based biomarkers were calculated from the underlying texture matrices (IBSI 62)"
* extension[textureMatrixAggregation].extension[code] ^short = "ISBI Code"
* extension[textureMatrixAggregation].extension[code].valueCoding = IBSI#62
* extension[textureMatrixAggregation].extension[valueString] ^short = "Texture Matrix Aggregation"
* extension[textureMatrixAggregation].extension[valueString].value[x] only string 

/* Invariants */
Invariant:   windowsMatrix-if-localizationMethod-local
Description: "If extension[localizationMethod].valueCoding is Local, then extension[windowMatrix].valuestring MUST be present"
Expression:  "extension[localizationMethod].valueCoding == 'Local' implies extension[windowMatrix].valueString.exists()"
Severity:    #error

Invariant:   bounds-if-discretisationMethod-FBN
Description: "If extension[discretisationMethod].valueCoding is FBN, then extension[bounds].valueString MUST be present"
Expression:  "extension[discretisationMethod].valueCoding == 'FBN' implies extension[bounds].valuevalueString.exists()"
Severity:    #error

Invariant:   lowestIntensity-if-discretisationMethod-FBS
Description: "If extension[discretisationMethod].valueCoding is FBS, then extension[lowestIntensity].valueDecimal MUST be present"
Expression:  "extension[discretisationMethod].valueCoding == 'FBS' implies extension[lowestIntensity].valueDecimal.exists()"
Severity:    #error

Invariant:   biggestIntensity-if-discretisationMethod-FBS
Description: "If extension[discretisationMethod].valueCoding is FBS, then extension[biggestIntensity].valueDecimal MAY be present"
Expression:  "(extension[discretisationMethod].valueCoding == 'FBS' implies extension[biggestIntensity].valueDecimal.exists()) or (extension[discretisationMethod].valueCoding != 'FBS' implies extension[biggestIntensity].valueDecimal.exists().not)"
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
Title: "Fhir-osiris to osiris"

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
Title: "Fhir-osiris to ibsi"

* extension[softwareName] -> "IBSI 61"
* extension[softwareVersion] -> "IBSI 61"
* extension[distanceWeighting] -> "IBSI 63"
* extension[discretisationMethod] -> "IBSI 56a"
* extension[binSize] -> "IBSI 56b"
* extension[lowestIntensity] -> "IBSI 56c"
* extension[biggestIntensity] -> "IBSI 56c"
* extension[textureMatrixAggregation] -> "IBSI 62"
