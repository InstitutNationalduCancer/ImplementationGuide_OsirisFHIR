Profile:        Surgery
Parent:         Procedure
Id:             onco-surgery
Title:          "Oncology Surgery"
Description:    "Oncology-related surgery with a description of the outcome using RECIST categorys."

* subject MS
* subject only Reference (OncoPatient)

* basedOn MS
* basedOn only Reference (Treatment)

* reasonReference MS
* reasonReference only Reference (TumorPathologyEvent)

* category.text 0..1 MS
* category.text ^short = "Nature of the surgery"
* category.text ^definition = "Nature of the surgery"

* code = UMLS#C0543467 "Operative Surgical Procedures"

* outcome 0..1 MS
* outcome from SurgeryResectionQuality (extensible)
* outcome ^short = "Quality of resection"
* outcome ^definition = "Assessment of the quality of the resection of the surgical procedure."

Mapping: FhirOSIRISSurgery
Source: Surgery
Target: "Treatment"
Id: fhir-osiris-surgery
Title: "OSIRIS pivot files"
* -> "Treatment" "Mapping from FHIR-osiris Surgery to osiris Analysis"
* subject -> "OSIRIS_pivot_Treatment.Patient_Identifier"
* basedOn -> "OSIRIS_pivot_Treatment.Instance_Id"
* category -> "OSIRIS_pivot_Treatment.Treatment_SurgeryNature"
* outcome -> "OSIRIS_pivot_Treatment.Treatment_SurgeryResectionQuality"
	