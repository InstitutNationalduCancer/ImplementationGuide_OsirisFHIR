Profile:        Biomarker
Parent:         Observation
Id:             biomarker
Title:          "Biomarker"
Description:    "Biomarker Observation about a patient from BiomarkerCode ValueSet."

* subject MS
* subject only Reference (onco-patient) 
* derivedFrom MS
* derivedFrom only Reference (analysis)

* code 1..1 MS
* code from BiomarkerCode (extensible)
* code ^short = "Biomarker name"
* code ^definition = "The name of the biomarker."

* value[x] 1..1 MS
* value[x] only Quantity 
* valueQuantity.value 1..1 MS
* valueQuantity.value ^short = "Biomarker measurement"
* valueQuantity.value ^definition = "The expression value of the biomarker."

* valueQuantity.unit MS
* valueQuantity.unit ^short = "Unit of measurement"
* valueQuantity.unit ^definition = "The biomarker expression unit."

Mapping: FhirOSIRISBiomarker
Source: Biomarker
Target: "Biomarker"
Id: fhir-osiris-biomarker
Title: "OSIRIS pivot files"
* subject -> "OSIRIS_pivot_Biomarker.Patient_Identifier"
* derivedFrom -> "AdveOSIRIS_pivot_BiomarkerrseEvent.Analysis_Ref"
* code -> "OSIRIS_pivot_Biomarker.Biomarker_Code"
* valueQuantity.value -> "OSIRIS_pivot_Biomarker.Biomarker_Code"
* valueQuantity.unit -> "OSIRIS_pivot_Biomarker.Biomarker_Unit"