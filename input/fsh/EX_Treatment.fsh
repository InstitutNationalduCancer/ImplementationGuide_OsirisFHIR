Instance: fhir-osiris-example-treatment-radiotherapy 
InstanceOf: Treatment
Description: "Example of Patient from OSIRIS_pivot_Treatment.csv"

* id = "3"
* subject = Reference(fhir-osiris-example-patient-radiotherapy)
* category = UMLS#C1522449
* period.start = "2018-08-15"
* period.end = "2018-12-25"
* status = http://hl7.org/fhir/request-status#unknown
* intent = http://hl7.org/fhir/request-intent#plan