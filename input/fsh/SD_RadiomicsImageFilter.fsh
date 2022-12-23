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
    softwareName 1..1 MS and
    softwareVersion 1..1 MS and
    filterMethod 0..1 MS and
    filterType 0..1 MS and
    filterInterpolation 0..1 MS and
    intensityRounding 0..1 MS and
    boundaryCondition 0..1 MS

/* 2.1 Software Name*/
* extension[softwareName] ^short = "Software name"
* extension[softwareName] ^definition = "Name of the software used"
* extension[softwareName].value[x] only string

/* 2.2 Software Version*/
* extension[softwareVersion] ^short = "Version name"
* extension[softwareVersion] ^definition = "Name of the version used."
* extension[softwareVersion].value[x] only string

/* 2.3 Filter Method */
* extension[filterMethod] ^short = "Method of filter"
* extension[filterMethod] ^definition = "Method of image filter"
* extension[filterMethod].valueCoding from VSSFilterMethod (required)

/* 2.4 Filter Type */
* extension[filterType] ^short = "Type of filter"
* extension[filterType] ^definition = "Type of image filter"
* extension[filterType].valueCoding from VSSFilterType (required)

/* 2.5 Interpolation Type */
* extension[filterInterpolation] ^short = "Type of interpolation "
* extension[filterInterpolation] ^definition = "Type of filter interpolation"
* extension[filterInterpolation].valueCoding from VSSpatialResamplingMethodAndInterpolationType (required)

/* 2.6 Intensity Rounding */
* extension[intensityRounding].extension contains
    code 1..1 MS and
    valueString 1..1 MS

* extension[intensityRounding] ^short = "Rounding of fractional Hounsfield units"
* extension[intensityRounding] ^definition = "Field to describe the fractional Hounsfield units rounded to integer values after interpolation (IBSI 52)"
* extension[intensityRounding].extension[code] ^short = "ISBI Code"
* extension[intensityRounding].extension[code].valueCoding = IBSICS#52
* extension[intensityRounding].extension[valueString] ^short = "Intensity Rounding"
* extension[intensityRounding].extension[valueString].value[x] only string 
* extension[intensityRounding].extension[valueString].value[x] 1..1

/* 2.7 Boundary Condition */
* extension[boundaryCondition] ^short = "Limit condition"
* extension[boundaryCondition] ^definition = "Limit condition"
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

/*
    ##########################
    # FHIR-OSIRIS <--> IBSI #
    ##########################
*/

Mapping: FhirOSIRISIBSI-RadiomicsImageFilter
Source: radiomics-image-filters-settings
Target: "RadiomicsImageFilters"
Id: fhir-osiris-ibsi-RadiomicsImageFilters
Title: "Fhir-osiris to ibsi"

* extension[intensityRounding] -> "IBSI 52"

