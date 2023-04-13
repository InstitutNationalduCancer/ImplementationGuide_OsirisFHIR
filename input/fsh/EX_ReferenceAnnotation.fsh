Instance: fhir-osiris-annotation-reference-1
InstanceOf: AnnotationReference
Description: "Example of Instance from OSIRIS_pivot_Annotations.csv"

* patient = Reference(fhir-osiris-example-patient)
/* * referenceSeq.orientation -> missing but optional */
* referenceSeq.referenceSeqId = OSIRIS#O90-1
* repository[reference-db].name = "COSMIC"
* repository[reference-db].datasetId = "COSM760"
* repository[reference-db].type = http://hl7.org/fhir/R4/valueset-repository-type.html#other
* repository[pfam-domain].type = http://hl7.org/fhir/R4/valueset-repository-type.html#directlink
* repository[pfam-domain].url = "http://pfam.xfam.org/"
* repository[pfam-domain].datasetId = "PI3K_rbd; PI3-kinase family, ras-binding domain"
* repository[pfam-domain].readsetId = "pfam00794"
