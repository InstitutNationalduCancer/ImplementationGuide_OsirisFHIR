Profile:        ResponseEvaluation
Parent:         Observation
Id:             response-evaluation
Title:          "Response Evaluation"
Description:    "Response evaluation to an oncology treatment from RECIST terminology."

// References 
* subject MS 
* subject only Reference (onco-patient)
* basedOn only Reference (treatment)

// Other
* code = UMLS#370807008 "Evaluation of response to medications"
* effectiveDateTime ^short = "Date of assessment"
* effectiveDateTime ^definition = "Date of assessement of treatment response"
* effectiveDateTime 1..1 MS
* value[x] only CodeableConcept
* value[x] 1..1 MS 
* value[x] from ResponseEvaluationStatus //Response evaluation status
* value[x] ^short = "Evaluation Status"
* value[x] ^definition = "Treatment response evaluation status"

Mapping: FhirOSIRISResponseEvaluation
Source: ResponseEvaluation
Target: "ResponseEvaluation"
Id: fhir-osiris-responseevaluation
Title: "Fhir-osiris ResponseEvaluation to osiris ResponseEvaluation"
* subject -> "OSIRIS_pivot_ResponseEvaluation.ResponseEvaluation.Patient_Identifier"
* basedOn -> "OSIRIS_pivot_ResponseEvaluation.ResponseEvaluation.Treatment_Ref"
* effectiveDateTime -> "OSIRIS_pivot_ResponseEvaluation.ResponseEvaluation.Date"
* valueCodeableConcept -> "OSIRIS_pivot_ResponseEvaluation.ResponseEvaluation.Status"



