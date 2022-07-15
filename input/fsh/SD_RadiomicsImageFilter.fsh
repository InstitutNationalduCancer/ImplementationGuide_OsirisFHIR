Profile:        RadiomicsImageFilters
Parent:         Observation
Id:             radiomics-Image-filters
Title:          "Radiomics Image Filters"
Description:    "Filters used for Radiomic Analysis"

* extension contains radiomics-image-filters-settings named radiomics-image-filters-settings 1..1

* identifier MS 
* identifier 1..1

* focus MS
* focus 1..1
* focus only Reference(roi-segmentation)

* partOf MS
* partOf 1..1
* partOf only Reference(onco-imagingstudy)


Extension:      RadiomicsImageFiltersSettings
Id:             radiomics-image-filters-settings
Title:          "Radiomics Image Filters Settings"
Description:    "Radiomics Image Filters Settings."
* extension contains
    softwareName 1..1 and
    softwareVersion 1..1 and
    filterName 1..1 and
    filterType 1..1 and
    filterInterpolation 1..1 and
    intensityRounding 1..1 and
    boundaryCondition 1..1
* extension[softwareName] ^short = "Describe which software was used to compute image biomarkers"
* extension[softwareName].value[x] only string
* extension[softwareVersion] ^short = "Describe which software version was used to compute image biomarkers"
* extension[softwareVersion].value[x] only string
* extension[filterName] ^short = "Mean Filter || Laplacian of Gaussian || Laws Kernels || Gabor || Wavelets || Riesz || Simoncelli"
* extension[filterName].value[x] only string
* extension[filterType] ^short = "Slice-wise (2D) || Volume (3D)"
* extension[filterType].value[x] only string
* extension[filterInterpolation] ^short = "Bicubic spline || Tricubic spline || Lagrangian polynomial"
* extension[filterInterpolation].value[x] only string
* extension[intensityRounding] ^short = "nearest integer."
* extension[intensityRounding].value[x] only string
* extension[boundaryCondition] ^short = "zero padding || mirror padding || periodic padding || Constant Value Padding || Nearest Value Padding"
* extension[boundaryCondition].value[x] only string