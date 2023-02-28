Profile: RadiotherapyPlan
Parent: Procedure
Id: radiotherapy-plan
Title: "Radiotherapy Plan"
Description: "Radiotherapy plans planned or delivered to a patient"

* extension contains
    basedOn named basedOn 0..3 MS and
    doseToVolume named doseToVolume 0..* MS and
    modalityAndTechnique named modalityAndTechnique 0..* MS and
    energyOrIsotope named energyOrIsotope 0..* MS 

/* Item 3.10 */
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on identifier pattern"
* identifier contains rtPlanUID 1..1 MS
* identifier[rtPlanUID] ^short = "UID RT Plan"
* identifier[rtPlanUID] ^definition = "Reference SOP Instance UID of the RT Plan. Dicom Tag (0008,1155)" 
* identifier[rtPlanUID].type = #MR

* subject 1..1 
* subject MS
* subject only Reference(onco-patient)

* partOf ^short = "Should Reference a Radiotherapy Treatment Phase" 
* partOf only Reference(radiotherapy-phase)
* partOf 1..1

/* Item 3.1 */
* category 1..1 
* category MS
* category ^short = "Type (planned or delivered)"
* category ^definition = "Type (planned or delivered)"
* category.coding.code from vs-radiotherapy-category (required)
* category.coding.code 1..1 MS

* code = SnomedCS#1255724003
* code.coding.display = "Radiotherapy treatment plan (regime/therapy)"
* code 1..1
* code MS

/* Item 3.2 */
* extension contains numberOfFractions named numberOfFractions 1..1 MS
* extension[numberOfFractions] ^short = "Number of Fractions"
* extension[numberOfFractions] ^definition = "Number of Fractions. If delivred, it should be extracted from MOSAIQ/ARIA Record and Verify. 
If planned, it corresponds to Dicom Tag (300A,0078)"

* performed[x] only Period
* performed[x] 1..1
* performed[x] ^definition = "The start and end period " 
/* Item 3.3 */
* performedPeriod.start 1..1 MS
* performedPeriod.start ^short = "Start date"
* performedPeriod.start ^definition = "Start date and time. They should be extracted from MOSAIQ/ARIA Record and Verify."
/* Item 3.4 */
* performedPeriod.end 1..1 MS
* performedPeriod.end ^short = "End date"
* performedPeriod.end ^definition = "End date and time. They should be extracted from MOSAIQ/ARIA Record and Verify."

/* Item 3.5 */
* extension contains reasonReplanification named reasonReplanification 0..1 MS
* extension[reasonReplanification] ^short = "Reason Replanification"
* extension[reasonReplanification] ^definition = "Reason Replanification. It should be extracted from MOSAIQ/ARIA Record and Verify."

/* Item 3.6 */
* extension contains algorithmName named algorithmName 1..1 MS
* extension[algorithmName] ^short = "Name of the algorithm"
* extension[algorithmName] ^definition = "Name of the algorithm. Dicom Tag (0066,0036)"

/*
    ##########################
    # EXTENSIONS #
    ##########################
*/ 

Extension: BasedOn
Id: basedOn
Title: "Connection with the imaging module"
Description: "Connection with the imaging module (ImagingStudy and ROI Segmentation)"

* extension contains 
    imagingStudyRef 0..1 MS and
    seriesUID 0..1 MS and
    rtStructUID 0..1 MS 

* extension[imagingStudyRef].value[x] only Reference(onco-imagingstudy)
* extension[imagingStudyRef] ^short = "Imaging Study Reference"
* extension[imagingStudyRef] ^definition = "Imaging Study to which the reference series (UID series) belong"
/* Item 3.7 */
* extension[seriesUID].value[x] only string
* extension[seriesUID] ^short = "UID Image"
* extension[seriesUID] ^definition = "Series Instance UID of the planning image. Dicom Tag (0020,000E)"
/* Item 3.8 */
* extension[rtStructUID].value[x] only Reference(roi-segmentation)
* extension[rtStructUID] ^short = "UID RT Structure Set"
* extension[rtStructUID] ^definition = "SOP reference Instance UID of RT Structure Set. Dicom Tag (0008,1155)"

Extension:  ReasonReplanification
Id: reasonReplanification
Title: "Reason Replanification"
Description: "Reason Replanification"
* value[x] only CodeableConcept
* valueCodeableConcept from RadiotherapyReasonReplanificationVS (required)

Extension:  AlgorithmName
Id: algorithmName
Title: "Algorith mName"
Description: "Algorith mName"
* value[x] only string

Extension: DoseToVolume
Id: doseToVolume
Title: "Dose To Volume"
Description: "Dose To Volume"

* extension contains
    volume 1..* MS and
    fractionDose 1..1 MS and
    numberOfFractions 1..1 MS and
    totalDose 1..1 MS and
    rtDoseUID 0..1 MS

* extension[volume].value[x] only Reference(radiotherapy-volume)
* extension[volume] ^short = "Volume targeted"
* extension[volume] ^definition = "The volume targeted by the dose."
* extension[volume].value[x] 1..1 MS

/* Item 5.1 */
* extension[fractionDose].value[x] only string
* extension[fractionDose] ^short = "Expected dose per fraction"
* extension[fractionDose] ^definition = "Expected radiation dose per fraction. The division numberOfFractions/totalDose must be done"
* extension[fractionDose].value[x] 1..1 MS

/* Item 5.2 */
* extension[numberOfFractions].value[x] only unsignedInt
* extension[numberOfFractions] ^short = "Number of fractions"
* extension[numberOfFractions] ^definition = "Number of fractions expected. Dicom Tag (300A,0078)."
* extension[numberOfFractions].value[x] 1..1 MS

/* Item 5.3 */
* extension[totalDose].value[x] only string
* extension[totalDose] ^short = "Total Dose"
* extension[totalDose] ^definition = "The total amount of radiation delivered to this volume. Dicom Tag (300A, 0026). If delivred, it should be extracted from MOSAIQ/ARIA Record and Verify"
* extension[totalDose].value[x] 1..1 MS

/* Item 3.9 */
* extension[rtDoseUID].value[x] only string
* extension[rtDoseUID] ^short = "UID RT Dose"
* extension[rtDoseUID] ^definition = "Reference SOP Instance UID of the RT Plan"

Extension: ModalityAndTechnique
Id: modalityAndTechnique
Title: "Modality And Technique"
Description: "Modality And Technique"

* extension contains
    radiotherapyModality  1..1 MS and
    radiotherapyTechnique 1..1 MS and
    radiotherapyTreatmentMachinePlanned 0..1 MS

/* Item 6.2 */
* extension[radiotherapyModality].value[x] only CodeableConcept
* extension[radiotherapyModality].valueCodeableConcept from MCODEMODALITY (required)
* extension[radiotherapyModality] ^short = "Modality"
* extension[radiotherapyModality] ^definition = "Modality of the radiotherapy procedure. Dicom Tag (300A,00C6)."
* extension[radiotherapyModality].value[x] 1..1 MS

/* Item 6.1 */
* extension[radiotherapyTechnique].value[x] only CodeableConcept
* extension[radiotherapyTechnique].valueCodeableConcept from MCODETECHNIQUE (required)
* extension[radiotherapyTechnique] ^short = "Technique"
* extension[radiotherapyTechnique] ^definition = "Technique of the radiotherapy procedure. Dicom Tag (300A,0009)."
* extension[radiotherapyTechnique].value[x] 1..1 MS

/* Item 6.3 */
* extension[radiotherapyTreatmentMachinePlanned].value[x] only string
* extension[radiotherapyTreatmentMachinePlanned] ^short = "Name of the machine used for the emission of the beam"
* extension[radiotherapyTreatmentMachinePlanned] ^definition = "Name of the processing machine used for the emission of the beam. Dicom Tag (300A,00B2)"
* extension[radiotherapyTreatmentMachinePlanned].value[x] MS

Extension: EnergyOrIsotope
Id: energyOrIsotope
Title: "Energy Or Isotope"
Description: "Energy Or Isotope"

* extension contains
    quantityEnergyOrIsotope  1..1 MS and
    nameEnergyOrIsotope 0..1 MS 

/* Item 7.1 */
* extension[quantityEnergyOrIsotope].value[x] only Quantity
* extension[quantityEnergyOrIsotope] ^short = "Quantity"
* extension[quantityEnergyOrIsotope] ^definition = "Energy spectrum of a radiation characterized by a maximum value. For electrons, the maximum energy is given in MeV. For photons, the maximum acceleration voltage is given in MV or kV, although these are not energy units.
Dicom Tag (300A,0114)."
* extension[quantityEnergyOrIsotope].value[x] 1..1 MS

/* Item 7.2 */
* extension[nameEnergyOrIsotope].value[x] only string
* extension[nameEnergyOrIsotope] ^short = "Isotope Name"
* extension[nameEnergyOrIsotope] ^definition = "The isotope used for radiotherapy"
* extension[nameEnergyOrIsotope].value[x] MS

/*
    ##########################
    # FHIR-OSIRIS <--> OSIRIS #
    ##########################
*/

Mapping: FhirOSIRIS-RadiotherapyPlan
Source: radiotherapy-plan
Target: "RadiotherapyPlan"
Id: fhir-osiris-RadiotherapyPlan
Title: "OSIRIS pivot files"

* subject -> "OSIRIS_pivot_PlanRT.Patient_Id"
* partOf -> "OSIRIS_pivot_PlanRT.PhaseRT_Ref"
* category -> "OSIRIS_pivot_PlanRT.Plan_Type"
* performedPeriod.start -> "OSIRIS_pivot_PlanRT.Plan_StartDate"
* performedPeriod.end -> "OSIRIS_pivot_PlanRT.Plan_EndDate"
* extension[numberOfFractions] -> "OSIRIS_pivot_PlanRT.Plan_NumberOfFractions"
* extension[reasonReplanification] -> "OSIRIS_pivot_PlanRT.Plan_ReasonReplanification"
* extension[algorithmName] -> "OSIRIS_pivot_PlanRT.Plan_AlgorithmName"
* extension[basedOn].extension[seriesUID] -> "OSIRIS_pivot_PlanRT.Series_Ref"
* extension[basedOn].extension[rtStructUID] -> "OSIRIS_pivot_PlanRT.ROISegmentation_Ref"
* identifier[rtPlanUID] -> "OSIRIS_pivot_PlanRT.Plan_RtPlanUID"
* extension[doseToVolume].extension[rtDoseUID] -> "OSIRIS_pivot_PlanRT.Plan_RtDoseUID"


* extension[modalityAndTechnique].extension[radiotherapyModality] -> "OSIRIS_pivot_ModalityAndTechniqueRT.ModalityAndTechnique_Modality"
* extension[modalityAndTechnique].extension[radiotherapyTechnique] -> "OSIRIS_pivot_ModalityAndTechniqueRT.ModalityAndTechnique_Technique"
* extension[modalityAndTechnique].extension[radiotherapyTreatmentMachinePlanned] -> "OSIRIS_pivot_ModalityAndTechniqueRT.ModalityAndTechnique_TreatmentMachinePlanned"


* extension[doseToVolume].extension[numberOfFractions] -> "OSIRIS_pivot_DoseToVolumeRT.DoseToVolume_NumberOfFractions"
* extension[doseToVolume].extension[totalDose] -> "OSIRIS_pivot_DoseToVolumeRT.DoseToVolume_TotalDose"
* extension[doseToVolume].extension[fractionDose] -> "OSIRIS_pivot_DoseToVolumeRT.DoseToVolume_FractionDose"

* extension[energyOrIsotope].extension[quantityEnergyOrIsotope] -> "OSIRIS_pivot_EnergyOrIsotopeRT.EnergyOrIsotope_Quantity"
* extension[energyOrIsotope].extension[nameEnergyOrIsotope] -> "OSIRIS_pivot_EnergyOrIsotopeRT.EnergyOrIsotope_IsotopeName"


/*
    #############################
    # FHIR-OSIRIS <--> DICOM TAG #
    #############################
*/

Mapping: FhirOSIRIS-DicomTag-RadiotherapyPlan
Source: radiotherapy-plan
Target: "RadiotherapyPlan"
Id: fhir-osiris-dicomTag-RadiotherapyPlan
Title: "DICOM Tag Mapping (version OSIRIS)"

* identifier[rtPlanUID] -> "RT Dose/RT Dose/Referenced RT Plan Sequence (300C,0002)/Referenced SOP Instance UID (0008,1155)"
* extension[numberOfFractions] -> "RT Plan/RT Fraction Scheme/Fraction Group Sequence/Number Of Fractions Planned (300A,0078)"
* extension[algorithmName] -> "RT Dose/Structure Set/Structure Set ROI Sequence/ROI Derivation Algorithm Identification Sequence/Algorithm Name (0066,0036)"
* extension[basedOn].extension[seriesUID] -> "RT Image/RT Series/Series Instance UID (0020,000E) or
RT Structure Set/Structure Set/Refrenced Frame of Reference	Sequence (3006,0010)/RT	Referenced Study Sequence (3006,0012)/RT Referenced Series Sequence (3006,0014)/Series Instance UID (0020,000E)"
* extension[basedOn].extension[rtStructUID] -> "RT Plan/RT General Plan/Referenced Structure Set Sequence (300C,0060)/Referenced SOP Instance UID (0008,1155)"
* extension[doseToVolume].extension[rtDoseUID] -> "RT Dose/SOP Common/SOP Instance UID (0008,0018)"
* extension[doseToVolume].extension[numberOfFractions] -> "RT Plan/RT Fraction Scheme/Fraction Group Sequence/Number of	Fractions Planned (300A,0078)"
* extension[doseToVolume].extension[totalDose] -> "RT Plan/RT Prescription/Dose Reference Sequence/Target Prescription Dose (300A,0026)"
* extension[modalityAndTechnique].extension[radiotherapyModality] -> "RT Plan/RT Beams/Beam	Sequence/Radiation Type	(300A,00C6)"
* extension[modalityAndTechnique].extension[radiotherapyTechnique] -> "RT Plan/RT Beams/Beam Type (300A,00c4)
WHERE Treatment Delivery Type='TREATMENT' (300A,00CE) OR
Treatment Protocols	(300A,0009)"
* extension[modalityAndTechnique].extension[radiotherapyTreatmentMachinePlanned] -> "RT Plan/RT Beams/ Beam Sequence/Treatment Machine	Name (300A,	00B2)"
* extension[energyOrIsotope].extension[quantityEnergyOrIsotope] -> "RT Plan/RT Beams/Beam Sequence/Control Point Sequence/Nominal Beam Energy (300A,0114)"