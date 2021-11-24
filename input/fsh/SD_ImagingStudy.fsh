Profile:        ImagingStudyRadiomics
Parent:         ImagingStudy    
Id:             onco-biological-imagingstudy
Title:          "Imaging Study"
Description:    "Description of an imaging study coming from an oncology Patient used to recreate a radiomic study."

* identifier MS // Study Instance UID dicomTag(0020,000D)
* identifier 1..1
* modality MS // Modality in Study dicomTag(0008,0061)
* modality 1..1
* modality from DICOMod
* subject only Reference (onco-patient)
* started MS
* location only Reference (imaging-service)
* endpoint only Reference (imaging-pacs)
* started MS 


