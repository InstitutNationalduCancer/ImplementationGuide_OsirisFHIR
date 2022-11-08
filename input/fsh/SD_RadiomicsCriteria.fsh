
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


Extension:      RadiomicsCriteriaSettings
Id:             radiomics-criteria-settings
Title:          "Radiomics Criteria Settings"
Description:    "Radiomics Criteria Settings."


* extension contains
    softwareName 1..1  and
    softwareVersion 1..1  and
    localizationMethod 1..1  and
    windowMatrix 0..1 and
    usedImageFilter 1..1 and
    usedImageFilterParameters 1..1 and
    distanceWeighting 1..1 and
    discretisationMethod 1..1 and
    binSize 1..1 and
    bounds 0..1 and
    lowestIntensity 0..1 and
    biggestIntensity 0..1 and
    boundsRangeOfValueAfterDiscretisation 1..1 and
    spatialResamplingMethod 1..1 and
    spatialResamplingValues 0..1 and
    textureMatrixAggregation 1..1

/* 1.1 Software Name */
* extension[softwareName].extension contains
    code 0..1 and
    valueString 1..1
* extension[softwareName].extension[valueString].value[x] 1..1

* extension[softwareName] ^short = "Describe which software was used to compute image biomarkers"
* extension[softwareName].extension[code] ^short = "ISBI Code"
* extension[softwareName].extension[code].valueCoding = IBSI#61
* extension[softwareName].extension[valueString] ^short = "Name of the software"
* extension[softwareName].extension[valueString].value[x] only string

/* 1.2 Software Version */
* extension[softwareVersion].extension contains
    code 0..1 and
    valueString 1..1
* extension[softwareVersion].extension[valueString].value[x] 1..1

* extension[softwareVersion] ^short = "Describe which software version was used to compute image biomarkers"
* extension[softwareVersion].extension[code] ^short = "ISBI Code"
* extension[softwareVersion].extension[code].valueCoding = IBSI#61
* extension[softwareVersion].extension[valueString] ^short = "Name of the version"
* extension[softwareVersion].extension[valueString].value[x] only string 

/* 1.3 Localization Method */
* extension[localizationMethod] ^short = "Apply from a ROI, Apply directly on image voxels: Local || Global"
* extension[localizationMethod].valueCoding from VSLocalizationMethod (required)
* extension[localizationMethod].valueCoding 1..1

/* 1.4 Calculation Window Matrix */
* extension[windowMatrix] ^short = "Define the matrix of the calculation window"
* extension[windowMatrix].value[x] only string 
* extension[windowMatrix] obeys windowsMatrix-if-localizationMethod-local

/* 1.5 Image Filter*/
* extension[usedImageFilter] ^short = "Describe method used to filter images before calculation."
* extension[usedImageFilter].value[x] only string

/* 1.6 Method Parameters Used */
* extension[usedImageFilterParameters] ^short = "Define method parameters used to filter images before calculation"
* extension[usedImageFilterParameters].value[x] only string

/* 1.7 Distance Weighting */
* extension[distanceWeighting].extension contains
    code 0..1 and
    valueString 1..1
* extension[distanceWeighting].extension[valueString].value[x] 1..1

* extension[distanceWeighting] ^short = "Define how CM, RLM, NGTDM and NGLDM weight distances, e.g. no weighting."
* extension[distanceWeighting].extension[code] ^short = "ISBI Code"
* extension[distanceWeighting].extension[code].valueCoding = IBSI#63
* extension[distanceWeighting].extension[valueString] ^short = "Distance Weighting"
* extension[distanceWeighting].extension[valueString].value[x] only string 

/* 1.8 Resampling Intensity Method */
* extension[discretisationMethod].extension contains
    code 0..1 and
    valueCoding 1..1
* extension[discretisationMethod].extension[valueCoding].value[x] 1..1

* extension[discretisationMethod] ^short = "Describe the resampling intensity method"
* extension[discretisationMethod].extension[code] ^short = "ISBI Code"
* extension[discretisationMethod].extension[code].valueCoding = IBSI#56a
* extension[discretisationMethod].extension[valueCoding] ^short = "Resampling intensity method"
* extension[discretisationMethod].extension[valueCoding].valueCoding from VSIntensityResampling (required) 
* extension[discretisationMethod].extension[valueCoding].valueCoding 1..1

/* 1.9 Number Or Size Bins */
* extension[binSize].extension contains
    code 0..1 and
    valueDecimal 1..1
* extension[binSize].extension[valueDecimal].value[x] 1..1

* extension[binSize] ^short = "Describe the number of bins (FBN) or the bin size (FBS) used for discretisation."
* extension[binSize].extension[code] ^short = "ISBI Code"
* extension[binSize].extension[code].valueCoding = IBSI#56b
* extension[binSize].extension[valueDecimal] ^short = "Number (FBN) Or size (FBS) bins"
* extension[binSize].extension[valueDecimal].value[x] only decimal 

/* 1.10 Bounds */
* extension[bounds] ^short = "Describe the bounds in intensity to perform discretization."
* extension[bounds].value[x] only string
* extension[bounds] obeys bounds-if-discretisationMethod-FBN

/* 1.11 Lowest Intensity */
* extension[lowestIntensity].extension contains
    code 0..1 and
    valueDecimal 1..1
* extension[lowestIntensity].extension[valueDecimal].value[x] 1..1

* extension[lowestIntensity] ^short = "Describe the lowest intensity in the first bin for FBS discretisation."
* extension[lowestIntensity].extension[code] ^short = "ISBI Code"
* extension[lowestIntensity].extension[code].valueCoding = IBSI#56c
* extension[lowestIntensity].extension[valueDecimal] ^short = "Lowest Intensity"
* extension[lowestIntensity].extension[valueDecimal].value[x] only decimal 
* extension[lowestIntensity] obeys lowestIntensity-if-discretisationMethod-FBS

/* 1.12 Biggest Intensity */
* extension[biggestIntensity].extension contains
    code 0..1 and
    valueDecimal 1..1
* extension[biggestIntensity].extension[valueDecimal].value[x] 1..1

* extension[biggestIntensity] ^short = "Describe the biggest intensity in the first bin for FBS discretisation."
* extension[biggestIntensity].extension[code] ^short = "ISBI Code"
* extension[biggestIntensity].extension[code].valueCoding = IBSI#56c
* extension[biggestIntensity].extension[valueDecimal] ^short = "Biggest Intensity"
* extension[biggestIntensity].extension[valueDecimal].value[x] only decimal 
* extension[biggestIntensity] obeys biggestIntensity-if-discretisationMethod-FBS

/* 1.13 Bounds Range Of Value After Discretisation */
* extension[boundsRangeOfValueAfterDiscretisation] ^short = "Describe bound intensities after discretisation."
* extension[boundsRangeOfValueAfterDiscretisation].value[x] only string

/* 14. Spatial Resampling Method */
* extension[spatialResamplingMethod] ^short = "Describe the spatial resampling method"
* extension[spatialResamplingMethod].valueCoding from VSSpatialResamplingMethodAndInterpolationType (required)
* extension[spatialResamplingMethod].valueCoding 1..1

/* 15. Spatial Resampling Values */
* extension[spatialResamplingValues] ^short = "Describe spatial resampling values: x, y, z"
* extension[spatialResamplingValues].value[x] only string 

/* 16. Texture Matrix Aggregation */
* extension[textureMatrixAggregation].extension contains
    code 0..1 and
    valueString 1..1
* extension[textureMatrixAggregation].extension[valueString].value[x] 1..1

* extension[textureMatrixAggregation] ^short = "Define how texture matrix based biomarkers were computed from underlying texture matrices."
* extension[textureMatrixAggregation].extension[code] ^short = "ISBI Code"
* extension[textureMatrixAggregation].extension[code].valueCoding = IBSI#62
* extension[textureMatrixAggregation].extension[valueString] ^short = "Texture Matrix Aggregation"
* extension[textureMatrixAggregation].extension[valueString].value[x] only string 

/* Invariants */
Invariant:   windowsMatrix-if-localizationMethod-local
Description: "If extension[localizationMethod].valueCoding is Local, then extension[windowMatrix].valuevalueString MUST be present"
Expression:  "extension[localizationMethod].valueCoding != 'Local' implies extension[windowMatrix].valueString.exists()"
Severity:    #error

Invariant:   bounds-if-discretisationMethod-FBN
Description: "If extension[discretisationMethod].valueCoding is FBN, then extension[bounds].valuevalueString MUST be present"
Expression:  "extension[discretisationMethod].valueCoding != 'FBN' implies extension[bounds].valuevalueString.exists()"
Severity:    #error

Invariant:   lowestIntensity-if-discretisationMethod-FBS
Description: "If extension[discretisationMethod].valueCoding is FBS, then extension[lowestIntensity].valueDecimal MUST be present"
Expression:  "extension[discretisationMethod].valueCoding != 'FBS' implies extension[lowestIntensity].valueDecimal.exists()"
Severity:    #error

Invariant:   biggestIntensity-if-discretisationMethod-FBS
Description: "If extension[discretisationMethod].valueCoding is FBS, then extension[biggestIntensity].valueDecimal MAY be present"
Expression:  "(extension[discretisationMethod].valueCoding != 'FBS' implies extension[biggestIntensity].valueDecimal.exists()) or (extension[discretisationMethod].valueCoding != 'FBS' implies extension[biggestIntensity].valueDecimal.exists().not)"
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
* extension[bounds] -> ""
* extension[lowestIntensity] -> "RadiomicsCriteria.RadiomicsCriteria_LowestIntensity"
* extension[biggestIntensity] -> "RadiomicsCriteria.RadiomicsCriteria_BiggestIntensity"
* extension[boundsRangeOfValueAfterDiscretisation] -> "RadiomicsCriteria.RadiomicsCriteria_BoundsRangeOfValueAfterDiscretisation"
* extension[spatialResamplingMethod] -> "RadiomicsCriteria.RadiomicsCriteria_SpatialResamplingMethod"
* extension[spatialResamplingValues] -> "RadiomicsCriteria.RadiomicsCriteria_SpatialResamplingValues"	
* extension[textureMatrixAggregation] -> "RadiomicsCriteria.RadiomicsCriteria_TextureMatrixAggregation"