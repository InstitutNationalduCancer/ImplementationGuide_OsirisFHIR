Instance: fhir-osiris-genome-entity-1
InstanceOf: GenomeEntity
Description: "Example of Instance from OSIRIS_pivot_Annotations.csv"

* patient = Reference(fhir-osiris-example-patient)
* extension[genomeentityType].valueCodeableConcept = UMLS#C0439673
* repository[genome-entity-db].name = "Unknown"
* repository[genome-entity-db].datasetId = "Unknown"
* repository[genome-entity-db].type = http://hl7.org/fhir/R4/valueset-repository-type.html#other