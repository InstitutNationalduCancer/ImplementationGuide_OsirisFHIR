Instance: fhir-osiris-example-patient 
InstanceOf: OncoPatient
Description: "Example of Patient from OSIRIS_pivot_Patient.csv"
* id = "L304"
* extension[ethnicity].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-Race#2043-8
* extension[origin-center].valueReference = Reference(fhir-osiris-origin-organization)
* gender = #male
* birthDate = "1967-11-08"
* deceasedDateTime = "2017-11-29"
* managingOrganization = Reference(fhir-osiris-provider-organization)

Instance: fhir-osiris-example-patient-radiotherapy
InstanceOf: OncoPatient
Description: "Example of Patient for radiotherapy"
* id = "Patient-XRTS-04-22A"

Instance: fhir-osiris-example-patient-ct-scan
InstanceOf: OncoPatient
Description: "Example of Patient from OSIRIS_pivot_Patient.csv"
* id = "13"

Instance: fhir-osiris-example-patient-mr
InstanceOf: OncoPatient
Description: "Example of Patient from OSIRIS_pivot_Patient.csv"
* id = "24"

Instance: fhir-osiris-example-patient-mr-2
InstanceOf: OncoPatient
Description: "Example of Patient from OSIRIS_pivot_Patient.csv"
* id = "STS-010"

Instance: fhir-osiris-example-patient-pt-nm
InstanceOf: OncoPatient
Description: "Example of Patient from OSIRIS_pivot_Patient.csv"
* id = "STS-028"

Instance: fhir-osiris-example-patient-dx
InstanceOf: OncoPatient
Description: "Example of Patient from OSIRIS_pivot_Patient.csv"
* id = "LIDC-IDRI-0001"

Instance: fhir-osiris-provider-organization 
InstanceOf: OncoOrganization
Description: "Example of provider(organization) from OSIRIS_pivot_Patient.csv"
* identifier[finess].value = "IB"

Instance: fhir-osiris-origin-organization
InstanceOf: OncoOrganization
Description: "Example of origin(organization) from OSIRIS_pivot_Patient.csv"
* identifier[finess].value = "IB"