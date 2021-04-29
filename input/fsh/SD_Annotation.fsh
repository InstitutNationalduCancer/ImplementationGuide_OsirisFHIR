Profile:        VariantAnnotation
Parent:         variant
Id:             variant-annotation
Title:          "Variant Annotation"
Description:    "The Annotation profile allows to add information about a SNP, a fusion, an expression or a copy number event. It is generally used to compare variant from a reference genome. For example, there can be multiple instance of Variant Annotation for one instance of identified SNP."
* obeys osiris-1

* subject only Reference (onco-patient)
* hasMember only Reference (genome-entity or annotation-reference)

* derivedFrom ^slicing.discriminator.type = #pattern
* derivedFrom ^slicing.discriminator.path = "reference"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "Slice based on referece pattern"
* derivedFrom contains alteration 1..1
* derivedFrom contains fusion-molecular-sequences 0..2
* derivedFrom contains analysis 1..1
* derivedFrom[alteration] only Reference (snp or fusion or expression or copy-number)
* derivedFrom[fusion-molecular-sequences] only Reference (molecular-sequence-5-prime or molecular-sequence-3-prime)
* derivedFrom[fusion-molecular-sequences] ^short = "Five prime and three prime positions of the fusion"


* derivedFrom[analysis] only Reference (sequencing-analysis) // To add on pyrog
* derivedFrom[analysis] ^short = "Analysis from which come this observation"

* component contains on-splicing-site 0..1
* component contains mutation-prediction 0..1

* component[on-splicing-site].code = UMLS#C0035687
* component[on-splicing-site].value[x] only boolean
* component[on-splicing-site] ^short = "Is the alteration on splicing site ?"

* component[mutation-prediction] ^short = "Variation effect prediction over the protein"
* component[mutation-prediction].code ^short = "Algorithm to predict the variation effect over the protein"
* component[mutation-prediction].code from MutationPrediction (example)
* component[mutation-prediction].value[x] only string
* component[mutation-prediction].value[x] ^short = "Prediction of the variation effect over the protein"
* component[mutation-prediction].interpretation ^short = "Level of confidence of the prediction of the variation effect over the protein"

// What can we do with these other components ?
// Variant.component:amino-acid-chg-type.valueCodeableConcept.code: Annotation > Annotation_AminoAcidChangeType
// Variant.component:cytogenetic-location.valueCodeableConcept.code: Annotation > Annotation_DNARegionName
// Variant.component:amino-acid-chg.valueCodeableConcept.code: Annotation > Annotation_AminoAcidChange
// Variant.component:dna-chg.valueCodeableConcept.code: Annotation > Annotation_DNASequenceVariation
// Variant.component:genomic-dna-chg.valueCodeableConcept.code: Annotation > Annotation_GenomicSequenceVariation
// Variant.component:dna-chg.valueCodeableConcept.code: Annotation > Annotation_RNASequenceVariation



Mapping: FhirOSIRISAnnotation
Source: variant-annotation
Target: "Annotation"
Id: fhir-osiris-annotation
Title: "Fhir-osiris annotation to osiris"
* subject -> "Annotation.Patient_Identifier"
* component[gene-studied].valueCodeableConcept.coding.code -> "Annotation.GenomeEntity_Symbol"
* component[mutation-prediction].code -> "Annotation.Annotation_MutationPredictionAlgorithm"
* component[mutation-prediction].valueString -> "Annotation.Annotation_MutationPredictionValue"
* component[mutation-prediction].interpretation -> "Annotation.Annotation_MutationPredictionScore"
* component[cytogenetic-location].valueCodeableConcept.text -> "Annotation.Annotation_DNARegionName"
* component[amino-acid-chg].valueCodeableConcept.coding.code -> "Annotation.Annotation_AminoAcidChange"
* component[genomic-dna-chg].valueCodeableConcept.coding.code -> "Annotation.Annotation_GenomicSequenceVariation"
* component[dna-chg].valueCodeableConcept.coding.code -> "Annotation.Annotation_DNASequenceVariation"
* component[dna-chg].valueCodeableConcept.coding.code -> "Annotation.Annotation_RNASequenceVariation" //To discuss
* component[on-splicing-site].valueBoolean -> "Annotation.Annotation_OnSplicingSite"
* derivedFrom -> "Annotation.Annotation_FusionPrimeEnd" //To discuss
* derivedFrom -> "Annotation.identifier (link to Expr, Fusion, SNP, CN)"
* derivedFrom -> "Annotation.identifier (MolecularSequence annotation, GenomeEntity)"


Invariant:  osiris-1
Description: "OsirisAnnotation.derivedFrom with osiris-molecularsequence5prime and osiris-molecularsequence5prime must be present if Annotation references a fusion"
Severity:   #error


ValueSet: MutationPrediction
Title: "Mutation prediction Value Set"
Description:  "Mutation prediction"
* OSIRIS#O63-1	"SIFT"
* OSIRIS#O63-2	"POLYPHEN2_HDIV"
* OSIRIS#O63-3	"MutationTaster"