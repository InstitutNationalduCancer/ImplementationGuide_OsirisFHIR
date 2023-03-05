Profile:        OncoPatient
Parent:         Patient
Id:             onco-patient
Title:          "Oncology Patient"
Description:    "Oncology patient defined by Osiris."


* id 1..1 MS
* id ^short = "Local patient identifier"
* id ^definition = "Anonymized local identifier of the patient in the hospital."

* managingOrganization 1..1 MS
* managingOrganization only Reference(OncoOrganization)
* managingOrganization ^short = "Identifier of the center providing the data"
* managingOrganization ^definition = "The FINESS identifier of the center providing the clinical data for the OSIRIS project."

* gender MS
* gender 1..1
* gender ^short = "Sex of the patient"
* gender ^definition = "Biological sex of the patient."

* deceasedDateTime MS
* obeys deceasedDateTime-if-deceased
* deceasedDateTime ^short = "Death date"
* deceasedDateTime ^definition = "Date of patient's death. Date (indicating the 15th day of the month of death for anonymization)."

* birthDate 1..1 MS
* birthDate ^short = "Birthdate"
* birthDate ^definition = "The patient's date of birth as recorded on the birth certificate. Date (indicating the 15th day of the month of birth for anonymization)."

// Extensions
* extension contains ethnicity named ethnicity 0..1
* extension[ethnicity] MS
* extension[ethnicity] ^short = "Ethnicity"
* extension[ethnicity] ^definition = "The patient's ethnicity."

* extension contains origin-center named origin-center 1..1
* extension[origin-center] MS
* extension[origin-center] ^short = "Identifier of the patient's origin center"
* extension[origin-center] ^definition = "The identifier according to the Fichier National des Etablissements Sanitaires et Sociaux (FINESS) of the health center that took care of the patient."

// Other
Extension:  Ethnicity
Id: ethnicity
Title: "Patient Ethnicity"
Description: "The patient ethnicity"
* value[x] only CodeableConcept
* valueCodeableConcept from http://terminology.hl7.org/ValueSet/v3-Race (extensible)

Extension:  OriginCenter
Id: origin-center
Title: "Patient Origin Center"
Description: "The origin center organization of an Oncology Patient."
* value[x] only Reference
* valueReference only Reference (OncoOrganization)
* valueReference 1..1

/*
    ###################################
    # Invariants#
    ###################################
*/

Invariant:   deceasedDateTime-if-deceased
Description: "If VitalStatus.valueCodeableConcept is deceased, then OncoPatient.deceasedDateTime MUST be present"
Expression:  "Observation.where(id='fhir-osiris-example-vitalstatus').valueCodeableConcept.coding.code = 'C1546956' and Observation.subject.reference='Patient/'+ Patient.id implies deceasedDateTime.exists()"
Severity:    #error

/* Observation.where(id='fhir-osiris-example-vitalstatus') and value.coding.where(code ='C1546956').exists() and patient.resolve().exists() implies patient.resolve().deceased.ofType('dateTime').exists()
/*
    ###################################
    # MAPPING OSIRIS <--> FHIR-OSIRIS #
    ###################################
*/

Mapping: FhirOSIRIS
Source: onco-patient
Target: "Patient"
Id: fhir-osiris
Title: "OSIRIS pivot files"
* -> "Patient" "Mapping from FHIR-osiris Patient to osiris Patient"
* id -> "OSIRIS_pivot_Patient.Patient_Id"
* gender -> "OSIRIS_pivot_Patient.Patient_Gender"
* extension[ethnicity] -> "OSIRIS_pivot_Patient.Patient_Ethnicity"
* birthDate -> "OSIRIS_pivot_Patient.Patient_BirthDate"
* deceasedDateTime -> "OSIRIS_pivot_Patient.Patient_DeathDate"
* managingOrganization -> "OSIRIS_pivot_Patient.Patient_ProviderCenterId"
* extension[origin-center] -> "OSIRIS_pivot_Patient.Patient_OriginCenterId"
