Instance: fhir-osiris-example-RadiomicsCriteria
InstanceOf: RadiomicsCriteria
Description: "Example of Patient from OSIRIS_pivot_RadiomicsCriteria.csv"

* subject = Reference(fhir-osiris-example-patient)
* hasMember = Reference(fhir-osiris-example-RadiomicsImageFilter)
* focus = Reference(fhir-osiris-example-ROISegmentation)
* identifier.value = "1"
* status = #final // Not in pivot file but obligatory
* extension[radiomics-criteria-settings].extension[softwareName].extension[valueString].valueString = "PyRadiomics"
* extension[radiomics-criteria-settings].extension[softwareVersion].extension[valueString].valueString = "v3.0.1"
* extension[radiomics-criteria-settings].extension[localizationMethod].valueCoding = RadiomicsCS#Global
//* extension[radiomics-criteria-settings].extension[windowMatrix].valueString = "5x5x5" / Not used because localizationMethod is Global
* extension[radiomics-criteria-settings].extension[usedImageFilter].valueString = "None"
* extension[radiomics-criteria-settings].extension[usedImageFilterParameters].valueString = "3x3x3"
* extension[radiomics-criteria-settings].extension[distanceWeighting].extension[valueString].valueString = "None"
* extension[radiomics-criteria-settings].extension[discretisationMethod].extension[valueCoding].valueCoding = RadiomicsCS#FBS
* extension[radiomics-criteria-settings].extension[binSize].extension[valueDecimal].valueDecimal = 12
//* extension[radiomics-criteria-settings].extension[bounds].valueString = "Min-Max" // Not used because discretisationMethod is FBS
* extension[radiomics-criteria-settings].extension[lowestIntensity].extension[valueDecimal].valueDecimal = 0
* extension[radiomics-criteria-settings].extension[biggestIntensity].extension[valueDecimal].valueDecimal = 1
* extension[radiomics-criteria-settings].extension[boundsRangeOfValueAfterDiscretisation].valueString = "0,100"
* extension[radiomics-criteria-settings].extension[spatialResamplingMethod].valueCoding = RadiomicsCS#BicubicSpline
* extension[radiomics-criteria-settings].extension[spatialResamplingValues].valueString = "[1.0, 2.0, 3.0]"
* extension[radiomics-criteria-settings].extension[textureMatrixAggregation]..extension[valueString].valueString = "None"






