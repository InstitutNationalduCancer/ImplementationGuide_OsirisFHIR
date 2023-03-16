Profile:        SequencingAnalysis
Parent:         Analysis
Id:             sequencing-analysis
Title:          "Sequencing Analysis"
Description:    "Sequencing analysis about a biological sample coming from a TumorPathologyEvent. This profile shows general information about the analysis done, additional omics results can be found in SNP, Fusion, CopyNumber, Expression and Annotation profiles."

* subject MS
* subject only Reference (onco-patient)

* focus MS
* focus only Reference (TumorPathologyEvent)

* specimen MS
* specimen only Reference (BiologicalSample)
* specimen ^short = "Parent external accession"

* device 1..1 MS
* device only Reference (SequencingDevice)
* device ^short = "Sequencing device used"

* method 1..1 MS
* method from TechnicalProtocol (extensible)
* method ^short = "Method of analysis"
* method ^definition = "OSIRIS code of the molecular analysis method used."

* code 1..1 MS
* code from AnalysisType (required)
* code ^short = "Investigations performed"
* code ^definition = "Type(s) of confirmatory diagnostic or investigative method(s) used."

* category 0..1 MS
* category.text ^short = "Analysis code"
* category.text ^definition = "Analysis identifier"

* effectiveDateTime 1..1 MS
* effectiveDateTime ^short = "Date of analysis"
* effectiveDateTime ^definition = "Date on which the analysis was done."

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the code pattern"

* component contains algorithmic-cellularity 0..1
* component[algorithmic-cellularity].code = UMLS#C3260254
* component[algorithmic-cellularity] ^short = "Percentage of tumor cells"
* component[algorithmic-cellularity] ^definition = "Percentage of tumor cells in the tissue sample."
* component[algorithmic-cellularity].value[x] only Quantity

* component contains algorithmic-ploidy 0..1
* component[algorithmic-ploidy].code = UMLS#C0032246
* component[algorithmic-ploidy].valueCodeableConcept from AlgorithmicPloidy (extensible)
* component[algorithmic-ploidy] ^short = "Ploidy"
* component[algorithmic-ploidy] ^definition = "DefThe number of complete copies of chromosome sets.inition"

* component contains number-of-breakpoints 0..1
* component[number-of-breakpoints].code = LNC#LA26327-9
* component[number-of-breakpoints] ^short = "Genomic complexity"
* component[number-of-breakpoints] ^definition = "The number of breakpoints resulting from chromosomal rearrangements."
* component[number-of-breakpoints].value[x] only Quantity

* component contains date-of-experiment 0..1
* component[date-of-experiment].code = UMLS#258049002
* component[date-of-experiment] ^short = "Sequencing date"
* component[date-of-experiment] ^definition = "Date on which the experiment was carried out"
* component[date-of-experiment].value[x] only dateTime

* component contains analytic-pipeline-code 1..1
* component[analytic-pipeline-code].code = UMLS#C0162801
* component[analytic-pipeline-code] ^short = "Name of the analysis software"
* component[analytic-pipeline-code] ^definition = "The name of the software used to analyze the molecular data from the analysis technology. It can be the name of an ad hoc bioinformatics analysis chain or a commercial software."
* component[analytic-pipeline-code].value[x] only string


Mapping: FhirOSIRISSeqAnalysis
Source: SequencingAnalysis
Target: "Analysis"
Id: fhir-osiris-sequencing-analysis
Title: "Fhir-osiris to osiris"
* -> "Analysis" "analysis description"
* subject -> "OSIRIS_pivot_Analysis.Patient_Id"
* focus -> "OSIRIS_pivot_Analysis.Analysis_TumorPathologyEvent_Ref"
* specimen -> "OSIRIS_pivot_Analysis.Analysis_BiologicalSample_Ref"
* category.text -> "Analysis.Analysis_Code"
* effectiveDateTime -> "OSIRIS_pivot_Analysis.Analysis_Date"
* code -> "OSIRIS_pivot_Analysis.Analysis_Type"
* method -> "OSIRIS_pivot_Analysis.Technology_TechnicalProtocol"
* device -> "OSIRIS_pivot_Analysis.Technology_PlatformName"
* component[date-of-experiment] -> "OSIRIS_pivot_Analysis.Technology_DateOfExperiment"
* component[analytic-pipeline-code] -> "OSIRIS_pivot_Analysis.AnalysisProcess_AnalyticPipelineCode"
* component[algorithmic-cellularity] -> "OSIRIS_pivot_Analysis.OmicAnalysis_AlgorithmicCellularity"
* component[algorithmic-ploidy] -> "OSIRIS_pivot_Analysis.OmicAnalysis_AlgorithmicPloidy"
* component[number-of-breakpoints] -> "OSIRIS_pivot_Analysis.OmicAnalysis_NumberOfBreakPoints"
										