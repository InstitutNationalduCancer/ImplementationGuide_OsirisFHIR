Profile:        ClinicalTrial
Parent:         ResearchStudy
Id:             clinical-trial
Title:          "Oncology Clinical Trial"
Description:    "Oncology clinical trial used to associate a Onco Patient to a Clinical Trial"

* title 1..1 MS
* title ^short = "Clinical trial name"
* title ^definition = "If the treatment is part of a clinical trial, its name is indicated."


* identifier 1..1
* identifier ^short = "EudraCT number of the clinical trial"
* identifier ^definition = "The number in the EudraCT clinical trials database."

Mapping: FhirOSIRISClinicalTrial
Source: ClinicalTrial
Target: "Study"
Id: fhir-osiris-study
Title: "Fhir-osiris to osiris"
* -> "Study" "Mapping from FHIR-osiris Study to osiris Study"
* identifier -> "OSIRIS_pivot_Treatment.Treatment_ClinicalTrialId" 
* title -> "OSIRIS_pivot_Treatment.Treatment_ClinicalTrialName"

Profile:        ClinicalTrialSubject
Parent:         ResearchSubject
Id:             clinical-trial-subject
Title:          "Clinical Trial Subject"
Description:    "Subject that belongs to a oncology-related Clinical Trial."

// References
* study only Reference (clinical-trial)
* individual only Reference (onco-patient)

Mapping: FhirOSIRISStudySubject
Source: ClinicalTrialSubject
Target: "StudySubject"
Id: fhir-osiris-studysubject
Title: "Fhir-osiris to osiris"
* -> "StudySubject" "Mapping from FHIR-osiris StudySubject to osiris StudySubject"
* individual -> "OSIRIS_pivot_Treatment.Patient_Identifier"
* study -> "OSIRIS_pivot_Treatment.ClinicalTrialId"

