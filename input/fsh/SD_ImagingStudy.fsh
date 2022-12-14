Profile:        OncoImagingStudy
Parent:         ImagingStudy    
Id:             onco-imagingstudy
Title:          "Imaging Study"
Description:    "Description of an imaging study."

* series.extension contains imaging-settings named imaging-settings 1..1 and
                            series-weightheigt named series-weightheigt 0..1

* subject MS
* subject only Reference (onco-patient)
* subject 1..1
* partOf only Reference(analysis)
* partOf 1..1
* partOf MS
* identifier MS // Study Instance UID dicomTag(0020,000D)
* identifier 1..1
* description MS
* description 1..1 //dicomTag (0008,1030) 
* started MS //dicomTag (0008, 0032), (0008, 0022) or dicomTag (0008, 0021), (0008, 0023) or dicomTag (0008, 0031), (0008, 0033) 
* started 1..1
* endpoint MS
* endpoint only Reference (imaging-pacs)
* endpoint 1..1
* location MS
* location only Reference (imaging-service) //dicomTag (0008,0080)
* modality MS // Modalities in Study dicomTag(0008,0061)
* modality 1..*
* modality from DICOMod
* numberOfSeries MS
* numberOfSeries 1..1  //dicomtag(0020,1206)

//Series
* series 1..*
* series.number MS
* series.number 0..1 //dicomTag(0020,0011)
* series.uid MS
* series.uid 1..1 //dicomTag(0020,000E)
* series.modality MS
* series.modality 1..1
* series.modality from DICOMod 
* series.description MS
* series.description 1..1
* series.bodySite MS
* series.bodySite 1..1 //dicomTag (0018,0015)



* numberOfInstances MS
* numberOfInstances 1..1 //dicomtag (0020,1209)
* series.performer.actor 1..1
* series.performer.actor MS
* series.performer.actor only Reference(imaging-device)


Extension:      WeightHeight
Id:             series-weightheigt
Title:          "Weight and Height at the time of the Serie"
Description:    "Weight and Height at the time of the Serie"

* extension contains
    patient_weight 0..1 MS and
    patient_height 0..1

* extension[patient_weight] ^short = "Patient weight in kilograms (Kg) at the time of the Serie acquisition. Described in Dicom Tag (0010,1030)"
* extension[patient_weight].value[x] only decimal
* extension[patient_height] ^short = "Patient height in meters (m) at the time of the Serie acquisition. Described in Dicom Tag (0010,1020)"
* extension[patient_height].value[x] only decimal

Extension:      ImagingSettings
Id:             imaging-settings
Title:          "Imaging Settings"
Description:    "Imaging Settings."
* extension contains
    slice_thickness 1..1 MS and
    pixel_spacing 1..1 MS and
    fov 0..1 MS and
    rows 1..1 MS and
    columns 1..1 MS and
    imaging_injection 0..1 MS and
    mr_image 0..1 and
    ct_image 0..1 and
    dx_image 0..1 and
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
* extension[imaging_injection].value[x] only Reference(onco-imagingstudy-injection)


// ############
// # MR IMAGE #
// ############
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



// ############
// # CT IMAGE #
// ############
* extension[ct_image].extension contains
    kvp 1..1 MS and
    xray_tube_current 1..1 MS and
    exposure_time 1..1 MS and
    spiral_pitch_factor 1..1 MS and
    filter_type 1..1 MS and
    convolution_kernel 1..1 MS 


* extension[ct_image].extension[kvp] ^short = "Describe the tube tension in KV"
* extension[ct_image].extension[kvp].value[x] only decimal

* extension[ct_image].extension[xray_tube_current] ^short = "Tube current in mA"
* extension[ct_image].extension[xray_tube_current].value[x] only decimal

* extension[ct_image].extension[exposure_time] ^short = "Duration of x-ray exposure in ms"
* extension[ct_image].extension[exposure_time].value[x] only decimal

* extension[ct_image].extension[spiral_pitch_factor] ^short = "Ratio of the table feed per rotation to the total collimation width"
* extension[ct_image].extension[spiral_pitch_factor].value[x] only decimal

* extension[ct_image].extension[filter_type] ^short = "Type of filter inserted into the X-Ray beam"
* extension[ct_image].extension[filter_type].value[x] only string

* extension[ct_image].extension[convolution_kernel] ^short = "A label describing the convolution kernel or algorithm used to recontruct the data"
* extension[ct_image].extension[convolution_kernel].value[x] only string

// ############
// # PT IMAGE #
// ############
* extension[pt_image].extension contains
    attenuation_correction_method 1..1 MS and
    reconstruction_method 1..1 MS and
    scatter_correction_method 1..1 MS

// * extension[pt_image].extension[attenuation_correction_method] ^short = "A label describing the convolution kernel or algorithm used to recontruct the data"
* extension[pt_image].extension[attenuation_correction_method].value[x] only string
// * extension[pt_image].extension[reconstruction_method] ^short = "A label describing the convolution kernel or algorithm used to recontruct the data"
* extension[pt_image].extension[reconstruction_method].value[x] only string
// * extension[pt_image].extension[scatter_correction_method] ^short = "A label describing the convolution kernel or algorithm used to recontruct the data"
* extension[pt_image].extension[scatter_correction_method].value[x] only string

// ############
// # NM IMAGE #
// ############
* extension[nm_image].extension contains
    attenuation_correction_method 1..1 MS and
    reconstruction_method 1..1 MS and
    scatter_correction_method 1..1 MS

// * extension[nm_image].extension[attenuation_correction_method] ^short = "A label describing the convolution kernel or algorithm used to recontruct the data"
* extension[nm_image].extension[attenuation_correction_method].value[x] only string
// * extension[nm_image].extension[reconstruction_method] ^short = "A label describing the convolution kernel or algorithm used to recontruct the data"
* extension[nm_image].extension[reconstruction_method].value[x] only string
// * extension[nm_image].extension[scatter_correction_method] ^short = "A label describing the convolution kernel or algorithm used to recontruct the data"
* extension[nm_image].extension[scatter_correction_method].value[x] only string

// ############
// # DX IMAGE #
// ############
* extension[dx_image].extension contains
    image_laterality 1..1 MS and
    patient_orientation 0..1 MS and
    anat_code_meaning 0..1 MS and
    anat_code_value 0..1 MS and
    kvp 0..1 MS and
    exposure 0..1 MS and
    exposure_time 0..1 MS and
    contrast_bolus_agent 0..1 MS 

* extension[dx_image].extension[image_laterality] ^short = "Laterality of (possibly paired) body part (as described in Anatomic Region Sequence (0008,2218)) examined"
* extension[dx_image].extension[image_laterality].value[x] only string

* extension[dx_image].extension[patient_orientation] ^short = "Patient direction of the rows and columns of the image."
* extension[dx_image].extension[patient_orientation].value[x] only string

* extension[dx_image].extension[anat_code_meaning] ^short = "Text that conveys the meaning of the Coded Entry"
* extension[dx_image].extension[anat_code_meaning].value[x] only string

* extension[dx_image].extension[anat_code_value] ^short = "Shall be present if the code value length is 16 characters or less"
* extension[dx_image].extension[anat_code_value].value[x] only string

* extension[dx_image].extension[kvp] ^short = "Peak kilo voltage output of the X-Ray generator used."
* extension[dx_image].extension[kvp].value[x] only decimal

* extension[dx_image].extension[exposure] ^short = "The exposure expressed in mAs, for example calculated from Exposure Time and X-Ray Tube Current."
* extension[dx_image].extension[exposure].value[x] only decimal

* extension[dx_image].extension[exposure_time] ^short = "Duration of X-Ray exposure in msec."
* extension[dx_image].extension[exposure_time].value[x] only decimal

* extension[dx_image].extension[contrast_bolus_agent] ^short = "Contrast or bolus agent"
* extension[dx_image].extension[contrast_bolus_agent].value[x] only string

/*
    ###################################
    # MAPPING OSIRIS <--> FHIR-OSIRIS #
    ###################################
*/
Mapping: FhirOSIRISImagingStudy
Source: onco-imagingstudy
Target: "ImagingStudy"
Id: fhir-osiris-imaging-study
Title: "Fhir-osiris to osiris"
* -> "Imaging Study" "Imaging study description"
* series.instance.uid -> "Common_Image.SOP Instance UID"
* series.extension[imaging-settings].extension[slice_thickness] -> "Common_Image.Slice thickness"
* series.extension[imaging-settings].extension[pixel_spacing] -> "Common_Image.Pixel spacing"
* series.extension[imaging-settings].extension[fov] -> "Common_Image.Field of View (FOV)"
* series.extension[imaging-settings].extension[rows] -> "Common_Image.Rows"
* series.extension[imaging-settings].extension[columns] -> "Common_Image.Columns"

* series.extension[imaging-settings].extension[mr_image].extension[sequence_name] -> "MR_Image.Sequence Name"
* series.extension[imaging-settings].extension[mr_image].extension[magnetic_field_strength] -> "MR_Image.Magnetic Field Strength"
* series.extension[imaging-settings].extension[mr_image].extension[mr_acquisition_type] -> "MR_Image.MR acquisition type"
* series.extension[imaging-settings].extension[mr_image].extension[repetition_time] -> "MR_Image.Repetition Time"
* series.extension[imaging-settings].extension[mr_image].extension[echo_time] -> "MR_Image.Echo Time"
* series.extension[imaging-settings].extension[mr_image].extension[imaging_frequency] -> "MR_Image.Imaging frequency"
* series.extension[imaging-settings].extension[mr_image].extension[flip_angle] -> "MR_Image.Flip angle"
* series.extension[imaging-settings].extension[mr_image].extension[inversion_time] -> "MR_Image.Inversion Time"
* series.extension[imaging-settings].extension[mr_image].extension[receive_coil_name] -> "MR_Image.Receive Coil Name"
// todo



/*
    ##########################
    # DICOM <--> FHIR-OSIRIS #
    ##########################
*/
Mapping: DicomToFhirImagingStudy
Source: onco-imagingstudy
Target: "ImagingStudy"
Id: dicom-to-fhir-imaging-study
Title: "Fhir-osiris to osiris"
* -> "Imaging Study" "Imaging study description"

* identifier -> "(0020,000D)"
* description -> "(0008,1030)"
* started -> "(0008, 0032), (0008, 0022) or (0008, 0021), (0008, 0023) or (0008, 0031), (0008, 0033)"
* modality -> "(0008,0061)"
* location -> "(0008,0080)"

* series.uid -> "(0020,000E)"
* series.number -> "(0020,0011)"
* series.modality -> "(0008, 0060)"
* series.description -> "(00e1, 1040), (0008, 103E), (0008, 1030)"
* series.bodySite -> "(0018,0015)"
* numberOfInstances -> "(0020,1209)"

* series.extension[series-weightheigt].extension[patient_weight] -> "(0010,1030)"
* series.extension[series-weightheigt].extension[patient_height] -> "(0010,1020)"

* series.extension[imaging-settings].extension[slice_thickness] -> "(0018,0050)"
* series.extension[imaging-settings].extension[pixel_spacing] -> "(0028,0030)"
* series.extension[imaging-settings].extension[rows] -> "(0028,0010)"
* series.extension[imaging-settings].extension[columns] -> "(0028,0011)"

* series.extension[imaging-settings].extension[mr_image].extension[sequence_name] -> "(0018,0024)"
* series.extension[imaging-settings].extension[mr_image].extension[magnetic_field_strength] -> "(0018,0087)"
* series.extension[imaging-settings].extension[mr_image].extension[mr_acquisition_type] -> "(0018,0023)"
* series.extension[imaging-settings].extension[mr_image].extension[repetition_time] -> "(0018,0080)"
* series.extension[imaging-settings].extension[mr_image].extension[echo_time] -> "(0018,0081)"
* series.extension[imaging-settings].extension[mr_image].extension[imaging_frequency] -> "(0018,0084)"
* series.extension[imaging-settings].extension[mr_image].extension[flip_angle] -> "(0018,0024)"
* series.extension[imaging-settings].extension[mr_image].extension[inversion_time] -> "(0018,0082)"
* series.extension[imaging-settings].extension[mr_image].extension[receive_coil_name] -> "(0018,1250)" 


* series.extension[imaging-settings].extension[ct_image].extension[kvp] -> "(0018,0060)"
* series.extension[imaging-settings].extension[ct_image].extension[xray_tube_current] -> "(0018,1151)"
* series.extension[imaging-settings].extension[ct_image].extension[exposure_time] -> "(0018,1150)"
* series.extension[imaging-settings].extension[ct_image].extension[spiral_pitch_factor] -> "(0018,9311)"
* series.extension[imaging-settings].extension[ct_image].extension[filter_type] -> "(0018,1160)"
* series.extension[imaging-settings].extension[ct_image].extension[convolution_kernel] -> "(0018,1210)"

* series.extension[imaging-settings].extension[pt_image].extension[attenuation_correction_method] -> "(0054,1101)"
* series.extension[imaging-settings].extension[pt_image].extension[reconstruction_method] -> "(0054,1103)"
* series.extension[imaging-settings].extension[pt_image].extension[scatter_correction_method] -> "(0054,1105)"

* series.extension[imaging-settings].extension[nm_image].extension[attenuation_correction_method] -> "(0054,1101)"
* series.extension[imaging-settings].extension[nm_image].extension[reconstruction_method] -> "(0054,1103)"
* series.extension[imaging-settings].extension[nm_image].extension[scatter_correction_method] -> "(0054,1105)"


* series.extension[imaging-settings].extension[dx_image].extension[image_laterality] -> "(0020,0062)"
* series.extension[imaging-settings].extension[dx_image].extension[patient_orientation] -> "(0020,0020)"
* series.extension[imaging-settings].extension[dx_image].extension[anat_code_meaning] -> "(0008,0104)"
* series.extension[imaging-settings].extension[dx_image].extension[anat_code_value] -> "(0008,0100)"
* series.extension[imaging-settings].extension[dx_image].extension[kvp] -> "(0008,0060)"
* series.extension[imaging-settings].extension[dx_image].extension[exposure] -> "(0018,1152)"
* series.extension[imaging-settings].extension[dx_image].extension[exposure_time] -> "(0018,1150)"
* series.extension[imaging-settings].extension[dx_image].extension[contrast_bolus_agent] -> "(0018,0010)"
