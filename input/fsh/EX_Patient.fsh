Instance: fhir-osiris-example-patient 
InstanceOf: OncoPatient
Description: "Example of Patient from OSIRIS_pivot_Patient.csv"
* id = "L304"
//* extension[ethnicity].value[x] = #2043-8
* extension[origin-center].valueReference = Reference(fhir-osiris-origin-organization)
* gender = #male
* birthDate = "1967-11-08"
* deceasedDateTime = "2017-11-29"
* managingOrganization = Reference(fhir-osiris-provider-organization)

Instance: fhir-osiris-provider-organization 
InstanceOf: OncoOrganization
Description: "Example of provider(organization) from OSIRIS_pivot_Patient.csv"
* identifier[finess].value = "IB"

Instance: fhir-osiris-origin-organization
InstanceOf: OncoOrganization
Description: "Example of origin(organization) from OSIRIS_pivot_Patient.csv"
* identifier[finess].value = "IB"
