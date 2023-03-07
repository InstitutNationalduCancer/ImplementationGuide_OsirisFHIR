/*
############################
######### Analysis #########
############################
*/

Profile:        Analysis
Parent:         Observation
Id:             analysis
Title:          "Analysis"
Description:    "Assessment of the technique(s) used to establish the diagnosis(es)"

* subject MS
* subject only Reference (onco-patient)

* focus MS
* focus only Reference (TumorPathologyEvent)
* focus ^short = "Tumor Pathology Event from which the sample was taken"
* focus ^definition = "Tumor Pathology Event from which the sample was taken"

* code 1..1 MS
* code from AnalysisType (required)
* code ^short = "Investigations performed"
* code ^definition = "Type(s) of confirmatory diagnostic or investigative method(s) used."

* category 0..1 MS
* category.text ^short = "Analysis code"
* category.text ^definition = "Analysis identifier"

* effectiveDateTime 1..1 MS
* effectiveDateTime ^short = "Date of analysis"
* effectiveDateTime ^definition = "Date on which the analysis was done."

Mapping: FhirOSIRISAnalysis
Source: Analysis
Target: "Analysis"
Id: fhir-osiris-analysis
Title: "OSIRIS pivot files"
* -> "Analysis" "analysis description"
* subject -> "Analysis.Patient_id"
* focus -> "Analysis.Analysis_TumorPathologyEvent_Ref"
* code -> "Analysis.Analysis_Type"
* effectiveDateTime -> "Analysis.Analysis_Date"
* category.text -> "Analysis.Analysis_Code"
