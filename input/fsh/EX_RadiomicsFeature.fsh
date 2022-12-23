Instance: fhir-osiris-example-RadiomicsFeature
InstanceOf: RadiomicsFeatures
Description: "Example of Patient from OSIRIS_pivot_RadiomicsFeature.csv"

* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-imagingstudy)
* focus = Reference(fhir-osiris-example-ROISegmentation)
* hasMember = Reference(fhir-osiris-example-RadiomicsCriteria)
* status = 	http://hl7.org/fhir/observation-status#final
* code.coding.code = IBSICS#Q3CK
* code.text = "original_shape_Elongation"
* valueQuantity.value = 0.9124894758560576