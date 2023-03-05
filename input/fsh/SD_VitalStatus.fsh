Profile:        VitalStatus  
Parent:         Observation
Id:             vital-status
Title:          "Vital Status"
Description:    "Observation that indicates the last known Vital status of an Onco Patient."
* code = LNC#22023-6 "Last follow-up hospital [Identifier] Cancer registry"

* subject 1..1 MS

* value[x] only CodeableConcept
* value[x] 1..1
* valueCodeableConcept.coding.code 1..1 MS
* valueCodeableConcept from VitalStatus (required)
* valueCodeableConcept ^short = "Latest news status"
* valueCodeableConcept ^definition = "The patient's health status at his/her last visit."

* component 0..0

* subject only Reference (onco-patient)

* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x] ^short = "Date of last news"
* effective[x] ^definition = "Date of patient's last visit."

Mapping: FhirOSIRISLastNews
Source: VitalStatus
Target: "Patient"
Id: fhir-vitalstatus
Title: "OSIRIS pivot files"
* -> "OsirisLastNews" "Last news update"
* effectiveDateTime -> "OSIRIS_pivot_Patient.Patient_LastNewsDate"
* valueCodeableConcept.coding.code -> "OSIRIS_pivot_Patient.Patient_LastNewsStatus"
