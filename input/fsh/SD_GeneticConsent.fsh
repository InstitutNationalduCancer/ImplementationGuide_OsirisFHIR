Profile:        GeneticConsent
Parent:         Consent
Id:             genetic-consent
Title:          "Consent for Genetic Data Usage"
Description:    "The genetic consent resource indicates if a patient has given his authorization to share and use its genetics data."
* patient only Reference(onco-patient)
* category = http://terminology.hl7.org/CodeSystem/v3-ActCode#RESEARCH
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy

* dateTime 1..1 MS
* dateTime ^short = "Consent date"
* dateTime ^definition = "Date of signature of the patient's free and informed consent."


* provision 1..1
* provision.type 1..1
* provision.type ^short = "Authorization for genetic analysis"
* provision.type ^definition = "Has the patient given consent for his/her data to be used for genetic analysis?"

* provision.class 1..1
* provision.class = http://hl7.org/fhir/resource-types#MolecularSequence

Mapping: FhirOSIRISConsent
Source: GeneticConsent
Target: "Consent"
Id: fhir-osiris-consent
Title: "Fhir-osiris to osiris"
* -> "TumorPathologyEvent" "Tumor pathology event description"
* patient -> "OSIRIS_pivot_Consent.Patient_id"
* provision.data.reference -> "OSIRIS_pivot_BiologicalSample.Consent_Ref"
* dateTime -> "OSIRIS_pivot_Consent.Consent_Date"
* provision.type -> "OSIRIS_pivot_Consent.Consent_GeneticAnalysisAuthorization"