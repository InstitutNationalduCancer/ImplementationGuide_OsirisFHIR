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