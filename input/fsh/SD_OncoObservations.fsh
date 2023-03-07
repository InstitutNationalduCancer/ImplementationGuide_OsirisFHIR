/*
#####################################
######### PerformanceStatus #########
#####################################
*/

Profile:        PerformanceStatus
Parent:         Observation
Id:             performance-status
Title:          "Performance Status"
Description:    "Oncology-patient performance status observation (see https://www.ncbi.nlm.nih.gov/books/NBK97482/ for more information)."
// References
* subject only Reference (onco-patient)
* focus only Reference (tumor-pathology-event)
* code = UMLS#C0451140 "ECOG scale for physical assessment"
* value[x] only integer // TumorPathologyEvent > TumorPathologyEvent_PerformanceStatus

Mapping: FhirOSIRISPerformanceStatus
Source: PerformanceStatus
Target: "TumorPathologyEvent"
Id: fhir-osiris-performance-status
Title: "Fhir-osiris performance status to osiris"
* -> "PerformanceStatus" "PerformanceStatus result"
* valueInteger -> "TumorPathologyEvent.TumorPathologyEvent_PerformanceStatus"
* subject -> "TumorPathologyEvent.Patient_Identifier"

/*
#######################
######### TNM #########
#######################
*/
Profile:        OncoTNM
Parent:         Observation
Id:             onco-tnm
Title:          "TNM"
Description:    "TNM Classification of malignant tumors used to indicate the tumor, node and metastasis state of a Tumor Pathology Event."
// References
* subject only Reference (onco-patient)
* focus only Reference (tumor-pathology-event)

* code = UMLS#C1515169 "TNM Staging System"
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on component pattern"
* component contains tnm-t 0..1
* component contains tnm-n 0..1
* component contains tnm-m 0..1
* component contains tnm-type 0..1

* component[tnm-t].code = LNC#21905-5 "Primary tumor.clinical [Class] Cancer" 
* component[tnm-t] ^short = "Size of the tumor, propagation the site of the primary tumor"
* component[tnm-t].value[x] only string //tnm-t

* component[tnm-n].code = LNC#21906-3 "Regional lymph nodes.clinical [Class] Cancer" 
* component[tnm-n] ^short = "Propagation at the ganglion level"
* component[tnm-n].value[x] only string //tnm-n

* component[tnm-m].code = LNC#21907-1 "Distant metastases.clinical [Class] Cancer" 
* component[tnm-m] ^short = "Remote propagation, presence of metastases"
* component[tnm-m].value[x] only string //tnm-m

* component[tnm-type].code = LNC#75620-5 "TNM clinical staging"
* component[tnm-type] ^short = "c, p, r,..."
* component[tnm-type].value[x] only CodeableConcept 

Mapping: FhirOSIRISTNM
Source: onco-tnm
Target: "TNM"
Id: fhir-osiris-tnm
Title: "Fhir-osiris TNM to osiris TNM"
* subject -> "TNM.Patient_Identifier"
* focus -> "TNM.TumorPathologyEvent_Ref"
* component[tnm-type].valueCodeableConcept.coding.version -> "TNM.TNM_Version"
* component[tnm-type].valueCodeableConcept.coding.code -> "TNM.TNM_Type"
* component[tnm-t].valueString -> "TNM.TNM_T"
* component[tnm-n].valueString -> "TNM.TNM_N"
* component[tnm-m].valueString -> "TNM.TNM_M"


/*
#############################
######### Biomarker #########
#############################
*/

// Profile:        Biomarker
// Parent:         Observation
// Id:             biomarker
// Title:          "Biomarker"
// Description:    "Biomarker Observation about a patient from BiomarkerCode ValueSet."
// // References
// * subject only Reference (onco-patient)
// * derivedFrom only Reference (analysis)

// // Other
// * code from BiomarkerCode (extensible)
// * value[x] 1..1
// * value[x] only Quantity 

// Mapping: FhirOSIRISBiomarker
// Source: Biomarker
// Target: "Biomarker"
// Id: fhir-osiris-biomarker
// Title: "Fhir-osiris biomarker to osiris"
// * subject -> "Biomarker.Patient_Identifier"
// * derivedFrom -> "AdverseEvent.Analysis_Ref"
// * code -> "AdverseEvent.Biomarker_Code"
// * valueQuantity.value -> "AdverseEvent.Biomarker_Code"
// * valueQuantity.unit -> "Biomarker_Unit"
