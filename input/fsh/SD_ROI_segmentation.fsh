Profile:        RoiSegmentation
Parent:         Observation
Id:             roi-segmentation
Title:          "ROI segmentation"
Description:    "Observation that contient the ROI segmentation."


* subject only Reference (onco-patient)

* identifier MS // Referenced ROI Number, dicomTag(3006,0084)
* identifier 1..1
* identifier ^short = "Uniquely identifies the referenced ROI described in the Structure Set ROI Sequence"

* note MS // ROI description Attribute dicomTag(3006,0028)
* note ^short = "ROI description Attribute"

* code MS // Type of ROI
* code from ROIType (required)

* partOf MS
* partOf only Reference (onco-imagingstudy)
* partOf ^short = "Uniquely identifies the referenced SOP Instance"

* focus MS
* focus only Reference (imaging-pacs)
* focus ^short = "Uniquely identifies the referenced id or filename"





/*
    ##########################
    # DICOM <--> FHIR-OSIRIS #
    ##########################
*/
Mapping: DicomToFhirRoiSeqmentation
Source: roi-segmentation
Target: "ROI segmentation"
Id: dicom-to-fhir-roi-segmentation
Title: "Fhir-osiris to osiris"

* -> "ROI segmentation" "ROI segmentation description"
* identifier -> "(3006,0084)"
* note -> "(3006,0028)"
* partOf -> "(0008,1150)"