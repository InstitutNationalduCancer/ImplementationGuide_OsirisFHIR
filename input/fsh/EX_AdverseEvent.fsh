Instance: fhir-osiris-example-adverseevent-1 
InstanceOf: OncoAdverseEvent
Description: "Example of Adverse Event from OSIRIS_pivot_AdverseEvent.csv"

* subject = Reference(fhir-osiris-example-patient)
* suspectEntity.instance = Reference(fhir-osiris-example-oncomedicalstatement-1)
* subjectMedicalHistory = Reference(fhir-osiris-example-TumorPathologyEvent-instance-1)
* event = MEDDRA#10019211
* date = "2007-06-13"
* extension[EndDate].valueDateTime = "2007-07-10"	
* seriousness.coding.code = UMLS#C0439673
* actuality = #actual