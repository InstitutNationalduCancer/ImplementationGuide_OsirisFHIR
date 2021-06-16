Profile:        OncoPatient
Parent:         Patient
Id:             onco-patient
Title:          "Oncology Patient"
Description:    "Oncology patient defined by Osiris."

// References
// * generalPractitioner only Reference(OncoOrganization)
* managingOrganization only Reference(OncoOrganization)
* managingOrganization ^short = "Center providing the information"

// Extensions
* extension contains ethnicity named ethnicity 0..1
* extension contains origin-center named origin-center 0..1

* extension[ethnicity] MS
* extension[ethnicity] ^short = "Ethnicity of the patient"
* extension[origin-center] MS
* extension[origin-center] ^short = "Center of origin of the patient"

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
* valueReference only Reference (OncoOrganization) // To be adapted on pyrog

Mapping: FhirOSIRIS
Source: onco-patient
Target: "Patient"
Id: fhir-osiris
Title: "Fhir-osiris to osiris"
* -> "Patient" "Mapping from FHIR-osiris Patient to osiris Patient"
* gender -> "Patient.Patient_Gender"
* extension[ethnicity] -> "Patient.Patient_Ethnicity"
* birthDate -> "Patient.Patient_BirthDate"
* deceasedDateTime -> "Patient.Patient_DeathDate"
* managingOrganization -> "Patient.Patient_ProviderCenterId"
* extension[origin-center] -> "Patient.Patient_OriginCenterId"
