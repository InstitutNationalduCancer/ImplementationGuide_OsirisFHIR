Instance: fhir-osiris-example-RadiotherapyCourse-1
InstanceOf: RadiotherapyCourseSummary
Description: "Example of instance from OSIRIS_pivot_CourseRT.csv, OSIRIS_pivot_EnergyOrIsotopeRT.csv, OSIRIS_pivot_DoseToVolumeRT.csv"

* subject = Reference(fhir-osiris-example-patient)
* status = #completed
* category = RadiotherapyCS#planned
* performedPeriod.start = "2018-08-15"
* performedPeriod.end  = "2018-12-25"
* extension[treatmentIntent].valueCodeableConcept.coding = #373808002
/* extension[treatmentTerminationReason] / optional and missing in the pivot file */
* extension[numberOfSessions].valueUnsignedInt = 36
* basedOn = Reference(fhir-osiris-example-treatment-radiotherapy)


Instance: fhir-osiris-example-RadiotherapyCourse-2
InstanceOf: RadiotherapyCourseSummary
Description: "Example of instance from OSIRIS_pivot_CourseRT.csv, OSIRIS_pivot_EnergyOrIsotopeRT.csv, OSIRIS_pivot_DoseToVolumeRT.csv"

* subject = Reference(fhir-osiris-example-patient)
* status = #completed
* category = RadiotherapyCS#delivered
* performedPeriod.start = "2018-08-15"
* performedPeriod.end  = "2018-12-25"
* extension[treatmentIntent].valueCodeableConcept.coding  = #373808002
/* extension[treatmentTerminationReason] / optional and missing in the pivot file */
* extension[numberOfSessions].valueUnsignedInt = 36
* basedOn = Reference(fhir-osiris-example-treatment-radiotherapy)



