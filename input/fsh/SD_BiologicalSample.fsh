Profile:        BiologicalSample
Parent:         Specimen
Id:             onco-biological-sample
Title:          "Biological Sample"
Description:    "Description of a biological sample coming from an oncology Patient, with its storage condition."

// ---- Tumor cellularity ----
/* 
 * Tumor cellularity could be better in an extension ? This mapping have to be discussed
 * collection.quantity.value contains the tumor cellularity for now
 */

* subject MS
* subject only Reference (onco-patient)

* identifier 1..1 MS
* identifier ^short = "Identifier of the biological sample"
* identifier ^definition = "Unique identifier of the sample within the health center (barcode, text identifier)."

* parent 0..1 MS
* parent only Reference (BiologicalSample)
* parent ^short = "Identifier of the parent biological sample"
* parent ^definition = "Unique identifier of the parent sample (barcode, text identifier). For example, an aliquot or a sample extracted from another sample (e.g. histological number)."

* collection.collectedDateTime 1..1 MS
* collection.collectedDateTime ^short = "Collection date"
* collection.collectedDateTime ^definition = "The date of sample collection."

* type 1..1 MS
* type from BiologicalSampleNature (preferred)
* type ^short = "The nature of the sample"
* type ^definition = "Information indicating the nature of the sample."

* collection.bodySite 1..1 MS
* collection.bodySite from Topography (preferred)
* collection.bodySite ^short = "Topography of the tumor sample"
* collection.bodySite ^definition = "Anatomical location of the tumor specimen according to the International Classification of Diseases for Oncology."

* collection.quantity 0..1 MS
* collection.quantity.unit = UCUM#%
* collection.quantity.code = UMLS#C4055283 "Cancer Cellularity Measurement"
* collection.quantity ^short = "Percentage of tumor cells"
* collection.quantity ^definition = "The percentage of tumor cells quantified in the tumor sample."

* extension contains BiologicalSampleOrigin named BiologicalSampleOrigin 1..1 MS
* extension[BiologicalSampleOrigin] ^short = "The origin of the sample"
* extension[BiologicalSampleOrigin] ^definition = "Allows you to indicate the origin of the sample."

* condition 0..1 MS
* condition from StorageTemperature (extensible)
* condition.text = "Storage temperature of the sample."
* condition ^short = "Storage method"
* condition ^definition = "The storage temperature of the sample."

* extension contains BasedOnCondition named BasedOnCondition 0..1 MS
* extension[BasedOnCondition] ^short = "Tumur Pathology Event concerned by the sample"
* extension[BasedOnCondition] ^definition = "Tumur Pathology Event concerned by the sample."

Extension:  BasedOnCondition
Id: BasedOnCondition
Title: "Based On Condition (Tumor Pathology Event)"
Description: "Based On Condition (Tumor Pathology Event)"

* valueReference 0..1 MS
* valueReference only Reference (tumor-pathology-event)

Extension:  BiologicalSampleOrigin
Id: BiologicalSampleOrigin
Title: "Biological Sample Origin"
Description: "Biological Sample Origin"

* valueCodeableConcept 1..1 MS
* valueCodeableConcept from BiologicalSampleOrigin (extensible)
* valueCodeableConcept.text = "Origin of the sample"
* valueCodeableConcept ^short = "The origin of the sample"
* valueCodeableConcept ^definition = "Allows you to indicate the origin of the sample."


Mapping: FhirOSIRISBiologicalSample
Source: BiologicalSample
Target: "Patient"
Id: fhir-osiris
Title: "Fhir-osiris to osiris"
* -> "BiologicalSample" "Biological sample description"
* subject -> "OSIRIS_pivot_BiologicalSample.Patient_Id"
* identifier -> "OSIRIS_pivot_BiologicalSample.BiologicalSample_ExternalAccession"
* parent -> "OSIRIS_pivot_BiologicalSample.BiologicalSample_ParentExternalAccession"
* collection.collectedDateTime -> "OSIRIS_pivot_BiologicalSample.BiologicalSample_CollectDate"
* collection.bodySite -> "OSIRIS_pivot_BiologicalSample.BiologicalSample_TopographyCode"
* type -> "OSIRIS_pivot_BiologicalSample.BiologicalSample_Nature"
* extension[BiologicalSampleOrigin].valueCodeableConcept -> "OSIRIS_pivot_BiologicalSample.BiologicalSample_Origin"
* condition -> "OSIRIS_pivot_BiologicalSample.BiologicalSample_StorageTemperature"
* collection.quantity.value -> "OSIRIS_pivot_BiologicalSample.BiologicalSample_TumorCellularity"
* extension[BasedOnCondition].valueReference -> "OSIRIS_pivot_BiologicalSample.TumorPathologyEvent_Ref"
