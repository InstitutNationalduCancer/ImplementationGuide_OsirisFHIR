Instance: fhir-osiris-example-RadiotherapyPlan-1
InstanceOf: RadiotherapyPlan
Description: "Example of instance from OSIRIS_pivot_PlanRT.csv, OSIRIS_pivot_EquipmentRT.csv and OSIRIS_pivot_ModalityAndTechniqueRT.csv"

* subject = Reference(fhir-osiris-example-patient)
* status = #completed
* partOf = Reference(fhir-osiris-example-RadiotherapyPhase-1)
* category = http://hl7.org/fhir/event-status#completed
* performedPeriod.start = "2018-08-15"
* performedPeriod.end = "2018-11-25"
* extension[numberOfFractions].valueUnsignedInt = 16
/* extension[reasonReplanification] = */
* extension[algorithmName].valueString = "Unknown"
/* extension[basedOn].extension[seriesUID] = */
/* extension[basedOn].extension[rtStructUID] = */
* identifier[rtPlanUID].value = "Unknown"
/* extension[doseToVolume].extension[rtDoseUID] = */
* extension[modalityAndTechnique].extension[radiotherapyModality].valueCodeableConcept = MCODEMODALITY#1156506007
* extension[modalityAndTechnique].extension[radiotherapyTechnique].valueCodeableConcept = MCODETECHNIQUE#1162782007
* extension[modalityAndTechnique].extension[radiotherapyTreatmentMachinePlanned].valueString = "Unknown"
* extension[doseToVolume][0].extension[volume].valueReference = Reference(fhir-osiris-example-RadiotherapyVolume-1)
* extension[doseToVolume][0].extension[numberOfFractions].valueUnsignedInt = 16
* extension[doseToVolume][0].extension[totalDose].valueString = "4256"
* extension[doseToVolume][0].extension[fractionDose].valueString = "266"
* extension[doseToVolume][1].extension[volume].valueReference = Reference(fhir-osiris-example-RadiotherapyVolume-2)
* extension[doseToVolume][1].extension[numberOfFractions].valueUnsignedInt  = 16
* extension[doseToVolume][1].extension[totalDose].valueString = "4256"
* extension[doseToVolume][1].extension[fractionDose].valueString = "266"
* extension[doseToVolume][2].extension[volume].valueReference = Reference(fhir-osiris-example-RadiotherapyVolume-3)
* extension[doseToVolume][2].extension[numberOfFractions].valueUnsignedInt  = 16
* extension[doseToVolume][2].extension[totalDose].valueString = "4256"
* extension[doseToVolume][2].extension[fractionDose].valueString = "266"
* extension[energyOrIsotope].extension[quantityEnergyOrIsotope].valueQuantity.value = 999999
* extension[energyOrIsotope].extension[nameEnergyOrIsotope].valueString = "Unknown"
