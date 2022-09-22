Profile:        SNP
Parent:         variant
Id:             snp
Title:          "Single Nucleotide Polymorphism"
Description:    "Observation of a Single Nucleotide Polymorphism (SNP) derived from a Sequencing Analysis."

// References
* subject only Reference (onco-patient)

* derivedFrom ^slicing.discriminator.type = #pattern
* derivedFrom ^slicing.discriminator.path = "reference"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "Slice based on referece pattern"
* derivedFrom contains analysis 1..1
* derivedFrom[analysis] only Reference (sequencing-analysis) 
* derivedFrom[analysis] ^short = "Analysis from which come this observation"

// Extensions
* extension contains StrandBias named strand-bias 0..1
* extension[strand-bias] ^short = "Indication of the existence of strand bias at the variant position"
* extension[strand-bias] MS

// Others
* component contains actionability 0..1
* component contains proposed-for-orientation 0..1
* component contains pathogenicity 0..1


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

Mapping: FhirOSIRISVariant
Source: snp
Target: "SNP"
Id: fhir-osiris-variant
Title: "Fhir-osiris Variant to osiris"
* subject -> "Variant.Patient_Id"
* derivedFrom  -> "Variant.Analysis_Ref"
* component[pathogenicity].valueCodeableConcept -> "Variant.AlterationOnSample_Pathogenicity"
* component[actionability].valueBoolean -> "Variant.AlterationOnSample_Actionability"
* component[proposed-for-orientation].valueBoolean -> "Variant.AlterationOnSample_ProposedForOrientation"
* component[cytogenetic-location].valueCodeableConcept -> "Variant.Alteration_Chromosome"
* component[exact-start-end].valueRange.low -> "Variant.Alteration_GenomicStart"
* component[exact-start-end].valueRange.high -> "Variant.Alteration_GenomicStop"
* component[ref-sequence-assembly].valueCodeableConcept -> "Variant.Alteration_GenomeBuild"
* component[cytogenetic-location].valueCodeableConcept -> "Variant.Alteration_Cytoband"
* component[ref-allele].valueString -> "Variant.Variant_ReferenceAllele"
* component[alt-allele].valueString -> "Variant.Variant_AlternativeAllele"
* component[dna-chg-type].valueCodeableConcept -> "Variant.Variant_DNASequenceVariationType"
* component[allelic-read-depth].valueQuantity -> "Variant.VariantInSample_PositionReadDepth"
* component[allelic-read-depth].valueQuantity -> "Variant.VariantInSample_VariantReadDepth"
* extension[strand-bias].valueBoolean -> "Variant.VariantInSample_StrandBias"
* component[genomic-source-class].valueCodeableConcept -> "Variant.VariantInSample_GenomicSourceClass"
* component[allelic-state].valueCodeableConcept -> "Variant.VariantInSample_AllelicState"

Extension:  StrandBias //https://github.com/siric-osiris/OSIRIS/wiki/VariantInSample_StrandBias
Id: strand-bias
Title: "Strand bias"
Description: "Indication of the existence of strand bias at the variant position"
* value[x] only boolean

//Pathogenicity
ValueSet: Pathogenicity
Title: "Pathogenicity Value Set"
Description:  "Pathogenicity"
* OSIRIS#O81-1	"Pathogenic"
* OSIRIS#O81-2	"Likely pathogenic"
* OSIRIS#O81-3	"Uncertain significance"
* OSIRIS#O81-4	"Likely benign"
* OSIRIS#O81-5	"Benign"
