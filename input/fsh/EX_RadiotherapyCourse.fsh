Instance: fhir-osiris-example-RadiotherapyCourse-1
InstanceOf: RadiotherapyCourseSummary
Description: "Example of instance from OSIRIS_pivot_CourseRT.csv, OSIRIS_pivot_EnergyOrIsotopeRT.csv, OSIRIS_pivot_DoseToVolumeRT.csv"

* identifier.value = "1"
* subject = Reference(fhir-osiris-example-patient)
* status = #completed
* category = RadiotherapyCS#planned
* performedPeriod.start = "2018-08-15"
* performedPeriod.end  = "2018-12-25"
* extension[radiotherapy-course-settings].extension[treatmentIntent].valueCodeableConcept.coding = #373808002
/* extension[radiotherapy-course-settings].extension[treatmentTerminationReason] / optional and missing in the pivot file */
* extension[radiotherapy-course-settings].extension[numberOfSession].valueUnsignedInt = 36
* extension[radiotherapy-course-settings].extension[quantityEnergyOrIsotope].valueQuantity.value = 0 /* obligatory but missing in the pivot file - fictive value*/
/* extension[radiotherapy-course-settings].extension[nameEnergyOrIsotope] */


Instance: fhir-osiris-example-RadiotherapyCourse-2
InstanceOf: RadiotherapyCourseSummary
Description: "Example of instance from OSIRIS_pivot_CourseRT.csv, OSIRIS_pivot_EnergyOrIsotopeRT.csv, OSIRIS_pivot_DoseToVolumeRT.csv"

* identifier.value = "2"
* subject = Reference(fhir-osiris-example-patient)
* status = #completed
* category = RadiotherapyCS#delivred
* performedPeriod.start = "2018-08-15"
* performedPeriod.end  = "2018-12-25"
* extension[radiotherapy-course-settings].extension[treatmentIntent].valueCodeableConcept.coding  = #373808002
/* * extension[radiotherapy-course-settings].extension[treatmentTerminationReason] / optional and missing in the pivot file */
* extension[radiotherapy-course-settings].extension[numberOfSession].valueUnsignedInt = 36
* extension[radiotherapy-course-settings].extension[quantityEnergyOrIsotope].valueQuantity.value = 0 /* obligatory but missing in the pivot file - fictive value*/
/* extension[radiotherapy-course-settings].extension[nameEnergyOrIsotope] */



