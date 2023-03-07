Profile:        SequencingAnalysis
Parent:         Analysis
Id:             sequencing-analysis
Title:          "Sequencing Analysis"
Description:    "Sequencing analysis about a biological sample coming from a TumorPathologyEvent. This profile shows general information about the analysis done, additional omics results can be found in SNP, Fusion, CopyNumber, Expression and Annotation profiles."
* specimen only Reference (BiologicalSample)
* specimen ^short = "Parent external accession"
* device only Reference (SequencingDevice)
* device ^short = "Sequencing device used"
* method from TechnicalProtocol (extensible)
* method ^short = "Protocol used for the experiment"

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the code pattern"

* component contains algorithmic-cellularity 0..1
* component[algorithmic-cellularity].code = UMLS#C3260254
* component[algorithmic-cellularity] ^short = "Calculated percentage of tumor cells in sample"
* component[algorithmic-cellularity].value[x] only Quantity

* component contains algorithmic-ploidy 0..1
* component[algorithmic-ploidy].code = UMLS#C0032246
* component[algorithmic-ploidy] ^short = "Calculated number of sets of chromosomes in a cell of the sample"
* component[algorithmic-ploidy].value[x] only Quantity

* component contains number-of-breakpoints 0..1
* component[number-of-breakpoints].code = LNC#LA26327-9
* component[number-of-breakpoints] ^short = "Calculated number of break points in genomic profile"
* component[number-of-breakpoints].value[x] only Quantity

* component contains date-of-experiment 0..1
* component[date-of-experiment].code = UMLS#258049002
* component[date-of-experiment] ^short = "Sequencing date"
* component[date-of-experiment].value[x] only dateTime

* component contains analytic-pipeline-code 0..1
* component[analytic-pipeline-code].code = UMLS#C0162801
* component[analytic-pipeline-code] ^short = "Identifier of the pipeline used into the analysis (unique in the center)"
* component[analytic-pipeline-code].value[x] only Quantity


Mapping: FhirOSIRISSeqAnalysis
Source: SequencingAnalysis
Target: "Analysis"
Id: fhir-osiris-sequencing-analysis
Title: "Fhir-osiris to osiris"
* -> "Analysis" "analysis description"
* subject -> "Analysis.Patient_id"
* focus -> "Analysis.Analysis_TumorPathologyEvent_Ref"
* specimen -> "Analysis.Analysis_BiologicalSample_Ref"
* code -> "Analysis.Analysis_Code"
* effectiveDateTime -> "Analysis.Analysis_Date"
* category -> "Analysis.Analysis_Type"
* method -> "Analysis.Technology_TechnicalProtocol"
* device -> "Analysis.Technology_PlatformName"
* identifier -> "Analysis.Technology_PlatformAccession"
* component[date-of-experiment] -> "Analysis.Technology_DateOfExperiment"
* component[analytic-pipeline-code] -> "Analysis.AnalysisProcess_AnalyticPipelineCode"
* component[algorithmic-cellularity] -> "Analysis.OmicAnalysis_AlgorithmicCellularity"
* component[algorithmic-ploidy] -> "Analysis.OmicAnalysis_AlgorithmicPloidy"
* component[number-of-breakpoints] -> "Analysis.OmicAnalysis_NumberOfBreakPoints"
