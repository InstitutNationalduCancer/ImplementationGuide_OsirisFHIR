Profile:        OncoMedicationStatement
Parent:         MedicationStatement
Id:             onco-medication-statement
Title:          "Oncology-related Medication Statement"
Description:    "Medication statement related to a cancer cure."

* subject MS
* subject only Reference (onco-patient)

* basedOn MS
* basedOn only Reference (treatment)

* medication[x] 1..1 MS // medication is obligatory in this resource
* medication[x] from ATC (extensible)
* medicationCodeableConcept.coding.code ^short = "ATC code for treatment"
* medicationCodeableConcept.coding.code ^definition = "Classification code Anatomical Therapeutic Chemical (ACT) code, indicating the 5th level (chemical substance) if possible."

* medicationCodeableConcept.text ^short = "Name of the molecule administered"
* medicationCodeableConcept.text ^definition = "Name of the molecule administered"

Mapping: FhirOSIRISDrug
Source: onco-medication-statement
Target: "Drug"
Id: fhir-osiris-drug
Title: "Fhir-osiris to osiris"
* -> "Treatment" "Mapping from FHIR-osiris Drug to osiris Drug"
* subject -> "OSIRIS_pivot_Drug.Patient_Id"
* basedOn -> "OSIRIS_pivot_Drug.Treatment_Ref"
* medicationCodeableConcept.coding.code -> "OSIRIS_pivot_Drug.Drug_Code"
* medicationCodeableConcept.text -> "OSIRIS_pivot_Drug.Drug_Name"
