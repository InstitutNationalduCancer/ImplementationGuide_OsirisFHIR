Profile:        CopyNumber
Parent:         variant
Id:             copy-number
Title:          "Variant Copy Number"
Description:    "Observation of a Copy Number variant derived from a SequencingAnalysis. The CopyNumber profile is used to indicate the pathogenicity, the actionability, the loss of heterozygosity, the cytogenetic location, the start and end position, the reference sequence assembly, the variation code, the segment intensity, the copy number found and the Copy Number segment size."

// References
* subject only Reference (onco-patient)

* derivedFrom ^slicing.discriminator.type = #pattern
* derivedFrom ^slicing.discriminator.path = "reference"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "Slice based on referece pattern"
* derivedFrom contains Analysis 1..1
* derivedFrom[Analysis] only Reference (sequencing-analysis) 
* derivedFrom[Analysis] ^short = "Analysis from which come this observation"

// Extensions

// Others
* component contains actionability 0..1
* component contains proposed-for-orientation 0..1
* component contains pathogenicity 0..1
* component contains loss-of-heterozygosity 0..1
* component contains segment-intensity 0..1


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


* component[loss-of-heterozygosity] ^short = "Is the segment located in a region of loss of heterozygosity ? (can be independant from copy number information"
* component[loss-of-heterozygosity].code = UMLS#C1881449
* component[loss-of-heterozygosity].value[x] only boolean // TODO : adapt in pyrog
// Initial valueSet
// UMLS:C1298908	No
// UMLS:C1298907	Yes
// UMLS:C0439673	Unknown

* component[segment-intensity] ^short = "Intensity of the measured signal"
* component[segment-intensity].code = UMLS#C2732930
* component[segment-intensity].value[x] only integer

// Variant.component:gene-studied: Annotation > GenomeEntity_Symbol
// Variant.component:cytogenetic-location: CopyNumber > Alteration_Chromosome
// Variant.component:ref-sequence-assembly: CopyNumber > Alteration_GenomeBuild
// Varant.component:cytogenetic-location: CopyNumber > Alteration_Cytoband
// Variant.component:exact-start-end: CopyNumber > Alteration_GenomicStart / Alteration_GenomicStop
// Variant.component:variation-code: CopyNumber > CNV_SegmentGenomicStatus
// Variant.component:copy-number: CopyNumber > CNV_CopyNumber

Mapping: FhirOSIRISCopyNumber
Source: copy-number
Target: "CopyNumber"
Id: fhir-osiris-copy-number
Title: "Fhir-osiris copynumber to osiris"
* subject -> "CopyNumber.patient_id"
* derivedFrom  -> "CopyNumber.Analysis_Ref"
* component[pathogenicity].valueCodeableConcept -> "CopyNumber.AlterationOnSample_Pathogenicity"
* component[actionability].valueBoolean -> "CopyNumber.AlterationOnSample_Actionability"
* component[proposed-for-orientation].valueBoolean -> "CopyNumber.AlterationOnSample_ProposedForOrientation"
* component[cytogenetic-location] -> "CopyNumber.Alteration_Chromosome"
* component[cytogenetic-location] -> "CopyNumber.Alteration_Cytoband"
* component[exact-start-end].valueRange.low -> "CopyNumber.Alteration_GenomicStart"
* component[exact-start-end].valueRange.high -> "CopyNumber.Alteration_GenomicStop"
* component[ref-sequence-assembly].valueCodeableConcept -> "CopyNumber.Alteration_GenomeBuild"
* component[variation-code].valueCodeableConcept -> "CopyNumber.CNV_SegmentGenomicStatus"
* component[segment-intensity].valueInteger -> "CopyNumber.CNV_SegmentIntensity"
* component[copy-number].valueQuantity -> "CopyNumber.CNV_CopyNumber"
* component[loss-of-heterozygosity].valueBoolean  -> "CopyNumber.CNV_LOH"
* component[variant-length]  -> "CopyNumber.CNV_SegmentSize"