/*
############################
######### Analysis #########
############################
*/

Profile:        Analysis
Parent:         Observation
Id:             analysis
Title:          "Analysis"
Description:    "Analysis about an onco-patient, potentially referencing a tumor pathology event."

* subject only Reference (onco-patient)
* category from AnalysisType (required)

* code ^short = "Analysis code"
* focus only Reference (TumorPathologyEvent)
* focus ^short = "Tumor Pathology Event from which the sample was taken"


/*
######################################
######### SequencingAnalysis #########
######################################
*/

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

/*
 * Possible mapping with original VS (https://www.hl7.org/fhir/valueset-observation-category.html)
 * C37-1	Biology     --> laboratory
 * C37-2	Imaging     --> imaging
 * C37-3	Omic        --> laboratory
 * C37-4	Pathology   --> laboratory
 * C0439673	Unknown     --> Cannot exist
 */
 
// * code from AnalysisCode (required) TODO: define VS

Mapping: FhirOSIRISAnalysis
Source: Analysis
Target: "Analysis"
Id: fhir-osiris-analysis
Title: "Fhir-osiris to osiris"
* -> "Analysis" "analysis description"
* subject -> "Analysis.Patient_id"
* focus -> "Analysis.Analysis_TumorPathologyEvent_Ref"
* code -> "Analysis.Analysis_Code"
* effectiveDateTime -> "Analysis.Analysis_Date"
* category -> "Analysis.Analysis_Type"
* identifier -> "Analysis.Technology_PlatformAccession"

Mapping: FhirOSIRISSeqAnalysis
Source: SequencingAnalysis
Target: "Analysis"
Id: fhir-osiris-analysis
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


ValueSet: AnalysisType
Title: "Analysis Types Value Set"
Description:  "Analysis types"
* OSIRIS#C37-1   "Biology"
* OSIRIS#C37-2   "Imaging"
* OSIRIS#C37-3   "Omic"
* OSIRIS#C37-4   "Pathology"
* UMLS#C0439673   "Unknown"

ValueSet: TechnicalProtocol
Title: "Analysis Technical Protocol"
Description:  "Analysis technical protocol"
* OSIRIS#O6-1	"ChIP-on-Chip"
* OSIRIS#O6-2	"ChIP-seq"
* OSIRIS#O6-3	"DNA microarray"
* OSIRIS#O6-4	"DNA targeted panel sequencing"
* OSIRIS#O6-5	"Exome sequencing"
* OSIRIS#O6-6	"Mass spectrometry"
* OSIRIS#O6-7	"MeDIP-Chip"
* OSIRIS#O6-8	"MeDIP-seq"
* OSIRIS#O6-9   "Methylation microarray"
* OSIRIS#O6-10	"RNA microarray"
* OSIRIS#O6-11	"RNA targeted panel sequencing"
* OSIRIS#O6-12	"RNA-seq"
* OSIRIS#O6-13	"RPPA"
* OSIRIS#O6-14	"Whole genome bisulfite sequencing"
* OSIRIS#O6-15	"Whole genome sequencing"
* OSIRIS#O6-16	"miRNA microarray"
