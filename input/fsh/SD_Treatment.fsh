Profile:        Treatment
Parent:         CarePlan
Id:             treatment
Title:          "Treatment"
Description:    "Description of a treatment plan related to an Oncology Patient."

// References
* subject only Reference (onco-patient)
* supportingInfo ^short = "Clinical trial context ?"
* supportingInfo only Reference (clinical-trial)

// Extensions
* extension contains treatment-line named treatment-line 0..1
* extension[treatment-line] MS
* extension[treatment-line] ^short = "Line number the treatment"

// Other

* category ^short = "Type of treatment"
* activity ^slicing.discriminator.type = #pattern
* activity ^slicing.discriminator.path = "detail.code"
* activity ^slicing.rules = #open
* activity ^slicing.description = "Slice based on the activity code pattern"
* activity contains activity-code 0..1
* activity[activity-code].detail 1..1
* activity[activity-code].detail.code 1..1
* activity[activity-code] ^short = "Classification Commune des Actes Médicaux (CCAM) code of the medical act"
* activity[activity-code].detail.code ^short = "CCAM code of the medical act"
// * activity[activity-code].detail.status = #complete

Mapping: FhirOSIRIS
Source: Treatment
Target: "Treatment"
Id: fhir-osiris-treatment
Title: "Fhir-osiris to osiris"
* -> "Treatment" "Mapping from FHIR-osiris Treatment to osiris Treatment"
* activity.detail.reasonReference -> "Treatment.TumorPathologyEvent_Ref"
* activity.detail.code -> "Treatment_ActivityCode"
* period.start -> "Treatment.Treatment_StartDate"
* period.end -> "Treatment.Treatment_EndDate"
* category -> "Treatment.Treatment_Type"
* supportingInfo -> "Treatment.Treatment_ClinicalTrialId"


Extension: TreatmentLine
Id: treatment-line
Title: "Treatment Line Number"
Description: "The treatment line number"
* value[x] only integer


ValueSet: TreatmentType
Title: "Treatment Type Value Set"
Description:  "Treatment type"
* UMLS#C3665472 "Chemotherapy"
* UMLS#C0279025 "Hormone therapy"
* UMLS#C1522449 "Therapeutic radiology procedure"
* UMLS#C0728940 "Surgery"
* UMLS#C0006098 "Brachytherapy"
* UMLS#C0021083 "Immunotherapy"
* UMLS#C0005961 "Bone marrow transplant"
* UMLS#C0279694 "Monoclonal antibody"
* UMLS#C0439673 "Unknown"


Profile:        OncoMedicationStatement
Parent:         MedicationStatement
Id:             onco-medication-statement
Title:          "Oncology-related Medication Statement"
Description:    "Medication statement related to a cancer cure."
* subject only Reference (onco-patient)
* basedOn only Reference (treatment)
* medication[x] from ATC (extensible)
* medication[x] ^short = "ATC code for treatment"
// medication[x].code: Drug > Drug_Code
// medication[x].display : Drug > Drug_Name

Mapping: FhirOSIRISDrug
Source: onco-medication-statement
Target: "Drug"
Id: fhir-osiris-drug
Title: "Fhir-osiris to osiris"
* -> "Treatment" "Mapping from FHIR-osiris Drug to osiris Drug"
* subject -> "Drug.Patient_Id"
* basedOn -> "Drug.Treatment_Ref"
* medicationCodeableConcept.coding.code -> "Drug.Drug_Code"
* medicationCodeableConcept.coding.display -> "Drug.Drug_Name"
* derivedFrom -> "Treatment.Treatment_ClinicalTrialId"

Profile:        Surgery
Parent:         Procedure
Id:             onco-surgery
Title:          "Oncology Surgery"
Description:    "Oncology-related surgery with a description of the outcome using RECIST codes."
* basedOn only Reference (Treatment)
* reasonReference only Reference (TumorPathologyEvent)
* code ^short = "Nature of the surgery (ValueSet TBD)" // Treatment > SurgeryNature
* subject only Reference (OncoPatient)
* category = UMLS#C0543467 "Operative Surgical Procedures"
// * performed[x] from Treatment_StartDate & Treatment_EndDate
* outcome from SurgeryResectionQuality (extensible) //Treatment > TreatmentSurgeryResectionQuality
* outcome ^short = "Quality of resection (anapath)"

Mapping: FhirOSIRISSurgery
Source: Surgery
Target: "Treatment"
Id: fhir-osiris-surgery
Title: "Fhir-osiris to osiris"
* -> "Treatment" "Mapping from FHIR-osiris Surgery to osiris Analysis"
* subject -> "Treatment.Patient_Identifier"
* basedOn -> "Treatment.Treatment_Identifier (ref)"
* code -> "Treatment.Treatment_SurgeryNature"
* outcome -> "Treatment_SurgeryResectionQuality"


ValueSet: SurgeryResectionQuality
Title: "Surgery Resection Quality Value Set"
Description:  "Surgery resection quality"
* RECIST#R0	"No apparent"
* RECIST#R1	"Microscopic"
* RECIST#R2	"Gross"
* UMLS#C0439673	"Unknown"