Profile:        ClinicalTrial
Parent:         ResearchStudy
Id:             clinical-trial
Title:          "Oncology Clinical Trial"
Description:    "Oncology clinical trial"
* title ^short = "Clinical trial name"
* identifier 1..*
* identifier ^short = "Clinical trial identifier" //Treatment > Treatment_ClinicalTrialId

Mapping: FhirOSIRIS
Source: ClinicalTrial
Target: "Study"
Id: fhir-osiris-study
Title: "Fhir-osiris to osiris"
* -> "Study" "Mapping from FHIR-osiris Study to osiris Study"
* identifier -> "Treatment.Treatment_ClinicalTrialId" 
* title -> "Treatment.Treatment_ClinicalTrialName"


Profile:        ClinicalTrialSubject
Parent:         ResearchSubject
Id:             clinical-trial-subject
Title:          "Clinical Trial Subject"
Description:    "Clinical trial subject"

// References
* study only Reference (clinical-trial)
* individual only Reference (onco-patient)


Mapping: FhirOSIRISStudySubject
Source: ClinicalTrialSubject
Target: "StudySubject"
Id: fhir-osiris-studysubject
Title: "Fhir-osiris to osiris"
* -> "StudySubject" "Mapping from FHIR-osiris StudySubject to osiris StudySubject"
* individual -> "Treatment.Patient_Identifier"
* study -> "Treatment.ClinicalTrialId"
