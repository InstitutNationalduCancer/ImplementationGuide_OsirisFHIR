Profile:        RadiomicsImageFilters
Parent:         Observation
Id:             radiomics-Image-filters
Title:          "Radiomics Image Filters"
Description:    "Filtering parameters used for the imaging analysis"

* extension contains radiomics-image-filters-settings named radiomics-image-filters-settings 1..1

* partOf MS
* partOf 1..1
* partOf only Reference(onco-imagingstudy)
* partOf ^short = "Study of reference"
* partOf ^definition = "Study of reference in the ImagingStudy resource"

* note 1..1
* note ^short = "Series uid of reference"
* note ^definition = "Series uid of reference in the ImagingStudy resource"

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
* extension[softwareName].valueString
* extension[softwareName].valueString 1..1 MS

/* 2.2 Software Version*/
* extension[softwareVersion] ^short = "Version name"
* extension[softwareVersion] ^definition = "Name of the version used"
* extension[softwareVersion].valueString only string
* extension[softwareVersion].valueString 1..1 MS

/* 2.3 Filter Method */
* extension[filterMethod] ^short = "Method of filter: Mean Filter|Laplacian of Gaussian|Laws Kernels|Gabor|Wavelets|Riesz|Simoncelli"
* extension[filterMethod] ^definition = "Method of image filter: Mean Filter|Laplacian of Gaussian|Laws Kernels|Gabor|Wavelets|Riesz|Simoncelli"
* extension[filterMethod].valueString
* extension[filterMethod].valueString  MS

/* 2.4 Filter Type */
* extension[filterType] ^short = "Type of filter: Bicubic spline|Tricubic spline|Lagrangian polynomial"
* extension[filterType] ^definition = "Type of image filter: Bicubic spline|Tricubic spline|Lagrangian polynomial"
* extension[filterType].valueString 
* extension[filterType].valueString  MS

/* 2.5 Interpolation Type */
* extension[filterInterpolation] ^short = "Type of interpolation: Slice-wise (2D)|Volume (3D)"
* extension[filterInterpolation] ^definition = "Type of filter interpolation: Slice-wise (2D)|Volume (3D)"
* extension[filterInterpolation].valueString
* extension[filterInterpolation].valueString MS

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
* extension[intensityRounding].extension[valueString].value[x] 1..1 MS

/* 2.7 Boundary Condition */
* extension[boundaryCondition] ^short = "Limit condition: zero padding|mirror padding|periodic padding|Constant Value Padding|Nearest Value Padding"
* extension[boundaryCondition] ^definition = "Limit condition: zero padding|mirror padding|periodic padding|Constant Value Padding|Nearest Value Padding"
* extension[boundaryCondition].valueString
* extension[boundaryCondition].valueString MS

/*
    ##########################
    # FHIR-OSIRIS <--> OSIRIS #
    ##########################
*/

Mapping: FhirOSIRIS-RadiomicsImageFilter
Source: radiomics-image-filters-settings
Target: "RadiomicsImageFilters"
Id: fhir-osiris-RadiomicsImageFilters
Title: "OSIRIS pivot files"

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
Title: "IBSI (https://ibsi.readthedocs.io/)"

* extension[intensityRounding] -> "IBSI 52"

