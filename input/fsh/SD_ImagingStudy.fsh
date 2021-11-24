Profile:        ImagingStudyRadiomics
Parent:         ImagingStudy    
Id:             onco-biological-imagingstudy
Title:          "Imaging Study"
Description:    "Description of an imaging study coming from an oncology Patient used to recreate a radiomic study."

* identifier MS // Study Instance UID dicomTag(0020,000D)
* identifier 1..1
* modality MS // Modalities in Study dicomTag(0008,0061)
* modality 1..*
* modality from DICOMod
* subject only Reference (onco-patient)
* subject 1..1
* started MS //dicomTag (0008, 0032), (0008, 0022) or dicomTag (0008, 0021), (0008, 0023) or dicomTag (0008, 0031), (0008, 0033) 
* started 1..1
* description 1..1 //dicomTag (0008,1030) 
* location only Reference (imaging-service) //dicomTag (0008,0080)
* endpoint only Reference (imaging-pacs) //
* numberOfSeries 1..1  //dicomtag(0020,1206)




