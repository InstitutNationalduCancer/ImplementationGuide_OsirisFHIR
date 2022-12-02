Profile: RadiotherapyDoseToVolume
Parent: Procedure
Id: radiotherapy-dose-to-volume
Title: "Radiotherapy Dose To Volume"
Description: "Radiotherapy Dose To Volume"

* extension contains
    dose-to-volume named dose-to-volume 1..1 MS and
    volume named volume 1..1

* identifier 1..1
* identifier MS

* subject 1..1 
* subject MS
* subject only Reference(onco-patient)

* partOf 3..3
* partOf MS
* partOf only Reference(radiotherapy-course-summary or radiotherapy-phase or radiotherapy-plan)
* partOf ^short = "Should Reference a Radiotherapy Treatment Course, Radiotherapy Treatment Phase, Radiotherapy Treatment Plan" 

Extension: Volume
Id: volume
Title: "Volume"
Description: "Volume"

* extension contains
    volume 0..1 MS

* extension[volume].value[x] only Reference(radiotherapy-volume)
* extension[volume] ^short = "The volume targeted by the dose "
* extension[volume] ^definition = "The volume targeted by the dose corresponds to the dicom path: RT Structure Set/Structure Set/Structure Set ROI Sequence/ROI Number (3006,0022)."

Extension: DoseToVolume
Id: dose-to-volume
Title: "Dose To Volume"
Description: "Dose To Volume"

* extension contains
    fractionDose 0..1 MS and
    numberOfFractions 0..1 MS and
    totalDose 1..1 MS

* extension[fractionDose].value[x] only string
* extension[fractionDose] ^short = "The radiation dose per fraction"

* extension[numberOfFractions].value[x] only unsignedInt
* extension[numberOfFractions] ^short = "The number of fractions"
* extension[numberOfFractions] ^definition = "The number of fractions corresponds to the dicom path: RT Plan/RT Fraction Scheme/Number Of Fractions Planned (300A,0078)."


* extension[totalDose].value[x] only string
* extension[totalDose] ^short = "The total amount of radiation delivered to this volume"
* extension[totalDose] ^definition = "The total dose corresponds to the dicom path: RT Plan/RT Prescription/Dose Reference Sequence/Target Prescription Dose (300A,0026)."

/*
    ##########################
    # FHIR-OSIRIS <--> OSIRIS #
    ##########################
*/

Mapping: FhirOSIRIS-RadiotherapyDoseToVolume
Source: radiotherapy-dose-to-volume
Target: "RadiotherapyDoseToVolume"
Id: fhir-osiris-RadiotherapyDoseToVolume
Title: "Fhir-osiris to osiris"

* subject -> "OSIRIS_pivot_DoseToVolumeRT.Patient_Id"
* partOf -> "OSIRIS_pivot_DoseToVolumeRT.CourseRT_Ref, OSIRIS_pivot_DoseToVolumeRT.PhaseRT_Ref, OSIRIS_pivot_DoseToVolumeRT.PlanRT_Ref"
* extension[volume].extension[volume] -> "OSIRIS_pivot_DoseToVolumeRT.VolumeRT_Ref"
* extension[dose-to-volume].extension[fractionDose] -> "OSIRIS_pivot_DoseToVolumeRT.DoseToVolume_FractionDose"
* extension[dose-to-volume].extension[numberOfFractions] -> "OSIRIS_pivot_DoseToVolumeRT.DoseToVolume_NumberOfFractions"
* extension[dose-to-volume].extension[totalDose] -> "OSIRIS_pivot_DoseToVolumeRT.DoseToVolume_TotalDose"

/*
    #############################
    # FHIR-OSIRIS <--> DICOM TAG #
    #############################
*/

Mapping: FhirOSIRIS-DicomTag-RadiotherapyDoseToVolume
Source: radiotherapy-dose-to-volume
Target: "Radiotherapy Dose To Volume"
Id: fhir-osiris-dicomTag-RadiotherapyDoseToVolume
Title: "Fhir-osiris to Dicom Tag"

* bodySite -> "ROI Number (3006,0022)"
* extension[dose-to-volume].extension[numberOfFractions] -> "Number Of Fractions Planned (300A,0078)"
* extension[dose-to-volume].extension[totalDose] -> "Target Prescription Dose (300A,0026)"

