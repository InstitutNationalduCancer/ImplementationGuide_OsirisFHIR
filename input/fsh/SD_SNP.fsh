Profile:        SNP
Parent:         variant
Id:             snp
Title:          "Single Nucleotide Polymorphism"
Description:    "Observation of a Single Nucleotide Polymorphism (SNP) derived from a Sequencing Analysis."

* subject 1..1 
* subject MS
* subject only Reference (onco-patient)


* derivedFrom ^slicing.discriminator.type = #pattern
* derivedFrom ^slicing.discriminator.path = "reference"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "Slice based on referece pattern"
* derivedFrom contains analysis 1..1 MS
* derivedFrom[analysis] only Reference (sequencing-analysis) 
* derivedFrom[analysis] ^short = "Analysis from which come this observation"
* derivedFrom[analysis] ^definition = "Analysis from which come this observation"


* component contains pathogenicity 0..1 MS
* component[pathogenicity].code.coding = LNC#74019-1
* component[pathogenicity].value[x] only CodeableConcept 
* component[pathogenicity].value[x] from Pathogenicity (required)
* component[pathogenicity] ^short = "Pathogenicity"
* component[pathogenicity] ^definition = "Information to indicate the pathogenicity of the genetic alteration."


* component contains actionability 0..1 MS
* component[actionability].code.coding = LNC#93348-1
* component[actionability].value[x] only boolean 
* component[actionability] ^short = "Impact on patient treatment"
* component[actionability] ^definition = "Can (could) the genetic alteration affect the patient's response to treatment?"


* component contains proposed-for-orientation 0..1 MS
* component[proposed-for-orientation].code.coding = UMLS#C0449889
* component[proposed-for-orientation].value[x] only boolean
* component[proposed-for-orientation] ^short = "Impact on the choice of therapy"
* component[proposed-for-orientation] ^definition = "Was the genetic alteration used to guide the patient's therapeutic choice?"

* component contains chromosome 1..* MS
* component[chromosome].code.coding = LNC#48000-4
* component[chromosome].value[x] only CodeableConcept
* component[chromosome].valueCodeableConcept 1..1 MS
* component[chromosome].value[x] from Chromosome (required)
* component[chromosome] ^short = "Chromosome"
* component[chromosome] ^definition = "Chromosomal localization."

* component[cytogenetic-location] 0..1 MS
* component[cytogenetic-location].value[x] only CodeableConcept 
* component[cytogenetic-location].value[x] from CytoBand (required)
* component[cytogenetic-location] ^short = "Cytogenetic map"
* component[cytogenetic-location] ^definition = "Location on the cytogenetic map."


* component[exact-start-end].valueRange.low 1..1 MS
* component[exact-start-end].valueRange.low ^short = "Start position"
* component[exact-start-end].valueRange.low ^definition = "Starting position of the genetic alteration on the chromosome."


* component[exact-start-end].valueRange.high 1..1 MS
* component[exact-start-end].valueRange.high ^short = "End position"
* component[exact-start-end].valueRange.high ^definition = "End position of the genetic alteration on the chromosome."


* component[ref-sequence-assembly] 1..1 MS
* component[ref-sequence-assembly].value[x] only CodeableConcept 
* component[ref-sequence-assembly].value[x] from GenomeBuild (extensible)
* component[ref-sequence-assembly] ^short = "Reference genome version"
* component[ref-sequence-assembly] ^definition = "The version of the reference genome used for the reconstruction of the tumor genome."


* component[ref-allele] 1..1 MS
* component[ref-allele] ^short = "Reference allele"
* component[ref-allele] ^definition = "The allele seen on the forward strand of the reference genome."


* component[alt-allele] 1..1 MS
* component[alt-allele] ^short = "Alternative allele"
* component[alt-allele] ^definition = "The allele resulting from a somatic mutation event during tumorigenesis."


* component[dna-chg-type] 1..1 MS
* component[dna-chg-type].value[x] only CodeableConcept 
* component[dna-chg-type].value[x] from DNAChangeType (extensible)
* component[dna-chg-type] ^short = "Type"
* component[dna-chg-type] ^definition = "The type of mutation."

* component[allelic-read-depth] 1..1 MS
* component[allelic-read-depth] ^short = "Depth"
* component[allelic-read-depth] ^definition = "Number of 'reads' at the genomic position of the mutation."

* component contains variant-read-depth 1..1 MS
* component[variant-read-depth].code.coding = LNC#82121-5
* component[variant-read-depth].value[x] only Quantity
* component[variant-read-depth].valueQuantity 1..1 MS
* component[variant-read-depth] ^short = "Alternative allele depth"
* component[variant-read-depth] ^definition = "Number of reads containing the alternative allele at position."


* extension contains StrandBias named strand-bias 0..1 MS
* extension[strand-bias] ^short = "DNA strand bias"
* extension[strand-bias] ^definition = "Is there a DNA strand bias?"


* component[genomic-source-class] 1..1 MS
* component[genomic-source-class] ^short = "Cellular type"
* component[genomic-source-class] ^definition = "Cell type where the mutation occurs."


* component[allelic-state] 0..1 MS
* component[allelic-state] ^short = "Zygotia"
* component[allelic-state] ^definition = "Zygotia of the mutation."


Mapping: FhirOSIRISVariant
Source: snp
Target: "SNP"
Id: fhir-osiris-variant
Title: "Fhir-osiris Variant to osiris"
* subject -> "OSIRIS_pivot_Variant.Patient_Id"
* derivedFrom[analysis]  -> "OSIRIS_pivot_Variant.Analysis_Ref"
* component[pathogenicity].valueCodeableConcept -> "OSIRIS_pivot_Variant.AlterationOnSample_Pathogenicity"
* component[actionability].valueBoolean -> "OSIRIS_pivot_Variant.AlterationOnSample_Actionability"
* component[proposed-for-orientation].valueBoolean -> "OSIRIS_pivot_Variant.AlterationOnSample_ProposedForOrientation"
* component[chromosome].valueCodeableConcept -> "OSIRIS_pivot_Variant.Alteration_Chromosome"
* component[exact-start-end].valueRange.low -> "OSIRIS_pivot_Variant.Alteration_GenomicStart"
* component[exact-start-end].valueRange.high -> "OSIRIS_pivot_Variant.Alteration_GenomicStop"
* component[ref-sequence-assembly].valueCodeableConcept -> "OSIRIS_pivot_Variant.Alteration_GenomeBuild"
* component[cytogenetic-location].valueCodeableConcept -> "OSIRIS_pivot_Variant.Alteration_Cytoband"
* component[ref-allele].valueString -> "OSIRIS_pivot_Variant.Variant_ReferenceAllele"
* component[alt-allele].valueString -> "OSIRIS_pivot_Variant.Variant_AlternativeAllele"
* component[dna-chg-type].valueCodeableConcept -> "OSIRIS_pivot_Variant.Variant_DNASequenceVariationType"
* component[allelic-read-depth].valueQuantity -> "OSIRIS_pivot_Variant.VariantInSample_PositionReadDepth"
* component[variant-read-depth].valueQuantity -> "OSIRIS_pivot_Variant.VariantInSample_VariantReadDepth"
* extension[strand-bias].valueBoolean -> "OSIRIS_pivot_Variant.VariantInSample_StrandBias"
* component[genomic-source-class].valueCodeableConcept -> "OSIRIS_pivot_Variant.VariantInSample_GenomicSourceClass"
* component[allelic-state].valueCodeableConcept -> "OSIRIS_pivot_Variant.VariantInSample_AllelicState"

Extension:  StrandBias 
Id: strand-bias
Title: "Strand bias"
Description: "Indication of the existence of strand bias at the variant position"
* value[x] only boolean

