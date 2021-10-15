Profile:        BiologicalSample
Parent:         Specimen
Id:             onco-biological-sample
Title:          "Biological Sample"
Description:    "Description of a biological sample coming from an oncology Patient, with its storage condition."
* subject only Reference (onco-patient)
* type from BiologicalSampleNature
* parent only Reference (BiologicalSample)

// ---- Tumor cellularity ----
/* 
 * Tumor cellularity could be better in an extension ? This mapping have to be discussed
 * collection.quantity.value contains the tumor cellularity for now
 */
* collection.quantity ^short = "Percentage of tumor cells quantified in the sample"
* collection.quantity.unit = UCUM#%
* collection.quantity.code = UMLS#C4055283

* collection.bodySite from Topography (preferred)

* condition ^slicing.discriminator.type = #pattern
* condition ^slicing.discriminator.path = "code"
* condition ^slicing.rules = #open
* condition ^slicing.description = "Slice based on the condition.code pattern"

* condition contains storage-temperature 0..1
* condition[storage-temperature] from StorageTemperature (extensible)
* condition[storage-temperature] ^short = "Mode of preservation"

* condition contains origin 0..1
* condition[origin] from BiologicalSampleOrigin (extensible)
* condition[origin] ^short = "Nature of the original sample (Healthy or Tumoral)"



Mapping: FhirOSIRISBiologicalSample
Source: BiologicalSample
Target: "Patient"
Id: fhir-osiris
Title: "Fhir-osiris to osiris"
* -> "BiologicalSample" "Biological sample description"
* subject -> "Patient_id"
* identifier -> "BiologicalSample_ExternalAccession"
* parent -> "BiologicalSample_ParentExternalAccession"
* collection.collectedDateTime -> "BiologicalSample_CollectDate"
* collection.bodySite -> "BiologicalSample_TopographyCode"
* type -> "BiologicalSample_Nature"
* condition -> "BiologicalSample_origin"
* condition -> "BiologicalSample_StorageTemperature"
* collection.quantity.value -> "BiologicalSample_TumorCellularity"


ValueSet: BiologicalSampleNature
Title: "Biological Sample Nature Value Set"
Description:  "Biological sample nature"
* UMLS#C0005767	"Blood"
* UMLS#C0032105	"Plasma"
* UMLS#C0033684	"Protein"
* UMLS#C0035668	"RNA"
* UMLS#C0012854	"DNA"
* UMLS#C1321301	"Peripheral Blood Mononuclear Cell"
* UMLS#C0085983	"Tumor Cell Line"
* UMLS#C1548793	"Frozen Specimen"
* UMLS#C1519524	"Paraffin Embedded Tissue (FFPE)"
* UMLS#C0042036	"Urine"
* UMLS#C0439673	"Unknown"
* UMLS#C0036087 "Saliva" 
* UMLS#C0229671 "Serum"
* UMLS#C3827014 "Circulating Tumor-Derived DNA" 
* UMLS#C0522537 "Xenograft" 

ValueSet: BiologicalSampleOrigin
Title: "Biological Sample Origin Value Set"
Description:  "Biological sample origin"
* OSIRIS#O59-1	"Normal"
* OSIRIS#O59-2	"Tumoral"
* UMLS#C0439673	"Unknown"

ValueSet: StorageTemperature
Title: "Storage temperature Value Set"
Description:  "Sample storage temperature"
* OSIRIS#C60-1	"Room temperature"
* OSIRIS#C60-2	"Between 2 °C and 10 °C"
* OSIRIS#C60-3	"Between -18 °C and -35 °C"
* OSIRIS#C60-4	"Between -60 °C and -85 °C"
* OSIRIS#C60-5	"Liquid nitrogen, -150 °C to -196 °C"
* OSIRIS#C60-6	"Other"
* UMLS#C0439673   "Unknown"