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
* identifier contains dicom 1..* MS and
                    roi 1..1 MS and
                    file 1..1 MS

* identifier[dicom] ^short = "Unique identifier of the DICOM object"
* identifier[dicom] ^definition = "Unique identifier of the DICOM object. Dicom Tag (0008,1155)"
* identifier[roi] ^short = "Unique identifier ROI"
* identifier[roi] ^definition = "The region of interest identifier (ROI). Dicom Tag (3006,0084)"
* identifier[file] ^short = "File identifier"
* identifier[file]  ^definition =  "Uniquely identifies the referenced identifier or file name."

* text MS
* text ^short = "User-defined name for the ROI"
* text ^definition = "User-defined name for the ROI. Dicom tag (3006,0026)"
* text 1..1

* note MS 
* note ^short = "User-defined description for the ROI"
* note ^definition = "User-defined description for the ROI. Dicom tag (3006,0028)"
* note 0..1

* code MS 
* code 1..1
* code from ROIType (required)
* code ^short = "ROI Type"
* code ^definition = "Type of ROI (e.g. RTStruct, binary mask)."


/*
    ##########################
    # MAPPING OSIRIS <--> FHIR-OSIRIS #
    ##########################
*/
Mapping: FhirOSIRISRoiSeqmentation
Source: roi-segmentation
Target: "ROI segmentation"
Id: fhir-osiris-roi-segmentation
Title: "OSIRIS pivot files"
* -> "ROI segmentation" "ROI segmentation description"

* subject -> "OSIRIS_pivot_ROISegmentation.Patient_Id"
* partOf -> "OSIRIS_pivot_ROISegmentation.Series_Ref"
* identifier[dicom] -> "OSIRIS_pivot_ROISegmentation.ROISegmentation_ReferencedSOPInstanceUID"
* identifier[roi] -> "OSIRIS_pivot_ROISegmentation.ROISegmentation_ROINumber"
* text -> "OSIRIS_pivot_ROISegmentation.ROISegmentation_ROIName"
* note -> "OSIRIS_pivot_ROISegmentation.ROISegmentation_ROIDescription"
* code -> "OSIRIS_pivot_ROISegmentation.ROISegmentation_ROIType"
* identifier[file] -> "OSIRIS_pivot_ROISegmentation.ROISegmentation_ROIFilename"

/*
    ##########################
    # DICOM <--> FHIR-OSIRIS #
    ##########################
*/
Mapping: DicomToFhirRoiSeqmentation
Source: roi-segmentation
Target: "ROI segmentation"
Id: dicom-to-fhir-roi-segmentation
Title: "DICOM Tag Mapping (version OSIRIS)"
* -> "ROI segmentation" "ROI segmentation description"
* identifier[dicom] -> "Dicom Tag (0008,1155)"
* identifier[roi] -> "Dicom Tag (3006,0084)"
* note -> "Dicom Tag (3006,0028)"
* text -> "Dicom Tag (3006,0026)"
