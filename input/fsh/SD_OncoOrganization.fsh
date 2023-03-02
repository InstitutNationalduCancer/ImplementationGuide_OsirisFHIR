Profile:        OncoOrganization
Parent:         Organization
Id:             onco-organization
Title:          "Cancer Organization"
Description:    "Cancer organization to describe the provider center or origin center of the onco-patient."
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier.system pattern"
* identifier contains finess 1..1
* identifier[finess].system = "http://finess.sante.gouv.fr"

* identifier[finess].value ^definition = "Finess of the institution"
* identifier[finess].value ^short = "Finess of the institution"

Mapping: FhirOSIRIS-Organization
Source: onco-organization
Target: "OncoOrganization"
Id: fhir-osiris-OncoOrganization
Title: "OSIRIS pivot files"

* identifier[finess].value -> "OSIRIS_pivot_Patient.Patient_ProviderCenterId and/or OSIRIS_pivot_Patient.Patient_OriginCenterId"