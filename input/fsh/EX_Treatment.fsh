Instance: fhir-osiris-example-treatment-radiotherapy 
InstanceOf: Treatment
Description: "Example of Treatment from OSIRIS_pivot_Treatment.csv"

* subject = Reference(fhir-osiris-example-patient-radiotherapy)
* category = UMLS#C1522449
* period.start = "2018-08-15"
* period.end = "2018-12-25"
* status = http://hl7.org/fhir/request-status#unknown
* intent = http://hl7.org/fhir/request-intent#plan

Instance: fhir-osiris-example-treatment-1
InstanceOf: Treatment
Description: "Example of Treatment from OSIRIS_pivot_Treatment.csv"

* subject = Reference(fhir-osiris-example-patient)
* activity.detail.reasonReference = Reference(fhir-osiris-example-TumorPathologyEvent-instance-1)
* category = UMLS#C0728940
* period.start = "2006-01-04"
* period.end = "2006-11-23"
* status = http://hl7.org/fhir/request-status#unknown
* intent = http://hl7.org/fhir/request-intent#plan
* extension[treatment-line].valueInteger = 2
* activity.detail.status = #unknown

Instance: fhir-osiris-example-treatment-2
InstanceOf: Treatment
Description: "Example of Treatment from OSIRIS_pivot_Treatment.csv"

* subject = Reference(fhir-osiris-example-patient)
* activity.detail.reasonReference = Reference(fhir-osiris-example-TumorPathologyEvent-instance-2)
* category = UMLS#C3665472
* period.start = "2007-01-12"
* period.end = "2008-11-17"
* supportingInfo = Reference(fhir-osiris-example-researchstudy)
* status = http://hl7.org/fhir/request-status#unknown
* intent = http://hl7.org/fhir/request-intent#plan
* activity.detail.status = #unknown