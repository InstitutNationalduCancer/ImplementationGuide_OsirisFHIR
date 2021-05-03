Profile:        Expression
Parent:         Observation // Finding ?
Id:             expression
Title:          "Gene Expression"
Description:    "Observation of a Gene Expression variant derived from a SequencingAnalysis. The Expression profile is used to indicate the actionability, the pathogenecity and the gene expression quantity of the gene of interest."

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
* extension contains gene-expression-data-type named strandBias 0..1
* extension[gene-expression-data-type] MS
* extension[gene-expression-data-type] ^short = "Type of the expression value corresponding to the level of data processing"

// Others
* code = UMLS#C0017262

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"

* component contains actionability 0..1
* component contains proposed-for-orientation 0..1
* component contains pathogenicity 0..1
* component contains gene-studied 0..*
* component contains gene-expression 1..1


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

* component[gene-studied] ^short = "Gene studied [ID]"
* component[gene-studied] ^definition = "HUGO Gene Nomenclature Committee (HGNC) identifier for a gene. List the gene(s) examined in full or in part by the study. If the study addresses multiple genes, these can be recorded in multiple gene studied components. The required coding will use the HGNC gene symbol as the display text and HGNC gene ID as the code."
* component[gene-studied].code = LNC#48018-6
* component[gene-studied].value[x] only CodeableConcept
* component[gene-studied].value[x] ^short = "If no HGNC code issued for this gene yet, NCBI gene IDs SHALL be used."
* component[gene-studied].value[x] 1..1
* component[gene-studied].value[x] from HGNCVS (extensible)

* component[gene-expression] ^short = "Numerical value for expression"
* component[gene-expression].code = LNC#74019-1
* component[gene-expression].value[x] only integer


Mapping: FhirOSIRISExpression
Source: Expression
Target: "Expression"
Id: fhir-osiris-expression
Title: "Fhir-osiris Expression to osiris"
* subject -> "Expression.Patient_Id"
* derivedFrom  -> "Expression.Analysis_Ref"
* component[pathogenicity].valueCodeableConcept -> "Expression.AlterationOnSample_Pathogenicity"
* component[actionability].valueBoolean -> "Expression.AlterationOnSample_Actionability"
* component[proposed-for-orientation].valueBoolean -> "Expression.AlterationOnSample_ProposedForOrientation"
* component[gene-expression].valueInteger -> "Expression.GeneExpression_Value"
* code -> "GeneExpression.DataType"

Extension:  GeneExpressionDataType //https://github.com/siric-osiris/OSIRIS/wiki/VariantInSample_StrandBias
Id: gene-expression-data-type
Title: "Gene Expression Data Type"
Description: "Type of the expression value corresponding to the level of data processing"
* value[x] only CodeableConcept
* value[x] from GeneExpressionDataType
// TODO modify in pyrog

ValueSet: GeneExpressionDataType
Title: "Gene Expression Data Type Value Set"
Description:  "Gene Expression Data Type"
* OSIRIS#O84-1  "RawExpression"
* OSIRIS#O84-2  "NormalizedExpression"
* OSIRIS#O84-3  "TPMExpression"
* OSIRIS#O84-4  "RPKMExpression"