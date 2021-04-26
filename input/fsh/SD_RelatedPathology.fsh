Profile:        RelatedPathology
Parent:         Condition
Id:             related-pathology
Title:          "Oncology Patient Related Pathology"
Description:    "Related pathology of oncology patient"
* subject only Reference (onco-patient)
* code ^short = "International code for the related disease (other than cancer)."
* onset[x] ^short = "Date of diagnosis for the related disease."
* abatement[x] ^short = "Date of the end of the related disease (if occuring and known)"


Mapping: FhirOSIRIS
Source: RelatedPathology
Target: "RelatedPathology"
Id: fhir-osiris-rp
Title: "Fhir-osiris to osiris"
* -> "Patient" "Mapping from FHIR-osiris Patient to osiris Patient"
* subject -> "RelatedPathology.Patient_id"
* code -> "RelatedPathology.RelatedPathology_PathologyCode"
* onsetDateTime -> "RelatedPathology.RelatedPathology_DiagnosisDate"
* abatementDateTime -> "RelatedPathology.RelatedPathology_PathologyEndDate"