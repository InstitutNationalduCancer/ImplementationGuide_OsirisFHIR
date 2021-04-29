Profile:        ResponseEvaluation
Parent:         Observation
Id:             response-evaluation
Title:          "Response Evaluation"
Description:    "Response evaluation to an oncology treatment from RECIST terminology."

// References
* subject only Reference (onco-patient)
* basedOn only Reference (treatment)

// Other
* code = UMLS#370807008 "Evaluation of response to medications"
* effectiveDateTime ^short = "Date of assessment of treatment response"
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from ResponseEvaluationStatus //Response evaluation status
* value[x] ^short = "Assessment of treatment response"

Mapping: FhirOSIRISResponseEvaluation
Source: ResponseEvaluation
Target: "ResponseEvaluation"
Id: fhir-osiris-responseevaluation
Title: "Fhir-osiris ResponseEvaluation to osiris ResponseEvaluation"
* subject -> "ResponseEvaluation.Patient_Identifier"
* basedOn -> "ResponseEvaluation.Treatment_Ref"
* effectiveDateTime -> "ResponseEvaluation.Date"
* valueCodeableConcept -> "ResponseEvaluation.Status"



ValueSet: ResponseEvaluationStatus
Title: "Response Status Value Set"
Description:  "Response evaluation status"
* RECIST#CR "Complete Response"
* RECIST#PR "Partial Response"
* RECIST#SD "Stable disease"
* RECIST#PD "Progressive Disease"
* RECIST#NE "Not evaluable"