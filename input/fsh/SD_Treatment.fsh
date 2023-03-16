Profile:        Treatment
Parent:         CarePlan
Id:             treatment
Title:          "Treatment"
Description:    "Description of a treatment plan related to an Oncology Patient."

* subject MS
* subject only Reference (onco-patient)

* activity.detail.reasonReference MS
* activity.detail.reasonReference only Reference (tumor-pathology-event)

* supportingInfo 0..1
* supportingInfo only Reference (clinical-trial)
* supportingInfo ^short = "Objective of the treatment"
* supportingInfo ^definition = "Is the treatment part of a clinical trial?"

* extension contains treatment-line named treatment-line 0..1 MS
* extension[treatment-line] ^short = "Line number the treatment"
* extension[treatment-line] ^definition = "Line number the treatment"

* category 1..1 MS
* category from TreatmentType (required)
* category ^short = "Type of treatment"
* category ^definition = "Type of treatment"

* activity ^slicing.discriminator.type = #pattern
* activity ^slicing.discriminator.path = "detail.code.coding.system"
* activity ^slicing.rules = #open
* activity ^slicing.description = "Slice based on the activity code pattern"
* activity contains activity-code 0..1
* activity[activity-code].detail 1..1
* activity[activity-code].detail.code 1..1
* activity[activity-code].detail.code.coding.system = "https://www.atih.sante.fr/les-versions-de-la-ccam"
* activity[activity-code] ^short = "Classification Commune des Actes Médicaux (CCAM) code of the medical act"
* activity[activity-code] ^definition = "Health insurance code used to describe the location and type of medical procedure performed."
* activity[activity-code].detail.code ^short = "CCAM code of the medical act"
* activity[activity-code].detail.code ^definition = "Health insurance code used to describe the location and type of medical procedure performed."

* period.start 1..1 MS
* period.start ^short = "Start date"
* period.start ^definition = "Start date of the treatment."

* period.end 1..1 MS
* period.end ^short = "End date"
* period.end ^definition = "End date of the treatment"

Extension: TreatmentLine
Id: treatment-line
Title: "Treatment Line Number"
Description: "The treatment line number"
* valueInteger 0..1 MS
* value[x] only integer
* valueInteger ^short = "Line number the treatment"
* valueInteger ^definition = "Line number the treatment"

Mapping: FhirOSIRISTreatment
Source: Treatment
Target: "Treatment"
Id: fhir-osiris-treatment
Title: "OSIRIS pivot files"
* -> "Treatment" "Mapping from FHIR-osiris Treatment to osiris Treatment"
* subject -> "OSIRIS_pivot_Treatment.Patient_Id"
* activity.detail.reasonReference -> "OSIRIS_pivot_Treatment.TumorPathologyEvent_Ref"
* activity.detail.code -> "OSIRIS_pivot_Treatment.Treatment_ActivityCode"
* period.start -> "OSIRIS_pivot_Treatment.Treatment_StartDate"
* period.end -> "OSIRIS_pivot_Treatment.Treatment_EndDate"
* category -> "OSIRIS_pivot_Treatment.Treatment_Type"
* supportingInfo -> "OSIRIS_pivot_Treatment.Treatment_ClinicalTrialContext (if Reference exists, Treatment_ClinicalTrialContext is yes"
* extension[treatment-line].valueInteger -> "OSIRIS_pivot_Treatment.Treatment_LineNumber"
