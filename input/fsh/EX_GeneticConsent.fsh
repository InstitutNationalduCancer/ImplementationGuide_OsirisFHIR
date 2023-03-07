Instance: fhir-osiris-example-consent
InstanceOf: GeneticConsent
Description: "Example of Instance from OSIRIS_pivot_Consent.csv"

* patient = Reference(fhir-osiris-example-patient)
* category = http://terminology.hl7.org/CodeSystem/v3-ActCode#research
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy
* dateTime = "2000-11-16"
* provision.type = #deny
* provision.class = http://hl7.org/fhir/resource-types#MolecularSequence
* status = http://hl7.org/fhir/consent-state-codes#active