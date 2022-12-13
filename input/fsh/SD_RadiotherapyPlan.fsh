Profile: RadiotherapyPlan
Parent: Procedure
Id: radiotherapy-plan
Title: "Radiotherapy Plan"
Description: "Radiotherapy plans planned or delivered to a patient"

* extension contains
    radiotherapy-plan-settings named radiotherapy-plan-settings 0..* MS 

* identifier 1..1
* identifier MS

* category 1..1
* category MS
* category ^short = "Planned or Delivered"
* category.coding.code from vs-radiotherapy-category (required)

* code = SCT#302505005
* code 1..1
* code MS
* code ^short = "Radiotherapy"

* subject 1..1 
* subject MS
* subject only Reference(onco-patient)

* performed[x] only Period
* performed[x] 1..1
* performed[x] ^definition = "The start and end period should be extracted from MOSAIQ/ARIA Record and Verify." 

* partOf ^short = "Should Reference a Radiotherapy Treatment Phase" 
* partOf only Reference(radiotherapy-phase)
* partOf 1..1


Extension: RadiotherapyPlanSettings
Id: radiotherapy-plan-settings
Title: "Radiotherapy Plan Description"
Description: "Radiotherapy Plan Description"

* extension contains
    numberOfFractions 1..1 MS and
    reasonReplanification 0..1 MS and
    radiotherapyModality  1..1 MS and
    radiotherapyTechnique 1..1 MS and
    treatmentMachineName 0..1 MS and
    manufacturerEquipment 1..1 MS and
    modelEquipment 1..1 MS
    
* extension[numberOfFractions].value[x] only unsignedInt
* extension[numberOfFractions] ^short = "Number of fractions"
* extension[numberOfFractions] ^definition = "If planned, the number of sessions corresponds to the dicom path: RT Plan/RT Fraction Scheme/Number Of Fractions Planned (300A,0078).
If delivred, the number of sessions should be extracted from MOSAIQ/ARIA Record and Verify."

* extension[reasonReplanification].value[x] only CodeableConcept
* extension[reasonReplanification].valueCodeableConcept from RadiotherapyReasonReplanificationVS (required)
* extension[reasonReplanification] ^short = "Reason for replanning"
* extension[reasonReplanification] ^definition = "The reason for replanning should be extracted from MOSAIQ/ARIA Record and Verify." 

* extension[radiotherapyModality].value[x] only CodeableConcept
* extension[radiotherapyModality].valueCodeableConcept from MCODEMODALITY (required)
* extension[radiotherapyModality] ^short = "Modality of the radiotherapy procedure"
* extension[radiotherapyModality] ^definition = "The modality of the radiotherapy procedure corresponds to the dicom path: RT Plan/RT Beams/Beam Sequence/Radiation Type (300A,00C6)."

* extension[radiotherapyTechnique].value[x] only CodeableConcept /* To check after answer, code in pivot without nomenclature specified */
* extension[radiotherapyTechnique].valueCodeableConcept from MCODETECHNIQUE (required)
* extension[radiotherapyTechnique] ^short = "Technique of the radiotherapy procedure"
* extension[radiotherapyTechnique] ^definition = "The technique of the radiotherapy procedure corresponds to the dicom path: RT Plan/RT Beams/Beam Type (300A,00c4) WHERE Treatment Delivery Type = 'Treatment' (300A,00CE) OR Treatment Protocols (300A,0009)."

* extension[treatmentMachineName].value[x] only string
* extension[treatmentMachineName] ^short = "Treatment Machine Name"
* extension[treatmentMachineName] ^definition = "The name of the treatment machine corresponds to the dicom path: RT Plan/RT Beams/Treatment Machine Name (300A,00B2)."

* extension[manufacturerEquipment].value[x] only string
* extension[manufacturerEquipment] ^short = "The manufacturer of the device to administer the treatment"
* extension[manufacturerEquipment] ^definition = "The manufacturer of the device should be extracted from MOSAIQ/ARIA Record and Verify." 

* extension[modelEquipment].value[x] only string
* extension[modelEquipment] ^short = "The model of the device to administer the treatment"
* extension[modelEquipment] ^definition = "The model of the device corresponds to the dicom path: RT Plan/RT Beams/Beam Sequence/Treatment Machine Name (300A,00B2)."

/*
    ##########################
    # FHIR-OSIRIS <--> OSIRIS #
    ##########################
*/

Mapping: FhirOSIRIS-RadiotherapyPlan
Source: radiotherapy-plan
Target: "RadiotherapyPlan"
Id: fhir-osiris-RadiotherapyPlan
Title: "Fhir-osiris to osiris"

* subject -> "OSIRIS_pivot_PlanRT.Patient_Id"
* partOf -> "OSIRIS_pivot_PlanRT.PlanT_Ref"
* category -> "OSIRIS_pivot_PlanRT.Plan_Type"
* performedPeriod.start -> "OSIRIS_pivot_PlanRT.Plan_StartDate"
* performedPeriod.end -> "OSIRIS_pivot_PlanRT.Plan_EndDate"
* extension[radiotherapy-plan-settings].extension[numberOfFractions] -> "OSIRIS_pivot_PlanRT.Plan_NumberOfFractions"
* extension[radiotherapy-plan-settings].extension[reasonReplanification] -> "OSIRIS_pivot_PlanRT.Plan_ReasonReplanification"
* extension[radiotherapy-plan-settings].extension[radiotherapyModality] -> "OSIRIS_pivot_ModalityAndTechniqueRT.ModalityAndTechnique_Modality"
* extension[radiotherapy-plan-settings].extension[radiotherapyTechnique] -> "OSIRIS_pivot_ModalityAndTechniqueRT.ModalityAndTechnique_Technique"
* extension[radiotherapy-plan-settings].extension[treatmentMachineName] -> "OSIRIS_pivot_ModalityAndTechniqueRT.ModalityAndTechnique_TreatmentMachinePlanned"
* extension[radiotherapy-plan-settings].extension[manufacturerEquipment] -> "OSIRIS_pivot_EquipmentRT.Equipment_Manufacturer"
* extension[radiotherapy-plan-settings].extension[modelEquipment] -> "OSIRIS_pivot_EquipmentRT.Equipment_Model"

/*
    #############################
    # FHIR-OSIRIS <--> DICOM TAG #
    #############################
*/

Mapping: FhirOSIRIS-DicomTag-RadiotherapyPlan
Source: radiotherapy-plan
Target: "RadiotherapyPlan"
Id: fhir-osiris-dicomTag-RadiotherapyPlan
Title: "Fhir-osiris to Dicom Tag"

* extension[radiotherapy-plan-settings].extension[numberOfFractions] -> "Number Of Fractions Planned (300A,0078)"
* extension[radiotherapy-plan-settings].extension[radiotherapyModality] -> "Radiation Type (300A,00C6)"
* extension[radiotherapy-plan-settings].extension[radiotherapyTechnique] -> "Beam Type (300A,00c4) WHERE Treatment Delivery Type = 'Treatment' (300A,00CE) OR Treatment Protocols (300A,0009)"
* extension[radiotherapy-plan-settings].extension[treatmentMachineName] -> "Treatment Machine Name (300A, 00B2)"
<<<<<<< HEAD
* extension[radiotherapy-plan-settings].extension[modelEquipment] -> "Treatment Machine Name (300A,00B2)"
=======
* extension[radiotherapy-plan-settings].extension[modelEquipment] -> "Treatment Machine Name (300A,00B2)"
>>>>>>> b1d5b3c92af27738134f344aca06ca9e3d737708
