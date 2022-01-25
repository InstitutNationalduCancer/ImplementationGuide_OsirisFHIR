Profile:        OncoImagingStudy
Parent:         ImagingStudy    
Id:             onco-imagingstudy
Title:          "Imaging Study"
Description:    "Description of an imaging study coming from an oncology Patient used to recreate a radiomic study."


* identifier MS // Study Instance UID dicomTag(0020,000D)
* identifier 1..1
* modality MS // Modalities in Study dicomTag(0008,0061)
* modality 1..*

* modality from DICOMod
* subject MS
* subject only Reference (onco-patient)
* subject 1..1
* started MS //dicomTag (0008, 0032), (0008, 0022) or dicomTag (0008, 0021), (0008, 0023) or dicomTag (0008, 0031), (0008, 0033) 
* started 1..1
* description MS
* description 1..1 //dicomTag (0008,1030) 
* location MS
* location only Reference (imaging-service) //dicomTag (0008,0080)
* endpoint MS
* endpoint only Reference (imaging-pacs) //
* numberOfSeries MS
* numberOfSeries 1..1  //dicomtag(0020,1206)
* procedureReference 1..1 MS
* procedureReference only Reference (onco-biological-imagingstudy-procedure)

//Series
* series.uid MS
* series.uid 1..1 //dicomTag(0020,000E)
* series.number MS
* series.number 1..1 //dicomTag(0020,0011)
* series.modality MS
* series.modality 1..1
* series.modality from DICOMod 
* series.description MS
* series.description 1..1
//*series.extension.medicationAdministration*/
* series.bodySite MS
* series.bodySite 1..1 //dicomTag (0018,0015)
* numberOfInstances MS
* numberOfInstances 1..1 //dicomtag (0020,1209)
//device = software version dicomTag (0018,1020)


