Instance: fhir-osiris-example-RadiotherapyPhase-1
InstanceOf: RadiotherapyPhase
Description: "Example of instance from OSIRIS_pivot_PhaseRT.csv, OSIRIS_pivot_EnergyOrIsotopeRT.csv and OSIRIS_pivot_ModalityAndTechniqueRT.csv"

* identifier.value = "1"
* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-RadiotherapyCourse-1)
* status = #completed
* category = RadiotherapyCS#planned
* performedPeriod.start = "2018-08-15"
* performedPeriod.end  = "2018-11-25"
* extension[radiotherapy-phase-settings].extension[numberOfFractions].valueUnsignedInt = 16
* extension[radiotherapy-phase-settings].extension[algorithmName].valueString  = "" /* obligatory but missing in the pivot file*/
* extension[radiotherapy-phase-settings].extension[radiotherapyModality].valueCodeableConcept.coding = MCODEMODALITY#1156506007
* extension[radiotherapy-phase-settings].extension[radiotherapyTechnique].valueCodeableConcept.coding = MCODETECHNIQUE#1162782007
/* extension[radiotherapy-phase-settings].extension[treatmentMachineName] - optionnal */
* extension[radiotherapy-phase-settings].extension[quantityEnergyOrIsotope].valueQuantity.value = 0 /* obligatory but missing in the pivot file - fictive value*/
/* extension[radiotherapy-phase-settings].extension[nameEnergyOrIsotope] - optionnal */

Instance: fhir-osiris-example-RadiotherapyPhase-2
InstanceOf: RadiotherapyPhase
Description: "Example of instance from OSIRIS_pivot_PhaseRT.csv, OSIRIS_pivot_EnergyOrIsotopeRT.csv and OSIRIS_pivot_ModalityAndTechniqueRT.csv"

* identifier.value = "2"
* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-RadiotherapyCourse-1)
* status = #completed
* category = RadiotherapyCS#planned
* performedPeriod.start = "2018-11-25"
* performedPeriod.end  = "2018-12-25"
* extension[radiotherapy-phase-settings].extension[numberOfFractions].valueUnsignedInt = 4
* extension[radiotherapy-phase-settings].extension[algorithmName].valueString = "" /* obligatory but missing in the pivot file*/
* extension[radiotherapy-phase-settings].extension[radiotherapyModality].valueCodeableConcept.coding = MCODEMODALITY#45643008
* extension[radiotherapy-phase-settings].extension[radiotherapyTechnique].valueCodeableConcept.coding = MCODETECHNIQUE#1162782007
/* extension[radiotherapy-phase-settings].extension[treatmentMachineName] - optionnal */
* extension[radiotherapy-phase-settings].extension[quantityEnergyOrIsotope].valueQuantity.value = 0 /* obligatory but missing in the pivot file - fictive value*/
/* extension[radiotherapy-phase-settings].extension[nameEnergyOrIsotope] - optionnal */

Instance: fhir-osiris-example-RadiotherapyPhase-3
InstanceOf: RadiotherapyPhase
Description: "Example of instance from OSIRIS_pivot_PhaseRT.csv, OSIRIS_pivot_EnergyOrIsotopeRT.csv and OSIRIS_pivot_ModalityAndTechniqueRT.csv"

* identifier.value = "3"
* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-RadiotherapyCourse-1)
* status = #completed
* category = RadiotherapyCS#planned
* performedPeriod.start = "2018-09-15"
* performedPeriod.end  = "2018-12-25"
* extension[radiotherapy-phase-settings].extension[numberOfFractions].valueUnsignedInt = 16
* extension[radiotherapy-phase-settings].extension[algorithmName].valueString = "" /* obligatory but missing in the pivot file*/
* extension[radiotherapy-phase-settings].extension[radiotherapyModality].valueCodeableConcept.coding = MCODEMODALITY#1156506007
* extension[radiotherapy-phase-settings].extension[radiotherapyTechnique].valueCodeableConcept.coding = MCODETECHNIQUE#1162782007
/* extension[radiotherapy-phase-settings].extension[treatmentMachineName] - optionnal */
* extension[radiotherapy-phase-settings].extension[quantityEnergyOrIsotope].valueQuantity.value = 0 /* obligatory but missing in the pivot file - fictive value*/
/* extension[radiotherapy-phase-settings].extension[nameEnergyOrIsotope] - optionnal */

Instance: fhir-osiris-example-RadiotherapyPhase-4
InstanceOf: RadiotherapyPhase
Description: "Example of instance from OSIRIS_pivot_PhaseRT.csv, OSIRIS_pivot_EnergyOrIsotopeRT.csv and OSIRIS_pivot_ModalityAndTechniqueRT.csv"

* identifier.value = "4"
* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-RadiotherapyCourse-2)
* status = #completed
* category = RadiotherapyCS#delivred
* performedPeriod.start = "2018-08-15"
* performedPeriod.end  = "2018-11-25"
* extension[radiotherapy-phase-settings].extension[numberOfFractions].valueUnsignedInt = 16
* extension[radiotherapy-phase-settings].extension[algorithmName].valueString = "" /* obligatory but missing in the pivot file*/
* extension[radiotherapy-phase-settings].extension[radiotherapyModality].valueCodeableConcept.coding = MCODEMODALITY#1156506007
* extension[radiotherapy-phase-settings].extension[radiotherapyTechnique].valueCodeableConcept.coding = MCODETECHNIQUE#1162782007
/* extension[radiotherapy-phase-settings].extension[treatmentMachineName] - optionnal */
* extension[radiotherapy-phase-settings].extension[quantityEnergyOrIsotope].valueQuantity.value = 0 /* obligatory but missing in the pivot file - fictive value*/
/* extension[radiotherapy-phase-settings].extension[nameEnergyOrIsotope] - optionnal */

Instance: fhir-osiris-example-RadiotherapyPhase-5
InstanceOf: RadiotherapyPhase
Description: "Example of instance from OSIRIS_pivot_PhaseRT.csv, OSIRIS_pivot_EnergyOrIsotopeRT.csv and OSIRIS_pivot_ModalityAndTechniqueRT.csv"

* identifier.value = "5"
* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-RadiotherapyCourse-2)
* status = #completed
* category = RadiotherapyCS#delivred
* performedPeriod.start = "2018-11-25"
* performedPeriod.end  = "2018-12-25"
* extension[radiotherapy-phase-settings].extension[numberOfFractions].valueUnsignedInt = 4
* extension[radiotherapy-phase-settings].extension[algorithmName].valueString = "" /* obligatory but missing in the pivot file*/
* extension[radiotherapy-phase-settings].extension[radiotherapyModality].valueCodeableConcept.coding = MCODEMODALITY#45643008
* extension[radiotherapy-phase-settings].extension[radiotherapyTechnique].valueCodeableConcept.coding = MCODETECHNIQUE#1162782007
/* extension[radiotherapy-phase-settings].extension[treatmentMachineName] - optionnal */
* extension[radiotherapy-phase-settings].extension[quantityEnergyOrIsotope].valueQuantity.value = 0 /* obligatory but missing in the pivot file - fictive value*/
/* extension[radiotherapy-phase-settings].extension[nameEnergyOrIsotope] - optionnal */

Instance: fhir-osiris-example-RadiotherapyPhase-6
InstanceOf: RadiotherapyPhase
Description: "Example of instance from OSIRIS_pivot_PhaseRT.csv, OSIRIS_pivot_EnergyOrIsotopeRT.csv and OSIRIS_pivot_ModalityAndTechniqueRT.csv"

* identifier.value = "6"
* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-RadiotherapyCourse-6)
* status = #completed
* category = RadiotherapyCS#delivred
* performedPeriod.start = "2018-09-15"
* performedPeriod.end  = "2018-12-25"
* extension[radiotherapy-phase-settings].extension[numberOfFractions].valueUnsignedInt = 16
* extension[radiotherapy-phase-settings].extension[algorithmName].valueString = "" /* obligatory but missing in the pivot file*/
* extension[radiotherapy-phase-settings].extension[radiotherapyModality].valueCodeableConcept.coding = MCODEMODALITY#1156506007
* extension[radiotherapy-phase-settings].extension[radiotherapyTechnique].valueCodeableConcept.coding = MCODETECHNIQUE#1162782007
/* extension[radiotherapy-phase-settings].extension[treatmentMachineName] - optionnal */
* extension[radiotherapy-phase-settings].extension[quantityEnergyOrIsotope].valueQuantity.value = 0 /* obligatory but missing in the pivot file - fictive value*/
/* extension[radiotherapy-phase-settings].extension[nameEnergyOrIsotope] - optionnal */

