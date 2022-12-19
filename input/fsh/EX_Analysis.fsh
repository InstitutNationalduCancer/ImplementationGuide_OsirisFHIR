Instance: fhir-osiris-example-analysis-ct 
InstanceOf: analysis
Description: "Example of Patient from OSIRIS_pivot_Analysis.csv"

* subject =  Reference(fhir-osiris-example-patient-ct-scan)
* category = OsirisCS#C37-2	
* effectiveDateTime = "2018-10-12"
* status = #final
* code = UMLS#C0439673  // unknown code

Instance: fhir-osiris-example-analysis-mr 
InstanceOf: analysis
Description: "Example of Patient from OSIRIS_pivot_Analysis.csv"

* subject =  Reference(fhir-osiris-example-patient-ct-scan)
* category = OsirisCS#C37-2	
* effectiveDateTime = "2018-10-12"
* status = #final
* code = UMLS#C0439673  // unknown code

Instance: fhir-osiris-example-analysis-pt-nm
InstanceOf: analysis
Description: "Example of Patient from OSIRIS_pivot_Analysis.csv"

* subject =  Reference(fhir-osiris-example-patient-pt-nm)
* category = OsirisCS#C37-2	
* effectiveDateTime = "2018-10-12"
* status = #final
* code = UMLS#C0439673  // unknown code

Instance: fhir-osiris-example-analysis-dx
InstanceOf: analysis
Description: "Example of Patient from OSIRIS_pivot_Analysis.csv"

* subject =  Reference(fhir-osiris-example-patient-dx)
* category = OsirisCS#C37-2	
* effectiveDateTime = "2018-10-12"
* status = #final
* code = UMLS#C0439673  // unknown code

