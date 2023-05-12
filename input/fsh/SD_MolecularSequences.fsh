Profile:        MolecularSequence3Prime
Parent:         MolecularSequence
Id:             molecular-sequence-3-prime
Title:          "3 Prime Molecular Sequence"
Description:    "3 prime molecular sequence is for referencing the 3' edge of a Fusion Observation."
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
Description:    "5 prime molecular sequence is for referencing the 5' edge of a Fusion Observation."
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