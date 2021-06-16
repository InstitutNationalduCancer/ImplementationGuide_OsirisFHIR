Profile:        TumorPathologyEvent
Parent:         Condition
Id:             tumor-pathology-event
Title:          "Tumor Pathology Event"
Description:    "Tumor Pathology Event (TPE) Condition describing a tumoral event: reference to the parent TPE, laterality, morphology."

// References
* subject only Reference (onco-patient)
* code from TumorPathologyEventType (required)
* code ^short = "C1882062 | C2939419 | C0521158 | C0677930 | C0439673. Describe the 'Cancer' event as a global disease, as well as the various events constituting this disease (primary tumor, local relapse, metastatic relapse...)"
* bodySite from Topography (extensible)

// Extensions
* extension contains dueTo-tumor-pathology-event named due-to 0..1
* extension[due-to] MS
* extension[due-to] ^short = "The parent tumoral event"

* extension contains Laterality named laterality 0..1
* extension[laterality] MS
* extension[laterality] ^short = "Laterality of location"

// Others
* stage ^slicing.discriminator.type = #pattern
* stage ^slicing.discriminator.path = "type.code"
* stage ^slicing.rules = #open
* stage ^slicing.description = "Slice based on stage pattern"

* stage contains morphology 0..1
* stage[morphology] ^short = "International code of lesion / histological type / morphology of the tumoral event"
* stage[morphology].type = UMLS#116676008
* stage[morphology].summary 1..1
* stage[morphology].summary from Morphology (extensible)

// * stage contains laterality 0..1
// * stage[laterality] ^short = "Cancer laterality"
// * stage[laterality].type = LNC#20228-3
// * stage[laterality].summary 1..1
// * stage[laterality].summary ^short = "Laterality code"
// * stage[laterality].summary from Laterality (extensible)



Extension:  Laterality
Id: laterality
Title: "Laterality"
Description: "Laterality of location (if it exists)"
* value[x] only CodeableConcept // This attribute should be a CodeableConcept or a Coding ?
* valueCodeableConcept from Laterality (required)
* valueCodeableConcept ^short = "C0238767 | C0205091 | C2939193 | C1272460 | C0205090 | C0439673"

Mapping: FhirOSIRISTPE
Source: TumorPathologyEvent
Target: "TumorPathologyEvent"
Id: fhir-osirisTPE
Title: "Fhir-osiris to osiris"
* -> "TumorPathologyEvent" "Tumor pathology event description"
* subject -> "Patient_id"
* evidence.detail -> "Specimen.identifier (joins on TumorPathologyEvent_Ref)"
* extension[due-to] -> "TumorPathologyEvent.TumorPathologyEvent_Parent_Ref"
* code -> "TumorPathologyEvent.TumorPathologyEvent_Type"
* onsetDateTime -> "TumorPathologyEvent.TumorPathologyEvent_StartDate"
* abatementDateTime -> "TumorPathologyEvent.TumorPathologyEvent_EndDate"
* recordedDate -> "TumorPathologyEvent.TumorPathologyEvent_DiagnosisDate"
* bodySite.coding.code -> "TumorPathologyEvent.TumorPathologyEvent_TopographyCode"
* stage[morphology].type.coding.code -> "TumorPathologyEvent.TumorPathologyEvent_MorphologyCode"
* extension[laterality].valueCodeableConcept.coding.code -> "TumorPathologyEvent.TumorPathologyEvent_Laterality"

ValueSet: TumorPathologyEventType
Title: "Tumor Pathology Event Type Value Set"
Description:  "Tumor pathology event type"
* UMLS#C1882062	"Neoplasm"
* UMLS#C2939419	"Metastatic Malignant Neoplasm (NCI:C36263)"
* UMLS#C0521158	"Recurrent tumor"
* UMLS#C0677930	"Primary tumor"
* UMLS#C0439673	"Unknown"


ValueSet: Laterality
Title: "Tumor Laterality Value Set"
Description:  "Tumor laterality"
* UMLS#C0238767	"Bilateral"
* UMLS#C0205091	"Left"
* UMLS#C2939193	"Median (qualifier value)"
* UMLS#C1272460	"Not Applicable"
* UMLS#C0205090	"Right"
* UMLS#C0439673	"Unknown"


Extension:      DueToTumorPathologyEvent
Parent:         http://hl7.org/fhir/StructureDefinition/condition-dueTo
Id:             dueTo-tumor-pathology-event
Title:          "Tumor Pathology Event Parent"
Description:    "Reference the Tumor Pathology Event from which the metastasis comes from."
* value[x] only Reference (tumor-pathology-event)