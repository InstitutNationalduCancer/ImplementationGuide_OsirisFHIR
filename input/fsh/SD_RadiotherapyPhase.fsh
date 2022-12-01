Profile: RadiotherapyPhase
Parent: Procedure
Id: radiotherapy-phase
Title: "Radiotherapy Phase"
Description: "Summary of the radiotherapy phases planned or delivered to a patient"

* extension contains
    radiotherapy-phase-settings named radiotherapy-phase-settings 0..* MS 

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

* partOf ^short = "Should Reference a Radiotherapy Treatment Course" 
* partOf only Reference(radiotherapy-course-summary)
* partOf 1..1


Extension: RadiotherapyPhaseSettings
Id: radiotherapy-phase-settings
Title: "Radiotherapy Phase Description"
Description: "Radiotherapy Phase Description"
* extension contains
    numberOfFractions 1..1 MS and
    algorithmName 1..1 MS and
    radiotherapyModality  1..1 MS and
    radiotherapyTechnique 1..1 MS and
    treatmentMachineName 0..1 MS and
    quantityEnergyOrIsotope 1..1 MS and
    nameEnergyOrIsotope 0..1 MS
  

* extension[numberOfFractions].value[x] only unsignedInt
* extension[numberOfFractions] ^short = "Number of fractions"

* extension[algorithmName].value[x] only string
* extension[algorithmName] ^short = "Name of algorithm"

* extension[radiotherapyModality].value[x] only CodeableConcept
* extension[radiotherapyModality].valueCodeableConcept from MCODEMODALITY (required)
* extension[radiotherapyModality] ^short = "Modality of the radiotherapy procedure"

* extension[radiotherapyTechnique].value[x] only CodeableConcept /* To check after answer, code in pivot without nomenclature specified */
* extension[radiotherapyTechnique].valueCodeableConcept from MCODETECHNIQUE (required)
* extension[radiotherapyTechnique] ^short = "Technique of the radiotherapy procedure"

* extension[treatmentMachineName].value[x] only string
* extension[treatmentMachineName] ^short = "Treatment Machine Name"

* extension[quantityEnergyOrIsotope].value[x] only Quantity
* extension[quantityEnergyOrIsotope] ^short = "Quantity"
* extension[quantityEnergyOrIsotope] ^definition = "Energy spectrum of a radiation characterized by a maximum value. For electrons, the maximum energy is given in MeV. For photons, the maximum acceleration voltage is given in MV or kV, although these are not energy units."

* extension[nameEnergyOrIsotope].value[x] only string
* extension[nameEnergyOrIsotope] ^short = "Isotope Name"
* extension[nameEnergyOrIsotope] ^definition = "The isotope used for radiotherapy"

/*
    ##########################
    # FHIR-OSIRIS <--> OSIRIS #
    ##########################
*/

Mapping: FhirOSIRIS-RadiotherapyPhase
Source: radiotherapy-phase
Target: "RadiotherapyPhase"
Id: fhir-osiris-RadiotherapyPhase
Title: "Fhir-osiris to osiris"

* subject -> "OSIRIS_pivot_PhaseRT.Patient_Id	"
* partOf -> "OSIRIS_pivot_PhaseRT.CourseRT_Ref	"
* category -> "OSIRIS_pivot_PhaseRT.Phase_Type"
* performedPeriod.start -> "OSIRIS_pivot_PhaseRT.Phase_StartDate"
* performedPeriod.end -> "OSIRIS_pivot_PhaseRT.Phase_EndDate"
* extension[radiotherapy-phase-settings].extension[numberOfFractions] -> "OSIRIS_pivot_PhaseRT.Phase_NumberOfFractions"
* extension[radiotherapy-phase-settings].extension[algorithmName] -> "OSIRIS_pivot_PhaseRT.Phase_AlgorithmName"
* extension[radiotherapy-phase-settings].extension[radiotherapyModality] -> "OSIRIS_pivot_ModalityAndTechniqueRT.ModalityAndTechnique_Modality"
* extension[radiotherapy-phase-settings].extension[radiotherapyTechnique] -> "OSIRIS_pivot_ModalityAndTechniqueRT.ModalityAndTechnique_Technique"
* extension[radiotherapy-phase-settings].extension[treatmentMachineName] -> "OSIRIS_pivot_ModalityAndTechniqueRT.ModalityAndTechnique_TreatmentMachinePlanned"
* extension[radiotherapy-phase-settings].extension[quantityEnergyOrIsotope] -> "OSIRIS_pivot_EnergyOrIsotopeRT.EnergyOrIsotope_Quantity"
* extension[radiotherapy-phase-settings].extension[nameEnergyOrIsotope] -> "OSIRIS_pivot_EnergyOrIsotopeRT.EnergyOrIsotope_IsotopeName"

/*
    #############################
    # FHIR-OSIRIS <--> DICOM TAG #
    #############################
*/

Mapping: FhirOSIRIS-DicomTag-RadiotherapyPhase
Source: radiotherapy-phase
Target: "RadiotherapyPhase"
Id: fhir-osiris-dicomTag-RadiotherapyPhase
Title: "Fhir-osiris to Dicom Tag"

* extension[radiotherapy-phase-settings].extension[numberOfFractions] -> "Number Of Fractions Planned (300A,0078)"
* extension[radiotherapy-phase-settings].extension[algorithmName] -> "Algorithm Name (0066,0036)"
* extension[radiotherapy-phase-settings].extension[radiotherapyModality] -> "Radiation Type (300A,00C6)"
* extension[radiotherapy-phase-settings].extension[radiotherapyTechnique] -> "Bean Type (300A,00c4) WHERE Treatment Delivery Type = 'Treatment' (300A,00CE) OR Treatment Protocols (300A,0009)"
* extension[radiotherapy-phase-settings].extension[treatmentMachineName] -> "Treatment Machine Name (300A, 00B2)"
* extension[radiotherapy-phase-settings].extension[quantityEnergyOrIsotope] -> "Nominal Beam Energy (300A, 0114)"

