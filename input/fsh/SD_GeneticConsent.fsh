Profile:        GeneticConsent
Parent:         Consent
Id:             genetic-consent
Title:          "Consent for Genetic Data Usage"
Description:    "The genetic consent resource indicates if a patient has given his authorization to share and use its genetics data"
* patient only Reference(onco-patient)
* category = http://terminology.hl7.org/CodeSystem/v3-ActCode#RESEARCH
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy
* provision 1..1
* provision.type 1..1
* provision.class 1..1
* provision.class = http://hl7.org/fhir/resource-types#MolecularSequence

Mapping: FhirOSIRISConsent
Source: GeneticConsent
Target: "Consent"
Id: fhir-osiris-consent
Title: "Fhir-osiris to osiris"
* -> "TumorPathologyEvent" "Tumor pathology event description"
* patient -> "Consent.Patient_id"
* provision.data.reference -> "Specimen.identifier (joins on BiologicalSample.Consent_Ref)"
* dateTime -> "Consent.Consent_Date"
* provision.type -> "Consent.Consent_GeneticAnalysisAuthorization"