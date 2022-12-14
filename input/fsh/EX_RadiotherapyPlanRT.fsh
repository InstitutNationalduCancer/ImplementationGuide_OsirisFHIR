Instance: fhir-osiris-example-RadiotherapyPlan-1
InstanceOf: RadiotherapyPlan
Description: "Example of instance from OSIRIS_pivot_PlanRT.csv, OSIRIS_pivot_EquipmentRT.csv and OSIRIS_pivot_ModalityAndTechniqueRT.csv"

* identifier.value = "1"
* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-RadiotherapyPhase-1)
* status = #completed
* category = RadiotherapyCS#planned
* performedPeriod.start = "2018-08-15"
* performedPeriod.end  = "2018-11-25"
* extension[radiotherapy-plan-settings].extension[numberOfFractions].valueUnsignedInt = 16
/* extension[radiotherapy-plan-settings].extension[reasonReplanification].valueCodeableConcept.coding = RadiotherapyReasonReplanification#1259231006 */
* extension[radiotherapy-plan-settings].extension[radiotherapyModality].valueCodeableConcept.coding = MCODEMODALITY#1156506007
* extension[radiotherapy-plan-settings].extension[radiotherapyTechnique].valueCodeableConcept.coding = MCODETECHNIQUE#1162782007
/* extension[radiotherapy-plan-settings].extension[treatmentMachineName] - optionnal */
* extension[radiotherapy-plan-settings].extension[manufacturerEquipment].valueString = "Elekta"
* extension[radiotherapy-plan-settings].extension[modelEquipment].valueString = "Elekta Infinity"

Instance: fhir-osiris-example-RadiotherapyPlan-2
InstanceOf: RadiotherapyPlan
Description: "Example of instance from OSIRIS_pivot_PlanRT.csv, OSIRIS_pivot_EquipmentRT.csv and OSIRIS_pivot_ModalityAndTechniqueRT.csv"

* identifier.value = "2"
* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-RadiotherapyPhase-2)
* status = #completed
* category = RadiotherapyCS#planned
* performedPeriod.start = "2018-11-25"
* performedPeriod.end  = "2018-12-25"
* extension[radiotherapy-plan-settings].extension[numberOfFractions].valueUnsignedInt = 4
/* extension[radiotherapy-plan-settings].extension[reasonReplanification].valueCodeableConcept.coding = RadiotherapyReasonReplanification#1259231006 */
* extension[radiotherapy-plan-settings].extension[radiotherapyModality].valueCodeableConcept.coding = MCODEMODALITY#45643008
* extension[radiotherapy-plan-settings].extension[radiotherapyTechnique].valueCodeableConcept.coding = MCODETECHNIQUE#1162782007
/* extension[radiotherapy-plan-settings].extension[treatmentMachineName] - optionnal */
* extension[radiotherapy-plan-settings].extension[manufacturerEquipment].valueString = "Elekta"
* extension[radiotherapy-plan-settings].extension[modelEquipment].valueString = "Elekta Infinity"

Instance: fhir-osiris-example-RadiotherapyPlan-3
InstanceOf: RadiotherapyPlan
Description: "Example of instance from OSIRIS_pivot_PlanRT.csv, OSIRIS_pivot_EquipmentRT.csv and OSIRIS_pivot_ModalityAndTechniqueRT.csv"

* identifier.value = "3"
* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-RadiotherapyPhase-3)
* status = #completed
* category = RadiotherapyCS#planned
* performedPeriod.start = "2018-09-15"
* performedPeriod.end  = "2018-12-25"
* extension[radiotherapy-plan-settings].extension[numberOfFractions].valueUnsignedInt = 16
/* extension[radiotherapy-plan-settings].extension[reasonReplanification].valueCodeableConcept.coding = RadiotherapyReasonReplanification#1259231006 */
* extension[radiotherapy-plan-settings].extension[radiotherapyModality].valueCodeableConcept.coding = MCODEMODALITY#1156506007
* extension[radiotherapy-plan-settings].extension[radiotherapyTechnique].valueCodeableConcept.coding = MCODETECHNIQUE#1162782007
/* extension[radiotherapy-plan-settings].extension[treatmentMachineName] - optionnal */
* extension[radiotherapy-plan-settings].extension[manufacturerEquipment].valueString = "Elekta"
* extension[radiotherapy-plan-settings].extension[modelEquipment].valueString = "Elekta Infinity"

Instance: fhir-osiris-example-RadiotherapyPlan-4
InstanceOf: RadiotherapyPlan
Description: "Example of instance from OSIRIS_pivot_PlanRT.csv, OSIRIS_pivot_EquipmentRT.csv and OSIRIS_pivot_ModalityAndTechniqueRT.csv"

* identifier.value = "4"
* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-RadiotherapyPhase-4)
* status = #completed
* category = RadiotherapyCS#delivred
* performedPeriod.start = "2018-08-15"
* performedPeriod.end  = "2018-09-25"
* extension[radiotherapy-plan-settings].extension[numberOfFractions].valueUnsignedInt = 3
* extension[radiotherapy-plan-settings].extension[reasonReplanification].valueCodeableConcept.coding = SnomedRequestedCS#1259231006 
* extension[radiotherapy-plan-settings].extension[radiotherapyModality].valueCodeableConcept.coding = MCODEMODALITY#1156506007
* extension[radiotherapy-plan-settings].extension[radiotherapyTechnique].valueCodeableConcept.coding = MCODETECHNIQUE#1162782007
/* extension[radiotherapy-plan-settings].extension[treatmentMachineName] - optionnal */
* extension[radiotherapy-plan-settings].extension[manufacturerEquipment].valueString = "Elekta"
* extension[radiotherapy-plan-settings].extension[modelEquipment].valueString = "Elekta Infinity"

Instance: fhir-osiris-example-RadiotherapyPlan-5
InstanceOf: RadiotherapyPlan
Description: "Example of instance from OSIRIS_pivot_PlanRT.csv, OSIRIS_pivot_EquipmentRT.csv and OSIRIS_pivot_ModalityAndTechniqueRT.csv"

* identifier.value = "5"
* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-RadiotherapyPhase-4)
* status = #completed
* category = RadiotherapyCS#delivred
* performedPeriod.start = "2018-09-25"
* performedPeriod.end  = "2018-11-25"
* extension[radiotherapy-plan-settings].extension[numberOfFractions].valueUnsignedInt = 13
/* extension[radiotherapy-plan-settings].extension[reasonReplanification].valueCodeableConcept.coding = MCODERERadiotherapyReasonReplanification#PLANIFICATION#1259231006 */
* extension[radiotherapy-plan-settings].extension[radiotherapyModality].valueCodeableConcept.coding = MCODEMODALITY#1156506007
* extension[radiotherapy-plan-settings].extension[radiotherapyTechnique].valueCodeableConcept.coding = MCODETECHNIQUE#1162782007
/* extension[radiotherapy-plan-settings].extension[treatmentMachineName] - optionnal */
* extension[radiotherapy-plan-settings].extension[manufacturerEquipment].valueString = "Elekta"
* extension[radiotherapy-plan-settings].extension[modelEquipment].valueString = "Elekta Infinity"

Instance: fhir-osiris-example-RadiotherapyPlan-6
InstanceOf: RadiotherapyPlan
Description: "Example of instance from OSIRIS_pivot_PlanRT.csv, OSIRIS_pivot_EquipmentRT.csv and OSIRIS_pivot_ModalityAndTechniqueRT.csv"

* identifier.value = "6"
* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-RadiotherapyPhase-5)
* status = #completed
* category = RadiotherapyCS#delivred
* performedPeriod.start = "2018-11-25"
* performedPeriod.end  = "2018-12-25"
* extension[radiotherapy-plan-settings].extension[numberOfFractions].valueUnsignedInt = 4
/* extension[radiotherapy-plan-settings].extension[reasonReplanification].valueCodeableConcept.coding = RadiotherapyReasonReplanification#1259231006 */
* extension[radiotherapy-plan-settings].extension[radiotherapyModality].valueCodeableConcept.coding = MCODEMODALITY#45643008
* extension[radiotherapy-plan-settings].extension[radiotherapyTechnique].valueCodeableConcept.coding = MCODETECHNIQUE#1162782007
/* extension[radiotherapy-plan-settings].extension[treatmentMachineName] - optionnal */
* extension[radiotherapy-plan-settings].extension[manufacturerEquipment].valueString = "Elekta"
* extension[radiotherapy-plan-settings].extension[modelEquipment].valueString = "Elekta Infinity"

Instance: fhir-osiris-example-RadiotherapyPlan-7
InstanceOf: RadiotherapyPlan
Description: "Example of instance from OSIRIS_pivot_PlanRT.csv, OSIRIS_pivot_EquipmentRT.csv and OSIRIS_pivot_ModalityAndTechniqueRT.csv"

* identifier.value = "7"
* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-RadiotherapyPhase-6)
* status = #completed
* category = RadiotherapyCS#delivred
* performedPeriod.start = "2018-09-15"
* performedPeriod.end  = "2018-12-25"
* extension[radiotherapy-plan-settings].extension[numberOfFractions].valueUnsignedInt = 16
/* extension[radiotherapy-plan-settings].extension[reasonReplanification].valueCodeableConcept.coding = RadiotherapyReasonReplanification#1259231006 */
* extension[radiotherapy-plan-settings].extension[radiotherapyModality].valueCodeableConcept.coding = MCODEMODALITY#1156506007
* extension[radiotherapy-plan-settings].extension[radiotherapyTechnique].valueCodeableConcept.coding = MCODETECHNIQUE#1162782007
/* extension[radiotherapy-plan-settings].extension[treatmentMachineName] - optionnal */
* extension[radiotherapy-plan-settings].extension[manufacturerEquipment].valueString = "Elekta"
* extension[radiotherapy-plan-settings].extension[modelEquipment].valueString = "Elekta Infinity"