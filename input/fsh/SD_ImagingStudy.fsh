Profile:        OncoImagingStudy
Parent:         ImagingStudy    
Id:             onco-imagingstudy
Title:          "Imaging Study"
Description:    "Description of an imaging study."

* series.extension contains series-weightheigt named series-weightheigt 0..1 and
                            imaging-settings named imaging-settings 1..1

//Study
* subject MS
* subject only Reference (onco-patient)
* subject 1..1

* reasonReference only Reference(analysis)
* reasonReference 1..1
* reasonReference MS

* identifier MS // Study Instance UID dicomTag(0020,000D)
* identifier 1..1
* identifier ^short = "Unique number"
* identifier ^definition = "Unique number to identify the study. Dicom Tag (0020,000D)"

* description MS
* description 1..1 //dicomTag (0008,1030) 
* description ^short = "Description"
* description ^definition = "Study Description. Dicom Tag (0008,1030)"

* started MS //dicomTag (0008, 0032), (0008, 0022) or dicomTag (0008, 0021), (0008, 0023) or dicomTag (0008, 0031), (0008, 0033) 
* started 1..1
* started ^short = "Date and time of acquisition"
* started ^definition = "Date and time of acquisition. Dicom Tag (0008, 0032), (0008, 0022) or DicomTag (0008, 0021), (0008, 0023) or Dicom Tag (0008, 0031), (0008, 0033)"

* endpoint MS
* endpoint only Reference (imaging-pacs)
* endpoint 1..1
* endpoint ^short = "Storage location"
* endpoint ^definition = "Study storage location (PACS, web server etc)."

* location MS
* location only Reference (imaging-service) //dicomTag (0008,0080)
* location ^short = "Name of the institution"
* location ^definition = "Name of the organization or institution responsible for the study. Dicom Tag (0008,0080)"

* modality MS // Modalities in Study dicomTag(0008,0061)
* modality 1..*
* modality from DICOMod
* modality ^short = "Modalities"
* modality ^definition = "List of all the modalities used. Dicom Tag (0008,0061)"

* numberOfSeries MS
* numberOfSeries 1..1  //dicomtag(0020,1206)
* numberOfSeries ^short = "Number of series"
* numberOfSeries ^definition = "Number of series contained in the study. Dicom Tag (0020, 1206)"

//Series
* series 1..*

* series.number MS
* series.number 0..1 //dicomTag(0020,0011)
* series.number ^short = "User number"
* series.number ^definition = "User number to identify the series. Dicom Tag (0020,0011)"

* series.uid MS
* series.uid 1..1 //dicomTag(0020,000E)
* series.uid ^short = "Unique referenced number"
* series.uid ^definition = "Unique number (SUID) of the series referenced in the series study. Dicom Tag (0020,000E)"

* series.modality MS
* series.modality 1..1
* series.modality from DICOMod 
* series.modality ^short = "Modalities"
* series.modality ^definition = "Type of equipment used to acquire data for the series. Dicom Tag (0008, 0060)"

* series.description MS
* series.description 1..1
* series.description ^short = "Description"
* series.description ^definition = "Description of the series. Dicom Tag (00e1, 1040), (0008, 103E), (0008, 1030)"

* series.bodySite MS
* series.bodySite 0..1  //dicomTag (0018,0015)
* series.bodySite from Topography
* series.bodySite ^short = "Part of the body examined"
* series.bodySite ^definition = "Part of the body examined. Dicom Tag (0018,0015)"

* series.numberOfInstances MS
* series.numberOfInstances 1..1 //dicomtag (0020,1209)
* series.numberOfInstances ^short = "Number of images in the series"
* series.numberOfInstances ^definition = "Number of images in the series. Dicom Tag (0020,1209)"

* series.started MS
* series.started 1..1
* series.started ^short = "Date and time of acquisition"
* series.started ^definition = "Date and time of acquisition. Dicom Tag (0008,002a) Dicom Tag (0008,0032)"

* series.performer.actor 1..1
* series.performer.actor MS
* series.performer.actor only Reference(imaging-device)
* series.performer.actor  ^short = "Device"
* series.performer.actor  ^definition = "Device used for the serie"

//Common Image
* series.instance.uid MS
* series.instance.uid 1..1
* series.instance.uid ^short = "Unique number"
* series.instance.uid ^definition = "Unique number to identify the image. Dicom Tag (0008,0018)"


Extension:      WeightHeight
Id:             series-weightheigt
Title:          "Weight and Height at the time of the Serie"
Description:    "Weight and Height at the time of the Serie"

* extension contains
    patient_weight 0..1 MS and
    patient_height 0..1 MS

* extension[patient_weight].value[x] only decimal
* extension[patient_weight] obeys patient-weight-if-pt-image
* extension[patient_weight] ^short = "Patient weight"
* extension[patient_weight] ^definition = "Patient weight in kilograms. Dicom Tag (0010,1030)"

* extension[patient_height].value[x] only decimal
* extension[patient_height] obeys patient-height-if-pt-image
* extension[patient_weight] ^short = "Patient height"
* extension[patient_weight] ^definition = "Patient height in meters. Dicom Tag (0010,1020)"


Extension:      ImagingSettings
Id:             imaging-settings
Title:          "Imaging Settings"
Description:    "Imaging Settings."
* extension contains
    slice_thickness 1..1 MS and
    pixel_spacing 1..1 MS and
    field_of_view 0..1 MS and
    rows 1..1 MS and
    columns 1..1 MS and
    imaging_injection 0..1 MS and
    mr_image 0..1 and
    ct_image 0..1 and
    dx_image 0..1 and
    pt_image 0..1 and
    nm_image 0..1

* extension[slice_thickness].value[x] only string
* extension[slice_thickness] ^short = "Thickness of the slice in mm"
* extension[slice_thickness] ^definition = "Nominal thickness of the slice, in mm."

* extension[pixel_spacing].value[x] only string
* extension[pixel_spacing] ^short = "Pixel spacing"
* extension[pixel_spacing] ^definition = "Physical distance between the centers of each two-dimensional pixel, specified by two numerical values."

* extension[field_of_view].value[x] only integer
* extension[field_of_view] ^short = "Field of view"
* extension[field_of_view] ^definition = "The field of view (FOV) is defined as the dimensions of the exact anatomical region included in a scan in mm."

* extension[rows].value[x] only integer
* extension[rows] ^short = "Number of pixels in the direction of the row"
* extension[rows] ^definition = "Number of pixels in the row direction of the reconstructed matrix."

* extension[columns].value[x] only integer
* extension[columns] ^short = "Number of pixels in the direction of the column"
* extension[columns] ^definition = "Number of pixels in the column direction of the reconstructed matrix."

* extension[imaging_injection].value[x] only Reference(onco-imagingstudy-injection)
* extension[imaging_injection] ^short = "Qualification of the medical image contrast injection"


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

* extension[mr_image].extension[sequence_name].value[x] only string
* extension[mr_image].extension[sequence_name] ^short = "Type of pulse sequence"
* extension[mr_image].extension[sequence_name] ^definition = "Type of pulse sequence. Dicom Tag (0018,0024)"

* extension[mr_image].extension[magnetic_field_strength].value[x] only decimal
* extension[mr_image].extension[magnetic_field_strength] ^short = "Nominal field strength"
* extension[mr_image].extension[magnetic_field_strength] ^definition = "Nominal field strength of the magnet, in Tesla. Dicom Tag (0018,0087)"

* extension[mr_image].extension[mr_acquisition_type].value[x] only string
* extension[mr_image].extension[mr_acquisition_type] ^short = "Description of the type of acquisition"
* extension[mr_image].extension[mr_acquisition_type] ^definition = "Describe the type of acquisition, particularly the number of dimension. Dicom Tag (0018,0023)"

* extension[mr_image].extension[repetition_time].value[x] only decimal
* extension[mr_image].extension[repetition_time] ^short = "Repetition time"
* extension[mr_image].extension[repetition_time] ^definition = "Repetition time in ms. Dicom Tag (0018,0080)"

* extension[mr_image].extension[echo_time].value[x] only decimal
* extension[mr_image].extension[echo_time] ^short = "Echo time"
* extension[mr_image].extension[echo_time] ^definition = "Echo time in ms. Dicom Tag (0018,0081)"

* extension[mr_image].extension[imaging_frequency].value[x] only decimal
* extension[mr_image].extension[imaging_frequency] ^short = "Precession frequency"
* extension[mr_image].extension[imaging_frequency] ^definition = "Precession frequency in MHz of the target core. Dicom Tag (0018,0084)"

* extension[mr_image].extension[flip_angle].value[x] only decimal
* extension[mr_image].extension[flip_angle] ^short = "Flip angle"
* extension[mr_image].extension[flip_angle] ^definition = "Flip angle of the RF pulse in degrees impacting the T1 weighting. Dicom Tag (0018,0024) / (0018,1314)"

* extension[mr_image].extension[inversion_time].value[x] only decimal
* extension[mr_image].extension[inversion_time] ^short = "Period between the middle of the RF inversion pulse and the middle of the excitation pulse"
* extension[mr_image].extension[inversion_time] ^definition = "Period between the middle of the RF inversion pulse and the middle of the excitation pulse to detect the amount of longitudinal magnetization. Dicom Tag (0018,0082)"

* extension[mr_image].extension[receive_coil_name].value[x] only string 
* extension[mr_image].extension[receive_coil_name] ^short = "Receive col name"
* extension[mr_image].extension[receive_coil_name] ^definition = "Receive col name. Dicom Tag (0018,1250)"


// ############
// # CT IMAGE #
// ############
* extension[ct_image].extension contains
    kvp 0..1 MS and
    xray_tube_current 1..1 MS and
    exposure_time 1..1 MS and
    spiral_pitch_factor 1..1 MS and
    filter_type 1..1 MS and
    convolution_kernel 1..1 MS 

* extension[ct_image].extension[kvp].value[x] only integer
* extension[ct_image].extension[kvp] ^short = "Peak kilovoltage produced by the X-ray generator"
* extension[ct_image].extension[kvp] ^definition = "Peak kilovoltage of the voltage produced by the X-ray generator. Dicom Tag (0018,0060)"

* extension[ct_image].extension[xray_tube_current].value[x] only integer
* extension[ct_image].extension[xray_tube_current] ^short = "X-ray tube current in mA"
* extension[ct_image].extension[xray_tube_current] ^definition = "X-ray tube current in mA. Dicom Tag (0018,1151)"

* extension[ct_image].extension[exposure_time].value[x] only integer
* extension[ct_image].extension[exposure_time] ^short = "X-ray exposure time in ms"
* extension[ct_image].extension[exposure_time] ^definition = "X-ray exposure time in ms. Dicom Tag (0018,1150)"

* extension[ct_image].extension[spiral_pitch_factor].value[x] only decimal
* extension[ct_image].extension[spiral_pitch_factor] ^short = "'Spiral Pitch' - Ratio between the table feed per rotation and the total width of the collimation"
* extension[ct_image].extension[spiral_pitch_factor] ^definition = "'Spiral Pitch' - Ratio between the table feed per rotation and the total width of the collimation. Dicom Tag (0018,9311)"

* extension[ct_image].extension[filter_type].value[x] only string
* extension[ct_image].extension[filter_type] ^short = "Filter type"
* extension[ct_image].extension[filter_type] ^definition = "Filter type. DicomTag (0018,1160)"

* extension[ct_image].extension[convolution_kernel].value[x] only string
* extension[ct_image].extension[convolution_kernel] ^short = "Convolution kernel or algorithm"
* extension[ct_image].extension[convolution_kernel] ^definition = "A label describing the convolution kernel or algorithm used to recontruct the data. Dicom Tag (0018,1210)"

// ############
// # PT IMAGE #
// ############
* extension[pt_image].extension contains
    attenuation_correction_method 1..1 MS and
    reconstruction_method 1..1 MS and
    scatter_correction_method 1..1 MS


* extension[pt_image].extension[attenuation_correction_method].value[x] only string
* extension[pt_image].extension[attenuation_correction_method] ^short = "Attenuation correction method"
* extension[pt_image].extension[attenuation_correction_method] ^definition = "Attenuation correction method. Dicom Tag (0054,1101)"

* extension[pt_image].extension[reconstruction_method].value[x] only string
* extension[pt_image].extension[reconstruction_method] ^short = "Reconstruction method"
* extension[pt_image].extension[reconstruction_method] ^definition = "Reconstruction method e.g. 2D filtered back projection, 2D iterative, 3D PROMIS, 3D FAVOR, 3D iterative. Dicom Tag (0054,1103)"

* extension[pt_image].extension[scatter_correction_method].value[x] only string
* extension[pt_image].extension[scatter_correction_method] ^short = "Scattering correction method"
* extension[pt_image].extension[scatter_correction_method] ^definition = "Scattering correction method. For example, convolution-subtraction, dual energy window, model based, use of attenuation data. Dicom Tag (0054,1105)"

// ############
// # NM IMAGE #
// ############
* extension[nm_image].extension contains
    attenuation_correction_method 1..1 MS and
    reconstruction_method 1..1 MS and
    scatter_correction_method 1..1 MS

* extension[nm_image].extension[attenuation_correction_method].value[x] only string
* extension[nm_image].extension[attenuation_correction_method] ^short = "Attenuation correction method"
* extension[nm_image].extension[attenuation_correction_method] ^definition = "Attenuation correction method. Dicom Tag (0054,1101)"

* extension[nm_image].extension[reconstruction_method].value[x] only string
* extension[nm_image].extension[reconstruction_method] ^short = "Reconstruction method"
* extension[nm_image].extension[reconstruction_method] ^definition = "Reconstruction method e.g. 2D filtered back projection, 2D iterative, 3D PROMIS, 3D FAVOR, 3D iterative. Dicom Tag (0054,1103)"

* extension[nm_image].extension[scatter_correction_method].value[x] only string
* extension[nm_image].extension[scatter_correction_method] ^short = "Scattering correction method"
* extension[nm_image].extension[scatter_correction_method] ^definition = "Scattering correction method. For example, convolution-subtraction, dual energy window, model based, use of attenuation data. Dicom Tag (0054,1105)"

// ############
// # DX IMAGE #
// ############
* extension[dx_image].extension contains
    image_laterality 1..1 MS and
    patient_orientation 0..1 MS and
    kvp 1..1 MS and
    exposure 1..1 MS and
    exposure_time 1..1 MS

* extension[dx_image].extension[image_laterality].value[x] only string
* extension[dx_image].extension[image_laterality] ^short = "Laterality of the body part"
* extension[dx_image].extension[image_laterality] ^definition = "Examination of the laterality of the body part examined. Dicom Tag (0020,0062)"

* extension[dx_image].extension[patient_orientation].value[x] only string
* extension[dx_image].extension[patient_orientation] ^short = "Patient orientation"
* extension[dx_image].extension[patient_orientation] ^definition = "Patient orientation. Dicom Tag (0020,0020)"

* extension[dx_image].extension[kvp].value[x] only integer
* extension[dx_image].extension[kvp] ^short = "Peak in kilovoltage of the X-ray generator used"
* extension[dx_image].extension[kvp] ^definition = "Peak kilovoltage of the voltage produced by the X-ray generator. Dicom Tag (0008,0060)"

* extension[dx_image].extension[exposure].value[x] only integer
* extension[dx_image].extension[exposure] ^short = "The exposure expressed in mAs"
* extension[dx_image].extension[exposure] ^definition = "The exposure expressed in mAs, for example calculated from the exposure time and the X-ray tube current. DicomTag (0018,1152)"

* extension[dx_image].extension[exposure_time].value[x] only integer
* extension[dx_image].extension[exposure_time] ^short = "Duration of X-ray exposure in ms"
* extension[dx_image].extension[exposure_time] ^short = "Duration of X-Ray exposure in ms. DicomTag (0018,1150)"

/*
    ###################################
    # Invariants#
    ###################################
*/
Invariant:   patient-weight-if-pt-image
Description: "If extension:pt_image exist, then extension[patient_weight] MUST be present"
Expression:  "extension:pt_image.exists() implies extension[patient_weight].valueDecimal.exists()"
Severity:    #error

Invariant:   patient-height-if-pt-image
Description: "If extension:pt_image exist, then extension[patient_height] MUST be present"
Expression:  "extension:pt_image.exists() implies extension[patient_height].valueDecimal.exists()"
Severity:    #error


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
* series.extension[imaging-settings].extension[field_of_view] -> "Common_Image.Field of View (FOV)"
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

* identifier -> "Dicom Tag (0020,000D)"
* description -> "Dicom Tag (0008,1030)"
* started -> "Dicom Tag (0008, 0032), (0008, 0022) or Dicom Tag (0008, 0021), (0008, 0023) or Dicom Tag (0008, 0031), (0008, 0033)"
* location -> "Dicom Tag (0008,0080)"
* modality -> "Dicom Tag (0008,0061)"
* numberOfInstances -> "Dicom Tag (0008,0070)"

* series.number -> "Dicom Tag (0020,0011)"
* series.uid -> "Dicom Tag (0020,000E)"
* series.modality -> "Dicom Tag (0008, 0060)"
* series.description -> "Dicom Tag (00e1, 1040), (0008, 103E), (0008, 1030)"
* series.bodySite -> "Dicom Tag (0018,0015)"
* series.numberOfInstances -> "Dicom Tag (0020,1209)"

* series.extension[series-weightheigt].extension[patient_weight] -> "Dicom Tag (0010,1030)"
* series.extension[series-weightheigt].extension[patient_height] -> "Dicom Tag (0010,1020)"

* series.instance.uid -> "Dicom Tag (0008,0018)"
* series.extension[imaging-settings].extension[slice_thickness] -> "Dicom Tag (0018,0050)"
* series.extension[imaging-settings].extension[pixel_spacing] -> "Dicom Tag (0028,0030)"
* series.extension[imaging-settings].extension[rows] -> "Dicom Tag (0028,0010)"
* series.extension[imaging-settings].extension[columns] -> "Dicom Tag (0028,0011)"

* series.extension[imaging-settings].extension[mr_image].extension[sequence_name] -> "Dicom Tag (0018,0024)"
* series.extension[imaging-settings].extension[mr_image].extension[magnetic_field_strength] -> "Dicom Tag (0018,0087)"
* series.extension[imaging-settings].extension[mr_image].extension[mr_acquisition_type] -> "Dicom Tag (0018,0023)"
* series.extension[imaging-settings].extension[mr_image].extension[repetition_time] -> "Dicom Tag (0018,0080)"
* series.extension[imaging-settings].extension[mr_image].extension[echo_time] -> "Dicom Tag (0018,0081)"
* series.extension[imaging-settings].extension[mr_image].extension[imaging_frequency] -> "Dicom Tag (0018,0084)"
* series.extension[imaging-settings].extension[mr_image].extension[flip_angle] -> "Dicom Tag (0018,0024) / (0018,1314)"
* series.extension[imaging-settings].extension[mr_image].extension[inversion_time] -> "Dicom Tag (0018,0082)"
* series.extension[imaging-settings].extension[mr_image].extension[receive_coil_name] -> "Dicom Tag (0018,1250)" 


* series.extension[imaging-settings].extension[ct_image].extension[kvp] -> "Dicom Tag (0018,0060)"
* series.extension[imaging-settings].extension[ct_image].extension[xray_tube_current] -> "Dicom Tag (0018,1151)"
* series.extension[imaging-settings].extension[ct_image].extension[exposure_time] -> "Dicom Tag (0018,1150)"
* series.extension[imaging-settings].extension[ct_image].extension[spiral_pitch_factor] -> "Dicom Tag (0018,9311)"
* series.extension[imaging-settings].extension[ct_image].extension[filter_type] -> "Dicom Tag (0018,1160)"
* series.extension[imaging-settings].extension[ct_image].extension[convolution_kernel] -> "Dicom Tag (0018,1210)"

* series.extension[imaging-settings].extension[pt_image].extension[attenuation_correction_method] -> "Dicom Tag (0054,1101)"
* series.extension[imaging-settings].extension[pt_image].extension[reconstruction_method] -> "Dicom Tag (0054,1103)"
* series.extension[imaging-settings].extension[pt_image].extension[scatter_correction_method] -> "Dicom Tag (0054,1105)"

* series.extension[imaging-settings].extension[nm_image].extension[attenuation_correction_method] -> "Dicom Tag (0054,1101)"
* series.extension[imaging-settings].extension[nm_image].extension[reconstruction_method] -> "Dicom Tag (0054,1103)"
* series.extension[imaging-settings].extension[nm_image].extension[scatter_correction_method] -> "Dicom Tag (0054,1105)"


* series.extension[imaging-settings].extension[dx_image].extension[image_laterality] -> "Dicom Tag (0020,0062)"
* series.extension[imaging-settings].extension[dx_image].extension[patient_orientation] -> "Dicom Tag (0020,0020)"
* series.extension[imaging-settings].extension[dx_image].extension[kvp] -> "Dicom Tag (0008,0060)"
* series.extension[imaging-settings].extension[dx_image].extension[exposure] -> "Dicom Tag (0018,1152)"
* series.extension[imaging-settings].extension[dx_image].extension[exposure_time] -> "Dicom Tag (0018,1150)"