Profile:        OncoAdverseEvent 
Parent:         AdverseEvent
Id:             onco-adverse-event
Title:          "Oncologic Adverse Event"
Description:    "Adverse event related to a cancer-related treatment associated to a grade from MEDDRA terminology (ex: 10047700: \"Vomiting\")."

* subject MS
* subject only Reference (onco-patient)

* suspectEntity.instance MS
* suspectEntity.instance only Reference (onco-medication-statement)

* subjectMedicalHistory MS
* subjectMedicalHistory only Reference (TumorPathologyEvent)

* event 1..1
* event from AdverseEventCode (extensible)
* event ^short = "Term to describe the adverse event"
* event ^definition = "The international MedDRA code (version 12.0) is used to describe the Adverse Event (AE) occurring during treatment."

* seriousness 1..1 MS
* seriousness from AdverseEventGrade (required)
* seriousness ^short = "Grade of the adverse event"
* seriousness ^definition = "The Common Terminology Criteria For Adverse Events (CTCAE version 5.0) grade is used to define the severity of the AE."

* date 1..1 MS
* date ^short = "Date of diagnosis"
* date ^definition = "Date of diagnosis of the adverse event."

* extension contains adverse-event-end-date named end-date 0..1
* extension[end-date] MS
* extension[end-date] ^short = "End date"
* extension[end-date] ^definition = "End date of the adverse event"

Extension:  EndDate
Id: adverse-event-end-date
Title: "Adverse Event End date"
Description: "End date of the adverse event"
* value[x] only dateTime

Mapping: FhirOSIRISAdverseEvent
Source: onco-adverse-event
Target: "AdverseEvent"
Id: fhir-osiris-adverseevent
Title: "Fhir-osiris adverse event to osiris"
* subject -> "OSIRIS_pivot_AdverseEvent.Patient_Id"
* suspectEntity.instance -> "OSIRIS_pivot_AdverseEvent.Treatment_Ref"
* subjectMedicalHistory -> "OSIRIS_pivot_AdverseEvent.TumorPathologyEvent_Ref"
* event -> "OSIRIS_pivot_AdverseEvent.AdverseEvent_Code"
* date -> "OSIRIS_pivot_AdverseEvent.AdverseEvent_Date"
* extension[EndDate] -> "OSIRIS_pivot_AdverseEvent.AdverseEvent_EndDate"
* seriousness.coding.code -> "OSIRIS_pivot_AdverseEvent.AdverseEvent_Grade"

							


