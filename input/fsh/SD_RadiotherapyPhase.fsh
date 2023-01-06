Profile: RadiotherapyPhase
Parent: Procedure
Id: radiotherapy-phase
Title: "Radiotherapy Phase"
Description: "Summary of the radiotherapy phases planned or delivered to a patient"

* subject 1..1 
* subject MS
* subject only Reference(onco-patient)

* partOf ^short = "Should Reference a Radiotherapy Treatment Course" 
* partOf only Reference(radiotherapy-course-summary)
* partOf 1..1

* category 1..1
* category MS
* category ^short = "Type (planned or delivered)"
* category ^definition = "Type (planned or delivered)"
* category.coding.code from vs-radiotherapy-category (required)

* code = SCT#1222565005
* code.coding.display = "Radiotherapy treatment phase (regime/therapy)"
* code 1..1
* code MS

* extension contains numberOfFractions named numberOfFractions 1..1 MS 
* extension[numberOfFractions] ^short = "Number of Fractions"
* extension[numberOfFractions] ^definition = "Number of Fractions. If delivred, it should be extracted from MOSAIQ/ARIA Record and Verify. 
If planned, it corresponds to Dicom Tag (300A,0078)"

* performed[x] only Period
* performed[x] 1..1
* performed[x] ^definition = "The start and end period " 
* performedPeriod.start 1..1
* performedPeriod.start ^short = "Start date"
* performedPeriod.start ^definition = "Start date and time. They should be extracted from MOSAIQ/ARIA Record and Verify."
* performedPeriod.end 1..1
* performedPeriod.end ^short = "End date"
* performedPeriod.end ^definition = "End date and time. They should be extracted from MOSAIQ/ARIA Record and Verify."

// ################ 
// Extension     ##
// ################ 

Extension:  NumberOfFractions
Id: numberOfFractions
Title: "Number of Fractions"
Description: "The number of fractions"
* value[x] only unsignedInt

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
* extension[numberOfFractions] -> "OSIRIS_pivot_PhaseRT.Phase_NumberOfFractions"

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

* extension[numberOfFractions] -> "RT Plan/RT Fraction Scheme/Fraction Group Sequence/Number Of Fractions Planned (300A,0078)"

