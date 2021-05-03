Profile:        CauseOfDeath // Should be better to merge this profile with Observation VitalStatus ?
Parent:         Observation
Id:             cause-of-death
Title:          "Cause Of Death"
Description:    "Cause of death observation."
* subject only Reference (onco-patient)
* code = LNC#69453-9 "Cause of death"
* subject 1..1
* value[x] 1..1
* value[x] only CodeableConcept 
* value[x] from CauseOfDeath (required)
* component 0..0

Mapping: FhirOSIRISCauseOfDeath
Source: CauseOfDeath
Target: "Patient"
Id: fhir-osiris-causeofdeath
Title: "Fhir-osiris to osiris"
* -> "Cause of death"
* valueCodeableConcept -> "Patient_CauseOfDeath"



ValueSet: CauseOfDeath
Title: "Cause of death Value Set"
Description:  "Cause of death"
* UMLS#C1707251 "Other cancer"
* UMLS#C3262234 "Other cause"
* UMLS#C0679861	"Complications of treatment"
* UMLS#C0027651	"Neoplasm" 
* UMLS#C0277589	"Death of unknown cause"

Profile:        VitalStatus  
Parent:         Observation
Id:             vital-status
Title:          "Vital Status"
Description:    "Vital status observation"
* code = LNC#22023-6 "Last follow-up hospital [Identifier] Cancer registry"
* subject 1..1
* value[x] 1..1
* value[x] only CodeableConcept 
* value[x] from VitalStatus (required)
* component 0..0
* subject only Reference (onco-patient)
* effective[x] 1..1
* effective[x] only dateTime


Mapping: FhirOSIRISLastNews
Source: VitalStatus
Target: "Patient"
Id: fhir-vitalstatus
Title: "Fhir-osiris to osiris"
* -> "OsirisLastNews" "Last news update"
* effectiveDateTime -> "Patient_LastNewsDate"
* valueCodeableConcept.coding.code -> "Patient_LastNewsStatus"



ValueSet: VitalStatus
Title: "Vital Status Value Set"
Description:  "Vital status"
* UMLS#C2584946 "Alive (finding)"
* UMLS#C1546956 "Patient Outcome - Died"
* UMLS#C0439673	"Unknown"



Profile:        FamilyCancerHistory
Parent:         FamilyMemberHistory
Id:             family-cancer-history
Title:          "Family Cancer History"
Description:    "Family cancer history"
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