Profile:        GenomeEntity
Parent:         MolecularSequence
Id:             genome-entity
Title:          "Genome Entity"
Description:    "The genome entity profile is used to indicate the genome reference used to build the Annotation."

* patient MS
* patient only Reference (onco-patient)

* type 0..0 MS

* extension contains genomeentityType named genomeentityType 1..1 MS
* extension[genomeentityType] ^short = "Molecular entity"
* extension[genomeentityType] ^definition = "OSIRIS code of the molecular entity where the genomic alteration is found."

* coordinateSystem = 0

* repository ^slicing.discriminator.type = #pattern
* repository ^slicing.discriminator.path = "type"
* repository ^slicing.rules = #open
* repository ^slicing.description = "Slice based on repository pattern"
* repository contains genome-entity-db 1..1

* repository[genome-entity-db].name 1..1 
* repository[genome-entity-db].name ^short = "The database listing the molecular entity"
* repository[genome-entity-db].name ^definition = "The database used to precisely name the molecular entity."

* repository[genome-entity-db].datasetId 1..1
* repository[genome-entity-db].datasetId ^short = "Molecular entity identifier"
* repository[genome-entity-db].datasetId ^definition = "The identifier of the molecular entity in the database."

Extension:  GenomeEntityType
Id: genomeentityType
Title: "GenomeEntityType"
Description: "Genome Entity Type"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from GenomeEntityType

Mapping: FhirOSIRISGenomeEntity
Source: genome-entity
Target: "Annotation"
Id: fhir-osiris-genomeentity
Title: "OSIRIS pivot files"

* patient -> "OSIRIS_pivot_Annotation.Patient_Id"
* extension[genomeentityType] -> "OSIRIS_pivot_Annotation.GenomeEntity_Type"
* repository[genome-entity-db].name -> "OSIRIS_pivot_Annotation.GenomeEntity_Database"
* repository[genome-entity-db].datasetId -> "OSIRIS_pivot_Annotation.GenomeEntity_Id"