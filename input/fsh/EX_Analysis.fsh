Instance: fhir-osiris-example-analysis-clinical 
InstanceOf: analysis
Description: "Example of Analysis from OSIRIS_pivot_Analysis.csv"

* subject =  Reference(fhir-osiris-example-patient)
* focus = Reference(fhir-osiris-example-TumorPathologyEvent-instance-1)
* effectiveDateTime = "2018-02-07"
* status = #final
* code = OsirisCS#C37-3

Instance: fhir-osiris-example-analysis-ct 
InstanceOf: analysis
Description: "Example of Analysis from OSIRIS_pivot_Analysis.csv"

* subject =  Reference(fhir-osiris-example-patient-ct-scan)
* effectiveDateTime = "2018-10-12"
* status = #final
* code = OsirisCS#C37-2

Instance: fhir-osiris-example-analysis-mr 
InstanceOf: analysis
Description: "Example of Analysis from OSIRIS_pivot_Analysis.csv"

* subject =  Reference(fhir-osiris-example-patient-ct-mr)
* effectiveDateTime = "2018-10-12"
* status = #final
* code = OsirisCS#C37-2	

Instance: fhir-osiris-example-analysis-mr-2
InstanceOf: analysis
Description: "Example of Analysis from OSIRIS_pivot_Analysis.csv"

* subject =  Reference(fhir-osiris-example-patient-ct-mr-2)
* effectiveDateTime = "2018-10-12"
* status = #final
* code = OsirisCS#C37-2	 // unknown code

Instance: fhir-osiris-example-analysis-pt-nm
InstanceOf: analysis
Description: "Example of Analysis from OSIRIS_pivot_Analysis.csv"

* subject =  Reference(fhir-osiris-example-patient-pt-nm)
* effectiveDateTime = "2018-10-12"
* status = #final
* code = OsirisCS#C37-2	

Instance: fhir-osiris-example-analysis-dx
InstanceOf: analysis
Description: "Example of Analysis from OSIRIS_pivot_Analysis.csv"

* subject =  Reference(fhir-osiris-example-patient-dx)
* effectiveDateTime = "2018-10-12"
* status = #final
* code = OsirisCS#C37-2	

