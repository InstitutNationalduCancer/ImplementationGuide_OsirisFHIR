Profile:        RadiomicsImageFilters
Parent:         Observation
Id:             radiomics-Image-filters
Title:          "Radiomics Image Filters"
Description:    "Filtering parameters used for the imaging analysis"

* extension contains radiomics-image-filters-settings named radiomics-image-filters-settings 1..1

* identifier MS 
* identifier 1..1

* focus MS
* focus 1..1
* focus only Reference(roi-segmentation)

* partOf MS
* partOf 1..1
* partOf only Reference(onco-imagingstudy)

* code = LNC#85430-7


Extension:      RadiomicsImageFiltersSettings
Id:             radiomics-image-filters-settings
Title:          "Radiomics Image Filters Settings"
Description:    "Radiomics Image Filters Settings."
* extension contains
    softwareName 1..1 and
    softwareVersion 1..1 and
    filterMethod 0..1 and
    filterType 0..1 and
    filterInterpolation 0..1 and
    intensityRounding 0..1 and
    boundaryCondition 0..1

/* 2.1 Software Name*/
* extension[softwareName] ^short = "Describe which software was used to compute image biomarkers"
* extension[softwareName].value[x] only string

/* 2.2 Software Version*/
* extension[softwareVersion] ^short = "Describe which software version was used to compute image biomarkers"
* extension[softwareVersion].value[x] only string

/* 2.3 Filter Method */
* extension[filterMethod] ^short = "Define the image filter method"
* extension[filterMethod].valueCoding from VSSFilterMethod (required)

/* 2.4 Filter Type */
* extension[filterType] ^short = "Define the type of image filter"
* extension[filterType].valueCoding from VSSFilterType (required)

/* 2.5 Interpolation Type */
* extension[filterInterpolation] ^short = "Define the type of filter interpolation"
* extension[filterInterpolation].valueCoding from VSSpatialResamplingMethodAndInterpolationType (required)

/* 2.6 Intensity Rounding */
* extension[intensityRounding].extension contains
    code 1..1 and
    valueString 1..1

* extension[intensityRounding] ^short = "Describe Hounsfield fractional units rounded to integer values after interpolation"
* extension[intensityRounding].extension[code] ^short = "ISBI Code"
* extension[intensityRounding].extension[code].valueCoding = IBSI#52
* extension[intensityRounding].extension[valueString] ^short = "Intensity Rounding"
* extension[intensityRounding].extension[valueString].value[x] only string 
* extension[intensityRounding].extension[valueString].value[x] 1..1

/* 2.7 Boundary Condition */
* extension[boundaryCondition] ^short = "Describe the boundary condition"
* extension[boundaryCondition].valueCoding from VSBoundaryCondition (required)

/*
    ##########################
    # FHIR-OSIRIS <--> OSIRIS #
    ##########################
*/

Mapping: FhirOSIRIS-RadiomicsImageFilter
Source: radiomics-image-filters-settings
Target: "RadiomicsImageFilters"
Id: fhir-osiris-RadiomicsImageFilters
Title: "Fhir-osiris to osiris"

* extension[softwareName] -> "RadiomicsImageFilter.RadiomicsImageFilter_SoftwareName"
* extension[softwareVersion] -> "RadiomicsImageFilter.RadiomicsImageFilter_SoftwareVersion"
* extension[filterMethod] -> "RadiomicsImageFilter.RadiomicsImageFilter_FilterMethod"
* extension[filterType] -> "RadiomicsImageFilter.RadiomicsImageFilter_FilterType"
* extension[filterInterpolation] -> "RadiomicsImageFilter.RadiomicsImageFilter_FilterInterpolation"
* extension[intensityRounding] -> "RadiomicsImageFilter.RadiomicsImageFilter_IntensityRounding"
* extension[boundaryCondition] -> "RadiomicsImageFilter.RadiomicsImageFilter_BoundaryCondition"



