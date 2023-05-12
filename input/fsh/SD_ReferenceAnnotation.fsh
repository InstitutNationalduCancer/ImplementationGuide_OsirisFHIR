Profile:        AnnotationReference
Parent:         MolecularSequence
Id:             annotation-reference
Title:          "Annotation Reference"
Description:    "The annotation reference profile indicates the reference genome / pfam domain / database used to generate the Annotation instance linked."

* patient MS
* patient only Reference (onco-patient)

* coordinateSystem = 0

* referenceSeq.orientation 0..1 MS
* referenceSeq.orientation ^short = "DNA strand orientation"
* referenceSeq.orientation ^definition = "Strand orientation of the annotation DNA"

* referenceSeq.referenceSeqId 1..1 MS
* referenceSeq.referenceSeqId from ReferenceType (extensible)
* referenceSeq.referenceSeqId ^short = "Type of the referenced annotation"
* referenceSeq.referenceSeqId ^definition = "Type of the annotation referenced to describe the molecular entity"


* repository ^slicing.discriminator.type = #pattern
* repository ^slicing.discriminator.path = "type"
* repository ^slicing.rules = #open
* repository ^slicing.description = "Slice based on repository pattern"
* repository contains reference-db 1..1

* repository[reference-db].type = http://hl7.org/fhir/R4/valueset-repository-type.html#other

* repository[reference-db].name 1..1 MS
* repository[reference-db].name ^short = "Reference database name"
* repository[reference-db].name ^definition = "Reference database name"

* repository[reference-db].datasetId 1..1 MS
* repository[reference-db].datasetId ^short = "Identifier of the annotation in the database"
* repository[reference-db].datasetId ^definition = "Identifier of the annotation in the database"

* repository contains pfam-domain 0..1 MS
* repository[pfam-domain].name = "pfam"
* repository[pfam-domain].url = "http://pfam.xfam.org/"
* repository[pfam-domain].type = http://hl7.org/fhir/R4/valueset-repository-type.html#directlink

* repository[pfam-domain].datasetId 0..1 MS
* repository[pfam-domain].datasetId ^short = "Pfam ID"
* repository[pfam-domain].datasetId ^definition = "Identifier in the database of protein families and protein domains (Pfam) containing the genetic alteration."

* repository[pfam-domain].readsetId 0..1 MS
* repository[pfam-domain].readsetId ^short = "Pfam domain name"
* repository[pfam-domain].readsetId ^definition = "Name of the protein domain in the Pfam database containing the genetic alteration."

Mapping: FhirOSIRISAnnotationReference
Source: annotation-reference
Target: "Annotation Reference"
Id: fhir-osiris-annotation-reference
Title: "OSIRIS pivot files"
* patient -> "OSIRIS_pivot_Annotation.Patient_Id"
* referenceSeq.orientation -> "OSIRIS_pivot_Annotation.Annotation_Strand"
* referenceSeq.referenceSeqId -> "OSIRIS_pivot_Annotation.Annotation_ReferenceType"
* repository[reference-db].name -> "OSIRIS_pivot_Annotation.Annotation_ReferenceDatabase"
* repository[reference-db].datasetId -> "OSIRIS_pivot_Annotation.Annotation_ReferenceValue"
* repository[pfam-domain].datasetId -> "OSIRIS_pivot_Annotation.Annotation_PfamId"
* repository[pfam-domain].readsetId -> "OSIRIS_pivot_Annotation.Annotation_PfamDomain"
