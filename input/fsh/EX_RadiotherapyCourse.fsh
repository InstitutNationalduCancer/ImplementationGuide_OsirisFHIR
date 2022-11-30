Instance: fhir-osiris-example-RadiotherapyCourse-1
InstanceOf: RadiotherapyCourseSummary
Description: "Example of instance from OSIRIS_pivot_CourseRT.csv, OSIRIS_pivot_EnergyOrIsotopeRT.csv, OSIRIS_pivot_DoseToVolumeRT.csv"

* identifier = "1"
* subject = Reference(fhir-osiris-example-patient)
* category = RadiotherapyCS#planned
* performed.start = "2018-08-15"
* performed.end  = "2018-12-25"
* extension[radiotherapy-course-settings].extension[treatmentIntent] = #373808002
/* extension[radiotherapy-course-settings].extension[treatmentTerminationReason] / optional and missing in the pivot file */
* extension[radiotherapy-course-settings].extension[numberOfSession] = 36
* extension[radiotherapy-course-settings].extension[quantityEnergyOrIsotope] = "" /* obligatory but missing in the pivot file */
/* extension[radiotherapy-course-settings].extension[nameEnergyOrIsotope] */
* extension[radiotherapy-course-dose-to-volume].extension[volume]
* extension[radiotherapy-course-dose-to-volume].extension[totalDose] 
* extension[radiotherapy-course-dose-to-volume].extension[fractionDose] 
* extension[radiotherapy-course-dose-to-volume].extension[numberOfFraction]

/*Instance: fhir-osiris-example-RadiotherapyCourse-2
InstanceOf: RadiotherapyCourseSummary
Description: "Example of instance from OSIRIS_pivot_CourseRT.csv, OSIRIS_pivot_EnergyOrIsotopeRT.csv, OSIRIS_pivot_DoseToVolumeRT.csv"

* identifier = "2"
* subject = Reference(fhir-osiris-example-patient)
* category = RadiotherapyCS#delivred
* performed.start = "2018-08-15"
* performed.end  = "2018-12-25"
* extension[radiotherapy-course-settings].extension[treatmentIntent] = #373808002
/* * extension[radiotherapy-course-settings].extension[treatmentTerminationReason] / optional and missing in the pivot file */
/* extension[radiotherapy-course-settings].extension[numberOfSession] = 36
* extension[radiotherapy-course-settings].extension[quantityEnergyOrIsotope] = "" /* obligatory but missing in the pivot file */
/* extension[radiotherapy-course-settings].extension[nameEnergyOrIsotope] */
/* extension[radiotherapy-course-dose-to-volume].extension[volume] 
* extension[radiotherapy-course-dose-to-volume].extension[totalDose] 
* extension[radiotherapy-course-dose-to-volume].extension[fractionDose] 
* extension[radiotherapy-course-dose-to-volume].extension[numberOfFraction] */

