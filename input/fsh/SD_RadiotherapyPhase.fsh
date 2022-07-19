Profile: RadiotherapyPhase
Parent: Procedure
Id: radiotherapy-phase
Title: "Radiotherapy Phase"
Description: "Radiotherapy Phase"

* extension contains
    radiotherapy-phase-settings named radiotherapy-phase-settings 0..* MS and
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

* performed[x] only Period

* reasonReference only Reference(tumor-pathology-event)

* basedOn ^short = "Should Reference a Radiotherapy Treatment Plan" // http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-plan" // only Reference(RadiotherapyTreatmentPlan)
//* basedOn only Reference(radiotherapy-plan)

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

//* extension[doseDeliveredToVolume].extension[fractionsDelivered] ^definition = "Record the fractions delivered in this phase in the top-level extension also named fractionDelivered."
//* extension[doseDeliveredToVolume].extension[totalDoseDelivered] ^definition = "The total amount of radiation delivered to this volume within the scope of this phase, not including dose from any other phase. For summary over multiple phases, see Radiotherapy Course Summary."

Extension: RadiotherapyDoseDeliveredToVolume
Id: mcode-radiotherapy-dose-delivered-to-volume
Title: "Radiotherapy Dose Delivered To Volume Extension"
Description: "Dose delivered to a given radiotherapy volume."

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


