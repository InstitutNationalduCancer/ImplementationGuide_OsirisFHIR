Profile:        Fusion
Parent:         Observation
Id:             fusion
Title:          "Gene Fusion"
Description:    "Gene fusion"

// References
* subject only Reference (onco-patient)
* derivedFrom ^slicing.discriminator.type = #pattern
* derivedFrom ^slicing.discriminator.path = "reference"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "Slice based on referece pattern"

* derivedFrom contains fusion-molecular-sequences 0..2
* derivedFrom contains analysis 1..1

* derivedFrom[fusion-molecular-sequences] only Reference (molecular-sequence-5-prime or molecular-sequence-3-prime)
* derivedFrom[fusion-molecular-sequences] ^short = "Five prime and three prime positions of the fusion"

* derivedFrom[analysis] only Reference (sequencing-analysis) // To add on pyrog
* derivedFrom[analysis] ^short = "Analysis from which come this observation"
// TODO

// Extensions
* extension contains SpanningPairs named spanning-pairs 0..1
* extension[spanning-pairs] ^short = "Number of reads pairs spanning the fusion"
* extension[spanning-pairs] MS

* extension contains SplitReads named split-reads 0..1
* extension[split-reads] ^short = "Number of reads containing the fusion point"
* extension[split-reads] MS


// Others
* code ^short = "Type of the fusion event. eg: translocation, readthrough"
* code from FusionType (required)

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"

* component contains actionability 0..1
* component contains proposed-for-orientation 0..1
* component contains pathogenicity 0..1
* component contains gene-studied 0..*
* component contains in-frame 1..1


* component[actionability] ^short = "Conclusion of the clinicians wether the variant is actionable or not during the Molecular Tumor Board"
* component[actionability].code = LNC#93348-1
* component[actionability].value[x] only boolean //todo on pyrog 

* component[proposed-for-orientation] ^short = "Is the ClinicalTumorBoardConclusion used to orient the treatment decision ?"
* component[proposed-for-orientation].code = UMLS#C0449889
* component[proposed-for-orientation].value[x] only boolean //TODO on pyrog 

* component[pathogenicity] ^short = "Conclusion of the biologist on the pathogenicity of the variant before the Molecular Tumor Board"
* component[pathogenicity].code = LNC#74019-1
* component[pathogenicity].value[x] only CodeableConcept 
* component[pathogenicity].value[x] from Pathogenicity (required)

* component[gene-studied] ^short = "Gene studied [ID]"
* component[gene-studied] ^definition = "HUGO Gene Nomenclature Committee (HGNC) identifier for a gene. List the gene(s) examined in full or in part by the study. If the study addresses multiple genes, these can be recorded in multiple gene studied components. The required coding will use the HGNC gene symbol as the display text and HGNC gene ID as the code."
* component[gene-studied].code = LNC#48018-6
* component[gene-studied].value[x] only CodeableConcept
* component[gene-studied].value[x] ^short = "If no HGNC code issued for this gene yet, NCBI gene IDs SHALL be used."
* component[gene-studied].value[x] 1..1
* component[gene-studied].value[x] from HGNCVS (extensible)

* component[in-frame] ^short = "Specify whether the fusion is in frame"
* component[in-frame].code = LNC#74019-1
* component[in-frame].value[x] only boolean // to adapt in pyrog


Mapping: FhirOSIRISFusion
Source: Fusion
Target: "Fusion"
Id: fhir-osiris-Fusion
Title: "Fhir-osiris Fusion to osiris"
* subject -> "Fusion.Patient_Id"
* derivedFrom  -> "Fusion.Analysis_Ref"
* component[pathogenicity].valueCodeableConcept -> "Fusion.AlterationOnSample_Pathogenicity"
* component[actionability].valueBoolean -> "Fusion.AlterationOnSample_Actionability"
* component[proposed-for-orientation].valueBoolean -> "Fusion.AlterationOnSample_ProposedForOrientation"
* code -> "Fusion.Fusion_Type"
* extension[spanning-pairs].valueInteger -> "Fusion.Fusion_NbSpanningPair"
* extension[split-reads].valueInteger -> "Fusion.Fusion_NbSplitReads"
* component[in-frame].valueBoolean -> "Fusion.Fusion_InFrame"

ValueSet: FusionType
Title: "Fusion Type Value Set"
Description:  "Fusion Type"
* LNC#LA26331-1	    "translocation"
* OSIRIS#O28-1	    "readthrough"


Extension:  SpanningPairs
Id: spanning-pairs
Title: "Fusion Spanning Pairs"
Description: "Number of reads pairs spanning the fusion"
* value[x] only integer // To be adapted on pyrog


Extension:  SplitReads
Id: split-reads
Title: "Fusion Split Reads"
Description: "Number of reads containing the fusion point"
* value[x] only integer // To be adapted on pyrog
