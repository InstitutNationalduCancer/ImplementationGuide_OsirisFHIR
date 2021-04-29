Profile:        GenomeEntity
Parent:         MolecularSequence
Id:             genome-entity
Title:          "Genome Entity"
Description:    "The genome entity profile is used to indicate the genome reference used to create the Annotation."
* patient only Reference (onco-patient)

* type from GenomeEntityType (required)
* coordinateSystem = 0

* repository ^slicing.discriminator.type = #pattern
* repository ^slicing.discriminator.path = "repository.type"
* repository ^slicing.rules = #open
* repository ^slicing.description = "Slice based on repository pattern"
* repository contains genome-entity-db 0..1
* repository[genome-entity-db].name ^short = "Database name"
* repository[genome-entity-db].datasetId ^short = "GenomeEntity Database ID"


ValueSet: GenomeEntityType
Title: "Genome entity type Value Set"
Description: "Type of genome entity"
* UMLS#C0017337	"Gene"
* UMLS#C1101610	"miRNA"
* UMLS#C1956352	"piRNA"
* UMLS#C0035696	"mRNA"
* UMLS#C0887909	"ncRNA"
* UMLS#C0079941	"ORF"


Profile:        AnnotationReference
Parent:         MolecularSequence
Id:             annotation-reference
Title:          "Annotation Reference"
Description:    "Annotation reference"
* patient only Reference (onco-patient)

* coordinateSystem = 0
* referenceSeq.orientation ^short = "Strand annotation"
* referenceSeq.referenceSeqId from ReferenceType (extensible)

* repository ^slicing.discriminator.type = #pattern
* repository ^slicing.discriminator.path = "repository.type"
* repository ^slicing.rules = #open
* repository ^slicing.description = "Slice based on repository pattern"
* repository contains reference-db 0..1
* repository[reference-db].name ^short = "Reference database name"
* repository[reference-db].datasetId ^short = "Annotation Database value"

* repository contains pfam-domain 0..1
* repository[pfam-domain].name = "pfam"
* repository[pfam-domain].datasetId ^short = "Pfam ID"
* repository[pfam-domain].readsetId ^short = "Pfam domain"

ValueSet: ReferenceType
Title: "Reference Type Value Set"
Description:  "Annotation reference type"
* OSIRIS#O90-1	"Fusion transcript"
* OSIRIS#O90-3	"Population frequency"
* OSIRIS#O90-4	"Protein reference"
* OSIRIS#O90-5	"Transcript reference"
* OSIRIS#O90-6	"Variant id"

Profile:        MolecularSequence3Prime
Parent:         MolecularSequence
Id:             molecular-sequence-3-prime
Title:          "3 Prime Molecular Sequence"
Description:    "3 prime molecular sequence is for referencing the two edges of Fusion observation"
* patient only Reference (onco-patient)

* type from GenomeEntityType (required)
* coordinateSystem = 0

* referenceSeq 1..1 // Must be forced because the information is needed to justify this instance
* referenceSeq.chromosome from GeneticMaterial (extensible)
* referenceSeq.chromosome ^short = "Fusion chromosome 3 prime"
* referenceSeq.strand = #watson
* referenceSeq.windowStart ^short = "Fusion 3 prime position"


Profile:        MolecularSequence5Prime
Parent:         MolecularSequence
Id:             molecular-sequence-5-prime
Title:          "5 Prime Molecular Sequence"
Description:    "5 prime molecular sequence is for referencing the two edges of Fusion observation"
* patient only Reference (onco-patient)

* type from GenomeEntityType (required)
* coordinateSystem = 0

* referenceSeq 1..1 // Must be forced because the information is needed to justify this instance
* referenceSeq.chromosome from GeneticMaterial (extensible)
* referenceSeq.chromosome ^short = "Fusion chromosome 5 prime"
* referenceSeq.strand = #crick
* referenceSeq.windowStart ^short = "Fusion 5 prime position"


ValueSet: GeneticMaterial
Title: "GeneticMaterial"
Description:  "Genetic material"
* codes from valueset http://loinc.org/vs/LL2938-0
* OSIRIS#O19-1	"MT"
* OSIRIS#O19-2	"viral"
* OSIRIS#O19-3	"bacterial"
* UMLS#C0439673	"Unknown"