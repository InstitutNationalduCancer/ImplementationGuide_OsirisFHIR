Instance: fhir-osiris-example-RadiomicsCriteria
InstanceOf: RadiomicsCriteria
Description: "Example of Patient from OSIRIS_pivot_RadiomicsCriteria.csv"

* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-imagingstudy)
* focus = Reference(fhir-osiris-example-ROISegmentation)
* identifier.value = "1"
* status = #final // Not in pivot file but obligatory
* extension[radiomics-criteria-settings].extension[softwareName].extension[valueString].valueString = "PyRadiomics"
* extension[radiomics-criteria-settings].extension[softwareVersion].extension[valueString].valueString = "v3.0.1"
* code = #IBSI // Not in pivot file but obligatory
* extension[radiomics-criteria-settings].extension[localizationMethod].valueCoding = RadiomicsCS#Local
* extension[radiomics-criteria-settings].extension[windowMatrix].valueString = "5x5x5"

