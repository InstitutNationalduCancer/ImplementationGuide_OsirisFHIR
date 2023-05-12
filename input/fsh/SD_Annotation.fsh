Profile:        VariantAnnotation
Parent:         variant
Id:             variant-annotation
Title:          "Variant Annotation"
Description:    "The Annotation profile allows to add information about a SNP, a fusion, an expression or a copy number event. It is generally used to compare variant from a reference genome. There can be multiple instance of Variant Annotation Resource for one instance of SNP, CopyNumber, Expression or Fusion Resource."

* subject MS
* subject only Reference (onco-patient)


* hasMember 2..2 MS
* hasMember only Reference (genome-entity or annotation-reference)


* derivedFrom ^slicing.discriminator.type = #pattern
* derivedFrom ^slicing.discriminator.path = "reference"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "Slice based on referece pattern"

* derivedFrom 1..2 MS
* derivedFrom only Reference (snp or fusion or expression or copy-number or molecular-sequence-5-prime or molecular-sequence-3-prime)

* component[gene-studied] 0..1 MS
* component[gene-studied].valueCodeableConcept.text ^short = "Gene name"
* component[gene-studied].valueCodeableConcept.text ^definition = "Gene symbol following the HUGO (Human Genome Organisation) nomenclature"


* component[dna-chg-type] 1..1 MS
* component[dna-chg-type] ^short = "Type of alteration"
* component[dna-chg-type] ^definition = "The OSIRIS code of the type of genetic alteration."
* component[dna-chg-type].valueCodeableConcept.coding 1..1 MS
* component[dna-chg-type].valueCodeableConcept from AlterationType
* component[dna-chg-type].valueCodeableConcept ^short = "Type of alteration"
* component[dna-chg-type].valueCodeableConcept ^definition = "The OSIRIS code of the type of genetic alteration."


* component contains mutation-prediction-software 0..1 MS
* component[mutation-prediction-software].code = LNC#LP91038-7
* component[mutation-prediction-software].code.text = "Prediction software"
* component[mutation-prediction-software].value[x] only CodeableConcept
* component[mutation-prediction-software].valueCodeableConcept from MutationPrediction (example)
* component[mutation-prediction-software].valueCodeableConcept ^short = "Prediction software"
* component[mutation-prediction-software].valueCodeableConcept ^definition = "The name of the software used to predict the impact of the alteration on the protein."


* component contains mutation-prediction-score 0..1 MS
* component[mutation-prediction-score].code = LNC#LP70194-3
* component[mutation-prediction-score].code.text = "Prediction of the variation effect over the protein"
* component[mutation-prediction-score].value[x] only Quantity
* component[mutation-prediction-score].value[x] ^short = "Prediction of the variation effect over the protein"
* component[mutation-prediction-score].value[x] ^definition = "Prediction of the variation effect over the protein"


* component contains mutation-prediction-evidence-value 0..1 MS
* component[mutation-prediction-evidence-value].code = LNC#93044-6
* component[mutation-prediction-evidence-value].code.text = "Confidence score"
* component[mutation-prediction-evidence-value].value[x] only string
* component[mutation-prediction-evidence-value].valueString ^short = "Confidence score"
* component[mutation-prediction-evidence-value].valueString ^definition = "Confidence score given by the software."


* component[cytogenetic-location] 0..1 MS
* component[cytogenetic-location] ^short = "Gene region"
* component[cytogenetic-location] ^definition = "Name of the functional region of the gene containing the genetic alteration (example: exon 3)."
* component[cytogenetic-location].valueCodeableConcept.text ^short = "Gene region"
* component[cytogenetic-location].valueCodeableConcept.text ^definition = "Name of the functional region of the gene containing the genetic alteration (example: exon 3)." 


* component[amino-acid-chg] 0..1 MS
* component[amino-acid-chg] ^short = "Incidence on the protein"
* component[amino-acid-chg] ^definition = "Incidence of genetic alteration according to the HGVS (Human Genome Variation Society) nomenclature. (example: p.Arg2322Cys)"


* component[amino-acid-chg-type] 0..1 MS
* component[amino-acid-chg-type] ^short = "Nomenclature of changes at protein-level"
* component[amino-acid-chg-type] ^definition = "Nomenclature of changes at protein-level"
* component[amino-acid-chg-type].valueCodeableConcept ^short = "Nomenclature of changes at protein-level"
* component[amino-acid-chg-type].valueCodeableConcept ^definition = "Nomenclature of changes at protein-level"


* component[genomic-dna-chg] 0..1 MS
* component[genomic-dna-chg] ^short = "Genomic incidence"
* component[genomic-dna-chg] ^definition = "Incidence of genetic alteration according to the HGVS (Human Genome Variation Society) nomenclature. (example: g.289G>A)"


* component[dna-chg] 0..1 MS
* component[dna-chg] ^short = "Incidence on the coding region of the gene"
* component[dna-chg] ^definition = "If the genetic alteration is located on a coding region of the gene, the incidence on this region is indicated according to the HGVS (Human Genome Variation Society) nomenclature. (example: c.12G>A)."


* component contains rna-chg 0..1 MS
* component[rna-chg] ^short = "Incidence on the transcript"
* component[rna-chg] ^definition = "Incidence of genetic alteration according to the HGVS (Human Genome Variation Society) nomenclature. (example: r.67g>u)"
* component[rna-chg].code = LNC#LP232001-0
* component[rna-chg].code.text = "Incidence on the transcript"
* component[rna-chg].value[x] only CodeableConcept
* component[rna-chg].valueCodeableConcept from HGVS (extensible)


* component contains on-splicing-site 0..1 MS
* component[on-splicing-site].code = UMLS#C0035687
* component[on-splicing-site].value[x] only boolean
* component[on-splicing-site] ^short = "Splice site"
* component[on-splicing-site] ^definition = "Is the variant at an alternative splice site?" 


Mapping: FhirOSIRISAnnotation
Source: variant-annotation
Target: "Annotation"
Id: fhir-osiris-annotation
Title: "OSIRIS pivot files"
* subject -> "OSIRIS_pivot_Annotation.Patient_Id"
* component[gene-studied].valueCodeableConcept.coding.code -> "OSIRIS_pivot_Annotation.GenomeEntity_Symbol"
* component[dna-chg-type].valueCodeableConcept.coding.code -> "OSIRIS_pivot_Annotation.AlterationOnSample_AlterationType"
* component[mutation-prediction-software].valueCodeableConcept.coding.code -> "OSIRIS_pivot_Annotation.Annotation_MutationPredictionAlgorithm"
* component[mutation-prediction-evidence-value].valueString -> "OSIRIS_pivot_Annotation.Annotation_MutationPredictionValue"
* component[mutation-prediction-score].valueQuantity.value -> "OSIRIS_pivot_Annotation.Annotation_MutationPredictionScore"
* component[cytogenetic-location].valueCodeableConcept.text -> "OSIRIS_pivot_Annotation.Annotation_DNARegionName"
* component[amino-acid-chg].valueCodeableConcept.coding.code -> "OSIRIS_pivot_Annotation.Annotation_AminoAcidChange"
* component[amino-acid-chg-type].valueCodeableConcept.coding.code -> "OSIRIS_pivot_Annotation.Annotation_AminoAcidChangeType"
* component[genomic-dna-chg].valueCodeableConcept.coding.code -> "OSIRIS_pivot_Annotation.Annotation_GenomicSequenceVariation"
* component[dna-chg].valueCodeableConcept.coding.code -> "OSIRIS_pivot_Annotation.Annotation_DNASequenceVariation"
* component[rna-chg].valueCodeableConcept.coding.code -> "OSIRIS_pivot_Annotation.Annotation_RNASequenceVariation" //To discuss
* derivedFrom -> "OSIRIS_pivot_Annotation.Annotation_FusionPrimeEnd"
* component[on-splicing-site] -> "Missing"


