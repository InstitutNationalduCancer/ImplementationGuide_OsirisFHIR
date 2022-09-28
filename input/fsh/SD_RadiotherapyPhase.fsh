Profile: RadiotherapyPhase
Parent: Procedure
Id: radiotherapy-phase
Title: "Radiotherapy Phase"
Description: "Summary of the radiotherapy phases planned or delivered to a patient"

* extension contains
    radiotherapy-phase-settings named radiotherapy-phase-settings 0..* MS and
    RadiotherapyDoseDeliveredToVolume named doseDeliveredToVolume 0..* MS


* identifier 1..1
* identifier MS

* category 1..1
* category MS
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

* performed[x] only Period

* reasonReference only Reference(tumor-pathology-event)

* partOf ^short = "Should Reference a Radiotherapy Treatment Course" 
* partOf only Reference(radiotherapy-course-summary)


Extension: RadiotherapyPhaseSettings
Id: radiotherapy-phase-settings
Title: "Radiotherapy Phase Description"
Description: "Radiotherapy Phase Description"
* extension contains
    radiotherapyModality  1..1 MS and
    radiotherapyTechnique 1..1 MS and
    treatmentMachineName 1..1 MS and
    treatmentIsotope 1..1 MS and
    treatmentfractions 1..1 MS

* extension[radiotherapyModality].value[x] only CodeableConcept
* extension[radiotherapyModality].valueCodeableConcept from DICOMod (required)
* extension[radiotherapyModality] ^short = ""


* extension[radiotherapyTechnique].value[x] only CodeableConcept
* extension[radiotherapyTechnique].valueCodeableConcept from DICOMTech (required)
* extension[radiotherapyTechnique] ^short = ""

* extension[treatmentMachineName].value[x] only string
* extension[treatmentMachineName] ^short = "Treatment Machine Name. dicomTag(300A,00B2)"

* extension[treatmentIsotope].value[x] only CodeableConcept
* extension[treatmentIsotope].valueCodeableConcept from RadiotherapyIsotopes (required)
* extension[treatmentIsotope] ^short = ""

* extension[treatmentfractions].value[x] only unsignedInt
* extension[treatmentfractions] ^short = ""
