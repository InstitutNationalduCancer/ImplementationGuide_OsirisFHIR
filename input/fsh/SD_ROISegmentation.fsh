Profile:        RoiSegmentation
Parent:         Observation
Id:             roi-segmentation
Title:          "ROI segmentation"
Description:    "Description of the segmentation method used allowing the deffinition of a region of interest (ROI)."


* subject only Reference (onco-patient)

* partOf MS
* partOf only Reference (onco-imagingstudy)
* partOf 1..1


* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on identifier pattern"
* identifier contains dicom 1..* and
                    roi 1..1
* identifier[dicom] ^short = "Unique identifier of the DICOM object"
* identifier[dicom] ^definition = "Unique identifier of the DICOM object. Dicom Tag (0008,1155)"
* identifier[roi] ^short = "Unique identifier ROI"
* identifier[roi] ^definition = "The region of interest identifier (ROI). Dicom Tag (3006,0084)"

* text MS
* text ^short = "User-defined name for the ROI"
* text ^definition = "User-defined name for the ROI. Dicom tag (3006,0026)"
* text 1..1

* note MS 
* note ^short = "User-defined description for the ROI"
* note ^definition = "User-defined description for the ROI. Dicom tag (3006,0028)"
* note 0..1


* code MS // Type of ROI
* code from ROIType (required)
* code 1..1



* focus MS
* focus only Reference (imaging-pacs)
* focus ^short = "Uniquely identifies the referenced id or filename"
* focus 1..1





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
* text -> "(3006,0026)"
* partOf -> "(0008,1150)"