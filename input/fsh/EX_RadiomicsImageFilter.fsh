Instance: fhir-osiris-example-RadiomicsImageFilter
InstanceOf: RadiomicsImageFilters
Description: "Example of Patient from OSIRIS_pivot_RadiomicsImageFilter.csv"

* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-imagingstudy)
* focus = Reference(fhir-osiris-example-ROISegmentation)
* identifier.value = "1"
* status = #final // Not in pivot file but obligatory
<<<<<<< HEAD
=======
* code = #IBSI // Not in pivot file but obligatory
>>>>>>> 28db97433e144dfee8c41a113a14ad5a332bff08
* extension[radiomics-image-filters-settings].extension[softwareName].valueString = "PyRadiomics"
* extension[radiomics-image-filters-settings].extension[softwareVersion].valueString = "v3.0.1"
* extension[radiomics-image-filters-settings].extension[filterMethod].valueCoding = RadiomicsCS#Mean
* extension[radiomics-image-filters-settings].extension[filterType].valueCoding = RadiomicsCS#Volume3D
* extension[radiomics-image-filters-settings].extension[filterInterpolation].valueCoding = RadiomicsCS#None
* extension[radiomics-image-filters-settings].extension[intensityRounding].extension[valueString].valueString = "Linear"
* extension[radiomics-image-filters-settings].extension[boundaryCondition].valueCoding = RadiomicsCS#ZeroPadding
