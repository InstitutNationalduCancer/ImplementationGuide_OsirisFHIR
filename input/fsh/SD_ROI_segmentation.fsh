Profile:        RoiSegmentation
Parent:         Observation
Id:             roi-segmentation
Title:          "ROI segmentation"
Description:    "Observation that contient the ROI segmentation."


* subject only Reference (onco-patient)

* identifier MS // Referenced ROI Number, dicomTag(3006,0084)
* identifier 1..1

* note MS // ROI description Attribute dicomTag(3006,0028)






/*
    ##########################
    # DICOM <--> FHIR-OSIRIS #
    ##########################
*/
Mapping: DicomToFhirRoiSeqmentation
Source: onco-imagingstudy-injection
Target: "ImagingStudy"
Id: roi-segmentation
Title: "Fhir-osiris to osiris"

* -> "ROI segmentation" "ROI segmentation description"
* identifier -> "(3006,0084)"
* note -> "(3006,0028)"
