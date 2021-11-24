Profile:        ImagingStudyRadiomics
Parent:         ImagingStudy    
Id:             onco-biological-imagingstudy
Title:          "Imaging Study"
Description:    "Description of an imaging study coming from an oncology Patient used to recreate a radiomic study."

* series.extension contains imaging-settings named imaging-settings 1..1
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


Extension:      ImagingSettings
Id:             imaging-settings
Title:          "Imaging Settings"
Description:    "Imaging Settings."
* extension contains
    slice_thickness 1..1 MS and
    pixel_spacing 1..1 MS and
    fov 1..1 MS and
    rows 1..1 MS and
    columns 1..1 MS and
    mr_image 0..1 and
    ct_image 0..1 and
    pt_image 0..1 and
    nm_image 0..1
* extension[slice_thickness] ^short = "Describe the slice thickness in mm"
* extension[slice_thickness].value[x] only decimal
* extension[pixel_spacing] ^short = "In plane resolution (pixel size), in mm"
* extension[pixel_spacing].value[x] only decimal
* extension[fov] ^short = "Field Of View"
* extension[fov].value[x] only decimal
* extension[rows] ^short = "Number of pixel in the row direction in the reconstructed matrix"
* extension[rows].value[x] only decimal
* extension[columns] ^short = "Number of pixel in the column direction in the reconstructed matrix"
* extension[columns].value[x] only decimal


* extension[mr_image].extension contains
    sequence_name 1..1 MS and
    magnetic_field_strength 1..1 MS and
    mr_acquisition_type 1..1 MS and
    repetition_time 1..1 MS and
    echo_time 1..1 MS and
    imaging_frequency 1..1 MS and
    flip_angle 1..1 MS and
    inversion_time 1..1 MS and
    receive_coil_name 1..1 MS 

* extension[mr_image].extension[sequence_name] ^short = "Describe the type of the pulse sequence"
* extension[mr_image].extension[sequence_name].value[x] only string
* extension[mr_image].extension[magnetic_field_strength] ^short = "Magnetic Field Strength"
* extension[mr_image].extension[magnetic_field_strength].value[x] only string
* extension[mr_image].extension[mr_acquisition_type] ^short = "Describe the type of acquisition, particularly the number of dimension"
* extension[mr_image].extension[mr_acquisition_type].value[x] only string
* extension[mr_image].extension[repetition_time] ^short = "Repetition time of the MR pulse sequence in ms. It impact the T1 weighting"
* extension[mr_image].extension[repetition_time].value[x] only decimal
* extension[mr_image].extension[echo_time] ^short = "Echo time of the MR pulse sequence in ms. It impact the T2 weighting"
* extension[mr_image].extension[echo_time].value[x] only decimal
* extension[mr_image].extension[imaging_frequency] ^short = "Central frequency of the MR system (in Mhz), linked to the static magnetic field intensity"
* extension[mr_image].extension[imaging_frequency].value[x] only decimal
* extension[mr_image].extension[flip_angle] ^short = "Flip angle of the RF pulse in degree . It impact T1 weighting"
* extension[mr_image].extension[flip_angle].value[x] only decimal
* extension[mr_image].extension[inversion_time] ^short = "Inversion time"
* extension[mr_image].extension[inversion_time].value[x] only decimal
* extension[mr_image].extension[receive_coil_name] ^short = "Receive col name"
* extension[mr_image].extension[receive_coil_name].value[x] only string 


// * series.performer.actor only Reference(imaging-device)