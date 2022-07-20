Profile: RadiotherapyPlan
Parent: Procedure
Id: RadiotherapyPlan
Title: "Radiotherapy Plan"
Description: "Padiotherapy Plan"

* extension contains
    radiotherapy-plan-settings named radiotherapy-plan-settings 0..* MS

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

* basedOn ^short = "" 
//* basedOn only Reference(radiotherapy-plan)


Extension: RadiotherapyPlanSettings
Id: radiotherapy-plan-settings
Title: "Radiotherapy Plan Description"
Description: "Radiotherapy Plan Description"
* extension contains
    radiotherapyModality  1..1 MS and
    radiotherapyTechnique 1..1 MS and
    treatmentMachineName 1..1 MS and
    totalDoseDelivered 1..1 MS and
    deliveredFraction 1..1 MS and
    reasonReplanification 1..1 MS

* extension[radiotherapyModality].value[x] only CodeableConcept
* extension[radiotherapyModality].valueCodeableConcept from DICOMod (required)
* extension[radiotherapyModality] ^short = ""


* extension[radiotherapyTechnique].value[x] only CodeableConcept
* extension[radiotherapyTechnique].valueCodeableConcept from DICOMTech (required)
* extension[radiotherapyTechnique] ^short = ""

* extension[treatmentMachineName].value[x] only string
* extension[treatmentMachineName] ^short = "Treatment Machine Name. dicomTag(300A,00B2)"

* extension[totalDoseDelivered].value[x] only unsignedInt
* extension[totalDoseDelivered] ^short = ""

* extension[deliveredFraction].value[x] only unsignedInt
* extension[deliveredFraction] ^short = ""

* extension[reasonReplanification].value[x] only string
* extension[reasonReplanification] ^short = ""