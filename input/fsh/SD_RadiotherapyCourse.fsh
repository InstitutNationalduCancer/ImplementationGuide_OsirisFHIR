Profile: RadiotherapyCourseSummary
Parent: Procedure
Id: radiotherapy-course-summary
Title: "Radiotherapy course Summary"
Description: "A summary of a course of radiotherapy planned or delivered to a patient"

* extension contains 
      radiotherapy-course-settings named radiotherapy-course-settings 1..1 
    
* identifier 1..1
* identifier MS

* category 1..1
* category MS
* category ^short = "Planned or Delivered"
* category.coding.code from vs-radiotherapy-category (required)

* code = SCT#1217123003
* code 1..1
* code MS
* code ^short = "Identification of the procedure (e.g. Radiotherapy Course of Treatment (regime/therapy) ) " //nomenclature

* subject 1..1 
* subject MS
* subject only Reference(onco-patient)

* performed[x] only Period
* performed[x] 1..1 

* basedOn only Reference(treatment) /* Missing actually in the pivot file */

/* Missing ref to ImagingStudy */

// ################ 
// ## Extensions ## 
// ################

Extension: RadiotherapyCourseSettings
Id: radiotherapy-course-settings
Title: "Radiotherapy Course Description"
Description: "Radiotherapy Course Description"
* extension contains 
      treatmentIntent 0..1 MS and
      treatmentTerminationReason 0..1 MS and
      numberOfSession  0..1 MS and
      quantityEnergyOrIsotope 1..1 MS and
      nameEnergyOrIsotope 0..1 MS


* extension[treatmentIntent].value[x] only CodeableConcept
* extension[treatmentIntent].valueCodeableConcept from vs-radiotherapy-intent (required)
* extension[treatmentIntent] ^short = "Objective"

* extension[treatmentTerminationReason].value[x] only CodeableConcept 
* extension[treatmentTerminationReason].valueCodeableConcept from vs-radiotherapy-termination-reason (required)
* extension[treatmentTerminationReason] ^short = "Reason for unplanned or premature termination, or normal completion"

* extension[numberOfSession].value[x] only unsignedInt
* extension[numberOfSession] ^short = "Total number of planned treatment"

* extension[quantityEnergyOrIsotope].value[x] only Quantity
* extension[quantityEnergyOrIsotope] ^short = "Quantity"
* extension[quantityEnergyOrIsotope] ^definition = "Energy spectrum of a radiation characterized by a maximum value. For electrons, the maximum energy is given in MeV. For photons, the maximum acceleration voltage is given in MV or kV, although these are not energy units."

* extension[nameEnergyOrIsotope].value[x] only string
* extension[nameEnergyOrIsotope] ^short = "Isotope Name"
* extension[nameEnergyOrIsotope] ^definition = "The isotope used for radiotherapy"





// ################ 
// ## Invariants ## 
// ################
Invariant:   numberOfSession-if-category-planned
Description: "If category.coding.code is planned, then extension[numberOfSession].value[x] MUST be present"
Expression:  "category.coding.code == 'planned' implies extension[numberOfSession].value[x].exists()"
Severity:    #error


/*
    ##########################
    # FHIR-OSIRIS <--> OSIRIS #
    ##########################
*/

Mapping: FhirOSIRIS-RadiotherapyCourse
Source: radiotherapy-course-summary
Target: "RadiotherapyCourse"
Id: fhir-osiris-RadiotherapyCourse
Title: "Fhir-osiris to osiris"

* subject -> "OSIRIS_pivot_CourseRT.Patient_Id"
* category -> "OSIRIS_pivot_CourseRT.Course_Type"
* performedPeriod.start -> "OSIRIS_pivot_CourseRT.Course_StartDate"
* performedPeriod.end -> "OSIRIS_pivot_CourseRT.Course_EndDate"
* extension[radiotherapy-course-settings].extension[treatmentIntent] -> "OSIRIS_pivot_CourseRT.Course_TreatmentIntent"
* extension[radiotherapy-course-settings].extension[treatmentTerminationReason] -> "OSIRIS_pivot_CourseRT.Course_TerminationReason"
* extension[radiotherapy-course-settings].extension[numberOfSession] -> "OSIRIS_pivot_CourseRT.Course_NumberOfSessions"
* extension[radiotherapy-course-settings].extension[quantityEnergyOrIsotope] -> "OSIRIS_pivot_EnergyOrIsotopeRT.EnergyOrIsotope_Quantity"
* extension[radiotherapy-course-settings].extension[nameEnergyOrIsotope] -> "OSIRIS_pivot_EnergyOrIsotopeRT.EnergyOrIsotope_IsotopeName"

/*
    #############################
    # FHIR-OSIRIS <--> DICOM TAG #
    #############################
*/

Mapping: FhirOSIRIS-DicomTag-RadiotherapyCourse
Source: radiotherapy-course-summary
Target: "RadiotherapyCourse"
Id: fhir-osiris-dicomTag-RadiotherapyCourse
Title: "Fhir-osiris to Dicom Tag"

* extension[radiotherapy-course-settings].extension[treatmentIntent] -> "Plan Intent (300A, 000A)"
* extension[radiotherapy-course-settings].extension[numberOfSession] -> "Number Of Fractions Planned (300A,0078)"
* extension[radiotherapy-course-settings].extension[quantityEnergyOrIsotope] -> "Nominal Beam Energy (300A, 0114)"

