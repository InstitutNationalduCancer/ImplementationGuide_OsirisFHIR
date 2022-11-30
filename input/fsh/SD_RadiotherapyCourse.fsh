Profile: RadiotherapyCourseSummary
Parent: Procedure
Id: radiotherapy-course-summary
Title: "Radiotherapy course Summary"
Description: "A summary of a course of radiotherapy planned or delivered to a patient"

* extension contains 
      radiotherapy-course-settings named radiotherapy-course-settings 1..1 and
      radiotherapy-course-dose-to-volume named radiotherapy-course-dose-to-volume 1..* MS
    
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


Extension: RadiotherapyCourseDoseToVolume
Id: radiotherapy-course-dose-to-volume
Title: "Radiotherapy Dose To Volume Extension (planned or delivred)"
Description: "Dose to a given radiotherapy volume. This dose can be planned or delivred "
* extension contains
    volume 1..1 MS and
    totalDose 1..1 MS and
    fractionDose 0..1 MS and
    numberOfFraction 0..1 MS

* extension[volume].value[x] only Reference(RadiotherapyVolume)
* extension[volume] ^short = "Volume in the body where radiation was delivered"
* extension[volume] ^definition = "A BodyStructure resource representing volume in the body where radiation was delivered, for example, Chest Wall Lymph Nodes."

* extension[totalDose].value[x] only Quantity /* To check after answer of the group because string in the pdf */
* extension[totalDose].valueQuantity.unit = UCUM#cGy
* extension[totalDose] ^short = "Total Radiation Dose Delivered"
* extension[totalDose] ^definition = "The total amount of radiation delivered to this volume within the scope of this dose delivery, i.e., dose delivered from the Procedure in which this extension is used."


* extension[fractionDose].value[x] only unsignedInt /* To check after answer of the group because string in the pdf */
* extension[fractionDose] ^short = "Expected dose per fraction"
* extension[fractionDose] ^definition = "The expected radiation dose per fraction"

* extension[numberOfFraction].value[x] only unsignedInt
* extension[numberOfFraction] ^short = "Number of fractions"
* extension[numberOfFraction] ^definition = "Number of fractions planned"


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
Target: "RadiomicsCriteria"
Id: fhir-osiris-RadiotherapyCourse
Title: "Fhir-osiris to osiris"

* subject -> "OSIRIS_pivot_CourseRT.Patient_Id"
* category -> "OSIRIS_pivot_CourseRT.Course_Type"
* performed.start -> "OSIRIS_pivot_CourseRT.Course_StartDate"
* performed.end -> "OSIRIS_pivot_CourseRT.Course_EndDate"
* extension[treatmentIntent] -> "OSIRIS_pivot_CourseRT.Course_TreatmentIntent"
* extension[treatmentTerminationReason] -> "OSIRIS_pivot_CourseRT.Course_TerminationReason"
* extension[numberOfSession] -> "OSIRIS_pivot_CourseRT.Course_NumberOfSessions"
* extension[quantityEnergyOrIsotope] -> "OSIRIS_pivot_EnergyOrIsotopeRT.EnergyOrIsotope_Quantity"
* extension[nameEnergyOrIsotope] -> "OSIRIS_pivot_EnergyOrIsotopeRT.EnergyOrIsotope_IsotopeName"
* extension[volume] -> "OSIRIS_pivot_DoseToVolumeRT.VolumeRT_Ref"
* extension[totalDose] -> "OSIRIS_pivot_DoseToVolumeRT.DoseToVolume_TotalDose"
* extension[fractionDose] -> "OSIRIS_pivot_DoseToVolumeRT.DoseToVolume_FractionDose"
* extension[numberOfFraction] -> "OSIRIS_pivot_DoseToVolumeRT.DoseToVolume_NumberOfFractions"

