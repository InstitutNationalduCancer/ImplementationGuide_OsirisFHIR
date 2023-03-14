Instance: fhir-osiris-example-RadiomicsImageFilter
InstanceOf: RadiomicsImageFilters
Description: "Example of Patient from OSIRIS_pivot_RadiomicsImageFilter.csv"

* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-imagingstudy)
* status = #final // Not in pivot file but obligatory
* note.text = "1.3.12.2.1107.5.8.15.131606.30000020020620243975600000856"
* extension[radiomics-image-filters-settings].extension[softwareName].valueString = "PyRadiomics"
* extension[radiomics-image-filters-settings].extension[softwareVersion].valueString = "v3.0.1"
* extension[radiomics-image-filters-settings].extension[filterMethod].valueString = "mean"
* extension[radiomics-image-filters-settings].extension[filterType].valueString = "3D volume"
* extension[radiomics-image-filters-settings].extension[filterInterpolation].valueString = "None"
* extension[radiomics-image-filters-settings].extension[intensityRounding].extension[valueString].valueString = "linear"
* extension[radiomics-image-filters-settings].extension[boundaryCondition].valueString = "zero padding"
