Profile:        FamilyCancerHistory
Parent:         FamilyMemberHistory
Id:             family-cancer-history
Title:          "Family Cancer History"
Description:    "History of cancer in an Onco Patient Family."
* patient 1..1
* patient only Reference (onco-patient)
* relationship 1..1
* relationship from Parentage (required)
* condition.code from Topography (extensible)
* condition.code ^short = "International code for the localization of the oncologic primary site"

Mapping: FhirOSIRISFamilyCancerHistory
Source: FamilyCancerHistory
Target: "familyCancerHistory"
Id: fhir-osiris-family-cancer-history
Title: "Fhir-osiris adverse event  to osiris"
* patient -> "FamilyCancerHistory.Patient_Identifier"
* condition.code -> "FamilyCancerHistory.FamilyCancerHistory_TopographyCode"
* relationship -> "FamilyCancerHistory.FamilyCancerHistory_Parentage"

ValueSet: Parentage
Title: "Parentage Value Set"
Description:  "Parentage"
* UMLS#C0037047	"Sibling"
* UMLS#C0030551	"Parent"
* UMLS#C0015671	"Father"
* UMLS#C0026591	"Mother"
* UMLS#C3844804	"Paternal cousin"
* UMLS#C3844805	"Maternal cousin"
* UMLS#C3242761	"Maternal grandparent"
* UMLS#C3242764	"Paternal grandparent"
* UMLS#C1273524	"Paternal grandmother"
* UMLS#C1273525	"Maternal grandmother"
* UMLS#C1273523	"Maternal grandfather"
* UMLS#C1273522	"Paternal grandfather"
* UMLS#C0337471	"Grandparent"
* UMLS#C0337577	"Uncle"
* UMLS#C3714276	"Paternal uncle"
* UMLS#C3714277	"Maternal uncle"
* UMLS#C0337576	"Aunt"
* UMLS#C3714274	"Paternal aunt"
* UMLS#C3714275	"Maternal aunt"
* UMLS#C0337580	"Cousin"
* OSIRIS#C77-6	"Other"
* UMLS#C0439673	"Unknown"
