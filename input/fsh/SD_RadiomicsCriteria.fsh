
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
    windowMatrix 0..1 /* and
    usedImageFilter 1..1 and
    distanceWeighting 1..1 and
    numberOfGreyLevels 1..1 and
    binSize 1..1 and
    intensityResampling 1..1 and
    lowestIntensity 1..1 and
    boundsRangeOfValueAfterDiscretisation 1..1 and
    spatialResamplingMethod 1..1 and
    spatialResamplingValues 1..1 and
    textureMatrixAggregation 1..1 */

/* Software Name */
* extension[softwareName].extension contains
    code 0..1 and
    valueString 1..1
* extension[softwareName].extension[valueString].value[x] 1..1

* extension[softwareName] ^short = "Describe which software was used to compute image biomarkers"
* extension[softwareName].extension[code] ^short = "ISBI Code"
* extension[softwareName].extension[code].valueCoding = IBSI#61
* extension[softwareName].extension[valueString] ^short = "Name of the software"
* extension[softwareName].extension[valueString].value[x] only string

/* Software Version */
* extension[softwareVersion].extension contains
    code 0..1 and
    valueString 1..1
* extension[softwareVersion].extension[valueString].value[x] 1..1

* extension[softwareVersion] ^short = "Describe which software version was used to compute image biomarkers"
* extension[softwareVersion].extension[code] ^short = "ISBI Code"
* extension[softwareVersion].extension[code].valueCoding = IBSI#61
* extension[softwareVersion].extension[valueString] ^short = "Name of the version"
* extension[softwareVersion].extension[valueString].value[x] only string 

/* Localization Method */
* extension[localizationMethod] ^short = "Apply from a ROI, Apply directly on image voxels: Local || Global"
* extension[localizationMethod].valueCoding from VSLocalizationMethod (required)
* extension[localizationMethod].valueCoding 1..1

/* Windows Matrix */
* extension[windowMatrix].value[x] only string 
* extension[windowMatrix] obeys windowsMatrix-if-localizationMethod-local




/* extension[localizationMethod] ^slicing.discriminator.type = #exists
* extension[localizationMethod] ^slicing.discriminator.path = "valueString"
* extension[localizationMethod] ^slicing.rules = #open
* extension[localizationMethod] ^slicing.description = "Slice based on the component.code pattern"


* extension[localizationMethod].extension contains
    localizationMethodLocal 0..1 and
    localizationMethodGlobal 0..1
* extension[localizationMethod].extension[localizationMethodLocal].extension contains
    valueString 1..1 and
    windowMatrix 1..1
* extension[localizationMethod].extension[localizationMethodLocal].extension[valueString].value[x] 1..1
* extension[localizationMethod].extension[localizationMethodGlobal].value[x] 1..1
* extension[localizationMethod].extension[localizationMethodLocal].extension[windowMatrix].value[x] 1..1

* extension[localizationMethod] ^short = "Apply from a ROI, Apply directly on image voxels: Local || Global"
* extension[localizationMethod].extension[localizationMethodLocal].extension[valueString].valueString = "Local"
* extension[localizationMethod].extension[localizationMethodLocal].extension[windowMatrix].value[x] only string 
* extension[localizationMethod].extension[localizationMethodGlobal].valueString = "Global" */




/*
* extension[method] ^short = "Apply from a ROI, Apply directly on image voxels"
* extension[method].value[x] only string
* extension[usedImageFilter] ^short = "Describe if a method and settings was used or not to filter images before calculation."
* extension[usedImageFilter].value[x] only boolean
* extension[distanceWeighting] ^short = "Define how CM, RLM, NGTDM and NGLDM weight distances, e.g. no weighting."
* extension[distanceWeighting].value[x] only decimal
* extension[numberOfGreyLevels] ^short = "Describe the number of grey level used for discretisation."
* extension[numberOfGreyLevels].value[x] only decimal
* extension[binSize] ^short = "Describe the number of bins (FBN) or the bin size (FBS) used for discretisation."
* extension[binSize].value[x] only decimal
* extension[intensityResampling] ^short = "Resampling intensity method."
* extension[intensityResampling].value[x] only decimal
* extension[lowestIntensity] ^short = "Describe the lowest intensity in the first bin for FBS discretisation."
* extension[lowestIntensity].value[x] only decimal
* extension[boundsRangeOfValueAfterDiscretisation] ^short = "Bound intensities after discretisation."
* extension[boundsRangeOfValueAfterDiscretisation].value[x] only Range
* extension[spatialResamplingMethod] ^short = "Bicubic spline || Tricubic spline || Lagrangian polynomial."
* extension[spatialResamplingMethod].value[x] only string
* extension[spatialResamplingValues] ^short = "x, y, z, spatial resampling"
* extension[spatialResamplingValues].value[x] only string
* extension[textureMatrixAggregation] ^short = "Define how texture-matrix based biomarkers were computed from underlying texture matrices."
* extension[textureMatrixAggregation].value[x] only string */


Invariant:   windowsMatrix-if-localizationMethod-local
Description: "If extension[localizationMethod].valueCoding is Local, then extension[windowMatrix].value[x] MUST be present"
Expression:  "extension[localizationMethod].valueCoding != 'Local' implies extension[windowMatrix].value[x].exists()"
Severity:    #error


/*
    ##########################
    # IBSI <--> FHIR-OSIRIS #
    ##########################
*/

Mapping: IbsiToFhirRadiomicsCriteria 
Source: radiomics-criteria-settings
Target: "RadiomicsCriteria"
Id: ibsi-to-fhir-radiomics-criteria
Title: "Fhir-osiris to osiris"
* -> "Radiomics Criteria" "Radiomics Criteria Description"

* extension[softwareName] -> "RadiomicsCriteria.RadiomicsCriteria_SoftwareName"
* extension[softwareVersion] -> "RadiomicsCriteria.RadiomicsCriteria_SoftwareVersion"
* extension[localizationMethod] -> "RadiomicsCriteria_ComputationalLocalisationMethod"
* extension[windowMatrix] -> "RadiomicsCriteria_CalculationWindowMatrix"
/* extension[binSize] -> "IBSI (56b)"
/* extension[lowestIntensity] -> "IBSI (56c)"
* extension[textureMatrixAggregation] -> "IBSI (62)"*/