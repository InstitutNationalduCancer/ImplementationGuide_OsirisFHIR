Instance: fhir-osiris-example-sequencinganalysis-1 
InstanceOf: sequencing-analysis
Description: "Example of SequencingAnalysis from OSIRIS_pivot_Analysis.csv"

* subject =  Reference(fhir-osiris-example-patient)
* focus = Reference(fhir-osiris-example-TumorPathologyEvent-instance-1)
* specimen = Reference(fhir-osiris-example-biologicalsample-1)
* device = Reference(fhir-osiris-example-sequencingdevice-1 )
* effectiveDateTime = "2018-02-07"
* status = #final
* code = OsirisCS#C37-3
* method = OSIRIS#O6-4
* component[date-of-experiment].valueDateTime = "2017-09-20"
* component[analytic-pipeline-code].valueString = "v351"
* component[algorithmic-cellularity].valueQuantity.value = 50
* component[algorithmic-ploidy].valueCodeableConcept = OSIRIS#O13-2
* component[algorithmic-cellularity].code = UMLS#C3260254
* component[algorithmic-ploidy].code = UMLS#C0032246
* component[number-of-breakpoints].code = LNC#LA26327-9
* component[date-of-experiment].code = UMLS#258049002
* component[analytic-pipeline-code].code = UMLS#C0162801


Instance: fhir-osiris-example-sequencinganalysis-2
InstanceOf: sequencing-analysis
Description: "Example of SequencingAnalysis from OSIRIS_pivot_Analysis.csv"

* subject =  Reference(fhir-osiris-example-patient)
* focus = Reference(fhir-osiris-example-TumorPathologyEvent-instance-2)
* specimen = Reference(fhir-osiris-example-biologicalsample-2)
* device = Reference(fhir-osiris-example-sequencingdevice-2)
* effectiveDateTime = "2018-02-07"
* status = #final
* code = OsirisCS#C37-3
* method = OSIRIS#O6-12
* component[date-of-experiment].valueDateTime = "2017-09-19"
* component[analytic-pipeline-code].valueString = "RNAseq pipeline v3.2"
* component[algorithmic-cellularity].valueQuantity.value = 50
* component[algorithmic-ploidy].valueCodeableConcept = OSIRIS#O13-2
* component[algorithmic-cellularity].code = UMLS#C3260254
* component[algorithmic-ploidy].code = UMLS#C0032246
* component[number-of-breakpoints].code = LNC#LA26327-9
* component[date-of-experiment].code = UMLS#258049002
* component[analytic-pipeline-code].code = UMLS#C0162801

Instance: fhir-osiris-example-sequencinganalysis-3
InstanceOf: sequencing-analysis
Description: "Example of SequencingAnalysis from OSIRIS_pivot_Analysis.csv"

* subject =  Reference(fhir-osiris-example-patient)
* focus = Reference(fhir-osiris-example-TumorPathologyEvent-instance-2)
* specimen = Reference(fhir-osiris-example-biologicalsample-2)
* device = Reference(fhir-osiris-example-sequencingdevice-3)
* effectiveDateTime = "2018-02-07"
* status = #final
* code = OsirisCS#C37-3
* method = OSIRIS#O6-12
* component[date-of-experiment].valueDateTime = "2018-02-09"
* component[analytic-pipeline-code].valueString = "sbd54dsf57s"
* component[number-of-breakpoints].valueQuantity.value = 320
* component[algorithmic-cellularity].code = UMLS#C3260254
* component[algorithmic-ploidy].code = UMLS#C0032246
* component[number-of-breakpoints].code = LNC#LA26327-9
* component[date-of-experiment].code = UMLS#258049002
* component[analytic-pipeline-code].code = UMLS#C0162801
