Profile: RadiotherapyCourseSummary
Parent: Procedure
Id: radiotherapy-course-summary
Title: "Radiotherapy course Summary"
Description: "A summary of a course of radiotherapy delivered to a patient"

* extension contains 
      radiotherapy-course-settings named radiotherapy-course-settings 1..1 and
      RadiotherapyDoseDeliveredToVolume named doseDeliveredToVolume 0..* MS
    
* identifier 1..1
* identifier MS

* category 1..1
* category MS
//* category from typeCourseCS (required)
* category ^short = "Planned or Delivered"

* code = SCT#1217123003
* code 1..1
* code MS
* code ^short = "Identification of the procedure (e.g. Radiotherapy Course of Treatment (regime/therapy) ) " //nomenclature

* status 1..1
* status MS

* subject 1..1 
* subject MS
* subject only Reference(onco-patient)

* bodySite 1..1
* bodySite MS
* bodySite from Topography (required)

* performed[x] only Period

* reasonReference only Reference(tumor-pathology-event)

// ################ 
// ## Extensions ## 
// ################


Extension: RadiotherapyCourseSettings
Id: radiotherapy-course-settings
Title: "Radiotherapy Course Description"
Description: "Radiotherapy Course Description"
* extension contains 
      treatmentIntent 1..1 MS and
      treatmentTerminationReason 1..1 MS and
      treatmentMachineName 1..1 MS and
      radiotherapyModality  1..* MS and
      radiotherapyTechnique 1..* MS and
      radiotherapySessions  1..1 MS


* extension[treatmentIntent].value[x] only CodeableConcept
* extension[treatmentIntent].valueCodeableConcept from radiotherapy-intent (required)
* extension[treatmentIntent] ^short = "CURATIVE, PALLIATIVE, PROPHYLACTIC, VERIFICATION, MACHINE_QA, RESEARCH, SERVICE"

* extension[treatmentTerminationReason].value[x] only CodeableConcept
//* extension[treatmentTerminationReason].valueCodableConcept from NOMENCLATURE (required)
* extension[treatmentTerminationReason] ^short = ""


* extension[radiotherapyModality].value[x] only CodeableConcept
* extension[radiotherapyModality].valueCodeableConcept from DICOMod (required)
* extension[radiotherapyModality] ^short = ""


* extension[radiotherapyTechnique].value[x] only CodeableConcept
* extension[radiotherapyTechnique].valueCodeableConcept from DICOMTech (required)
* extension[radiotherapyTechnique] ^short = ""

* extension[radiotherapySessions].value[x] only unsignedInt
* extension[radiotherapySessions] ^short = ""

* extension[treatmentMachineName].value[x] only string
* extension[treatmentMachineName] ^short = "Treatment Machine Name. dicomTag(300A,00B2)"

Extension: RadiotherapyDoseDeliveredToVolume
Id: mcode-radiotherapy-dose-delivered-to-volume
Title: "Radiotherapy Dose Delivered To Volume Extension"
Description: "Dose delivered to a given radiotherapy volume."
// * insert ExtensionContext(Procedure) - removed as per FHIR-32243
* extension contains
    volume 1..1 MS and
    totalDoseDelivered 0..1 MS and
    fractionsDelivered 0..1 MS
* extension[volume].value[x] only Reference(RadiotherapyVolume)
* extension[totalDoseDelivered].value[x] only Quantity
* extension[totalDoseDelivered].valueQuantity = UCUM#cGy
* extension[fractionsDelivered].value[x] only unsignedInt
// Definitions of in-line extensions
* extension[volume] ^short = "Volume in the body where radiation was delivered"
* extension[volume] ^definition = "A BodyStructure resource representing volume in the body where radiation was delivered, for example, Chest Wall Lymph Nodes."
* extension[totalDoseDelivered] ^short = "Total Radiation Dose Delivered"
* extension[totalDoseDelivered] ^definition = "The total amount of radiation delivered to this volume within the scope of this dose delivery, i.e., dose delivered from the Procedure in which this extension is used."
* extension[fractionsDelivered] ^short = "Number of Fractions Delivered"
* extension[fractionsDelivered] ^definition = "The number of fractions delivered to this volume."
