Profile:        CauseOfDeath // Should be better to merge this profile with Observation VitalStatus ?
Parent:         Observation
Id:             cause-of-death
Title:          "Cause Of Death"
Description:    "Observation that indicates the cause of death of an Oncology Patient."
* subject only Reference (onco-patient)
* code = LNC#69453-9 "Cause of death"

* subject 1..1 MS

* value[x] 1..1 MS
* value[x] only CodeableConcept 
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from CauseOfDeath (required)
* valueCodeableConcept ^short = "Cause of death. "
* valueCodeableConcept ^definition = "The patient's primary cause of death."

* component 0..0

/*
    ###################################
    # MAPPING OSIRIS <--> FHIR-OSIRIS #
    ###################################
*/

Mapping: FhirOSIRISCauseOfDeath
Source: CauseOfDeath
Target: "Patient"
Id: fhir-osiris-causeofdeath
Title: "OSIRIS pivot files"
* -> "Cause of death"
* valueCodeableConcept -> "OSIRIS_pivot_Patient.Patient_CauseOfDeath"