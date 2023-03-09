Profile:        OncoMedicationStatement
Parent:         MedicationStatement
Id:             onco-medication-statement
Title:          "Oncology-related Medication Statement"
Description:    "Medication statement related to a cancer cure."
* subject only Reference (onco-patient)
* basedOn only Reference (treatment)
* medication[x] from ATC (extensible)
* medication[x] ^short = "ATC code for treatment"

Mapping: FhirOSIRISDrug
Source: onco-medication-statement
Target: "Drug"
Id: fhir-osiris-drug
Title: "Fhir-osiris to osiris"
* -> "Treatment" "Mapping from FHIR-osiris Drug to osiris Drug"
* subject -> "Drug.Patient_Id"
* basedOn -> "Drug.Treatment_Ref"
* medicationCodeableConcept.coding.code -> "Drug.Drug_Code"
* medicationCodeableConcept.coding.display -> "Drug.Drug_Name"
* derivedFrom -> "Treatment.Treatment_ClinicalTrialId"