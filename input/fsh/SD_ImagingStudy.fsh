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

* identifier MS 
* identifier 1..1
* identifier ^short = "Unique number"
* identifier ^definition = "Unique number to identify the study. Dicom Tag (0020,000D)"

* description MS
* description 1..1 
* description ^short = "Description"
* description ^definition = "Study Description. Dicom Tag (0008,1030)"

* started MS  
* started 1..1
* started ^short = "Date and time of acquisition"
* started ^definition = "Date and time of acquisition. Dicom Tag (0008, 0032), (0008, 0022) or DicomTag (0008, 0021), (0008, 0023) or Dicom Tag (0008, 0031), (0008, 0033)"

* endpoint MS
* endpoint only Reference (imaging-pacs)
* endpoint 1..1
* endpoint ^short = "Storage location"
* endpoint ^definition = "Study storage location (PACS, web server etc)."

* location MS
* location only Reference (imaging-service) 
* location ^short = "Name of the institution"
* location ^definition = "Name of the organization or institution responsible for the study. Dicom Tag (0008,0080)"

* modality MS 
* modality 1..*
* modality from VSModality
* modality ^short = "Modalities"
* modality ^definition = "List of all the modalities used. Dicom Tag (0008,0061)"

* numberOfSeries MS
* numberOfSeries 1..1  
* numberOfSeries ^short = "Number of series"
* numberOfSeries ^definition = "Number of series contained in the study. Dicom Tag (0020, 1206)"

//Series
* series 1..*

* series.number MS
* series.number 0..1 
* series.number ^short = "User number"
* series.number ^definition = "User number to identify the series. Dicom Tag (0020,0011)"
* series.number only unsignedInt

* series.uid MS
* series.uid 1..1 
* series.uid ^short = "Unique referenced number"
* series.uid ^definition = "Unique number (SUID) of the series referenced in the series study. Dicom Tag (0020,000E)"

* series.modality MS
* series.modality 1..1
* series.modality from VSModality
* series.modality ^short = "Modalities"
* series.modality ^definition = "Type of equipment used to acquire data for the series. Dicom Tag (0008, 0060)"

* series.description MS
* series.description 1..1
* series.description ^short = "Description"
* series.description ^definition = "Description of the series. Dicom Tag (00e1, 1040), (0008, 103E), (0008, 1030)"

* series.bodySite MS
* series.bodySite 0..1 
* series.bodySite from VSBodySite
* series.bodySite ^short = "Part of the body examined"
* series.bodySite ^definition = "Part of the body examined. Dicom Tag (0018,0015)"

* series.numberOfInstances MS
* series.numberOfInstances 1..1 
* series.numberOfInstances ^short = "Number of images in the series"
* series.numberOfInstances ^definition = "Number of images in the series. Dicom Tag (0020,1209)"

* series.started MS
* series.started 1..1
* series.started ^short = "Date and time of acquisition"
* series.started ^definition = "Date and time of acquisition. Dicom Tag (0008,002a) Dicom Tag (0008,0032)"

* series.performer.actor 1..1
* series.performer.actor MS
* series.performer.actor only Reference(imaging-device)
* series.performer.actor ^short = "Device"
* series.performer.actor ^definition = "Device used for the serie"

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

* extension[patient_weight].value[x] MS
* extension[patient_weight].value[x] only decimal
* extension[patient_weight] ^short = "Patient weight. Obligatory if series.modality is PT."
* extension[patient_weight] ^definition = "Patient weight in kilograms. Dicom Tag (0010,1030). Obligatory if series.modality is PT."

* extension[patient_height].value[x] MS
* extension[patient_height].value[x] only decimal
* extension[patient_height] ^short = "Patient height. Obligatory if series.modality is PT."
* extension[patient_height] ^definition = "Patient height in meters. Dicom Tag (0010,1020). Obligatory if series.modality is PT."


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
    pt_nm_image 0..1

* extension[slice_thickness].value[x] 1..1 MS
* extension[slice_thickness].value[x] only string
* extension[slice_thickness] ^short = "Thickness of the slice in mm"
* extension[slice_thickness] ^definition = "Nominal thickness of the slice, in mm. Dicom Tag (0018,0050)"


* extension[pixel_spacing].value[x] 1..1 MS
* extension[pixel_spacing].value[x] only string
* extension[pixel_spacing] ^short = "Pixel spacing"
* extension[pixel_spacing] ^definition = "Physical distance between the centers of each two-dimensional pixel, specified by two numerical values.  Dicom Tag (0028,0030)"

* extension[field_of_view] MS
* extension[field_of_view].value[x] MS
* extension[field_of_view].value[x] only integer
* extension[field_of_view] ^short = "Field of view"
* extension[field_of_view] ^definition = "The field of view (FOV) is defined as the dimensions of the exact anatomical region included in a scan in mm."

* extension[rows].value[x] 1..1 MS
* extension[rows].value[x] only integer
* extension[rows] ^short = "Number of pixels in the direction of the row"
* extension[rows] ^definition = "Number of pixels in the row direction of the reconstructed matrix. Dicom Tag (0028,0010)"

* extension[columns].value[x] 1..1 MS
* extension[columns].value[x] only integer
* extension[columns] ^short = "Number of pixels in the direction of the column"
* extension[columns] ^definition = "Number of pixels in the column direction of the reconstructed matrix. Dicom Tag (0028,0011)"

* extension[imaging_injection].valueReference only Reference(onco-imagingstudy-injection)
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

* extension[mr_image].extension[sequence_name].value[x] 1..1 MS
* extension[mr_image].extension[sequence_name].value[x] only string
* extension[mr_image].extension[sequence_name] ^short = "Type of pulse sequence"
* extension[mr_image].extension[sequence_name] ^definition = "Type of pulse sequence. Dicom Tag (0018,0024)"

* extension[mr_image].extension[magnetic_field_strength].value[x] 1..1 MS
* extension[mr_image].extension[magnetic_field_strength].value[x] only decimal
* extension[mr_image].extension[magnetic_field_strength] ^short = "Nominal field strength"
* extension[mr_image].extension[magnetic_field_strength] ^definition = "Nominal field strength of the magnet, in Tesla. Dicom Tag (0018,0087)"

* extension[mr_image].extension[mr_acquisition_type].value[x] 1..1 MS
* extension[mr_image].extension[mr_acquisition_type].value[x] only string
* extension[mr_image].extension[mr_acquisition_type] ^short = "Description of the type of acquisition"
* extension[mr_image].extension[mr_acquisition_type] ^definition = "Describe the type of acquisition, particularly the number of dimension. Dicom Tag (0018,0023)"

* extension[mr_image].extension[repetition_time].value[x] 1..1 MS
* extension[mr_image].extension[repetition_time].value[x] only decimal
* extension[mr_image].extension[repetition_time] ^short = "Repetition time"
* extension[mr_image].extension[repetition_time] ^definition = "Repetition time in ms. Dicom Tag (0018,0080)"

* extension[mr_image].extension[echo_time].value[x] 1..1 MS
* extension[mr_image].extension[echo_time].value[x] only decimal
* extension[mr_image].extension[echo_time] ^short = "Echo time"
* extension[mr_image].extension[echo_time] ^definition = "Echo time in ms. Dicom Tag (0018,0081)"

* extension[mr_image].extension[imaging_frequency].value[x] 1..1 MS
* extension[mr_image].extension[imaging_frequency].value[x] only decimal
* extension[mr_image].extension[imaging_frequency] ^short = "Precession frequency"
* extension[mr_image].extension[imaging_frequency] ^definition = "Precession frequency in MHz of the target core. Dicom Tag (0018,0084)"

* extension[mr_image].extension[flip_angle].value[x] 1..1 MS
* extension[mr_image].extension[flip_angle].value[x] only decimal
* extension[mr_image].extension[flip_angle] ^short = "Flip angle"
* extension[mr_image].extension[flip_angle] ^definition = "Flip angle of the RF pulse in degrees impacting the T1 weighting. Dicom Tag (0018,0024) / (0018,1314)"

* extension[mr_image].extension[inversion_time].value[x] 1..1 MS
* extension[mr_image].extension[inversion_time].value[x] only decimal
* extension[mr_image].extension[inversion_time] ^short = "Period between the middle of the RF inversion pulse and the middle of the excitation pulse"
* extension[mr_image].extension[inversion_time] ^definition = "Period between the middle of the RF inversion pulse and the middle of the excitation pulse to detect the amount of longitudinal magnetization. Dicom Tag (0018,0082)"

* extension[mr_image].extension[receive_coil_name].value[x] 1..1 MS
* extension[mr_image].extension[receive_coil_name].value[x] only string 
* extension[mr_image].extension[receive_coil_name] ^short = "Receive coil name"
* extension[mr_image].extension[receive_coil_name] ^definition = "Receive coil name. Dicom Tag (0018,1250)"


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

* extension[ct_image].extension[kvp].value[x] MS
* extension[ct_image].extension[kvp].value[x] only integer
* extension[ct_image].extension[kvp] ^short = "Peak kilovoltage produced by the X-ray generator"
* extension[ct_image].extension[kvp] ^definition = "Peak kilovoltage of the voltage produced by the X-ray generator. Dicom Tag (0018,0060)"

* extension[ct_image].extension[xray_tube_current].value[x] 1..1 MS
* extension[ct_image].extension[xray_tube_current].value[x] only integer
* extension[ct_image].extension[xray_tube_current] ^short = "X-ray tube current in mA"
* extension[ct_image].extension[xray_tube_current] ^definition = "X-ray tube current in mA. Dicom Tag (0018,1151)"

* extension[ct_image].extension[exposure_time].value[x] 1..1 MS
* extension[ct_image].extension[exposure_time].value[x] only integer
* extension[ct_image].extension[exposure_time] ^short = "X-ray exposure time in ms"
* extension[ct_image].extension[exposure_time] ^definition = "X-ray exposure time in ms. Dicom Tag (0018,1150)"

* extension[ct_image].extension[spiral_pitch_factor].value[x] 1..1 MS
* extension[ct_image].extension[spiral_pitch_factor].value[x] only decimal
* extension[ct_image].extension[spiral_pitch_factor] ^short = "'Spiral Pitch' - Ratio between the table feed per rotation and the total width of the collimation"
* extension[ct_image].extension[spiral_pitch_factor] ^definition = "'Spiral Pitch' - Ratio between the table feed per rotation and the total width of the collimation. Dicom Tag (0018,9311)"

* extension[ct_image].extension[filter_type].value[x] 1..1 MS
* extension[ct_image].extension[filter_type].value[x] only string
* extension[ct_image].extension[filter_type] ^short = "Filter type"
* extension[ct_image].extension[filter_type] ^definition = "Filter type. DicomTag (0018,1160)"

* extension[ct_image].extension[convolution_kernel].value[x] 1..1 MS
* extension[ct_image].extension[convolution_kernel].value[x] only string
* extension[ct_image].extension[convolution_kernel] ^short = "Convolution kernel or algorithm"
* extension[ct_image].extension[convolution_kernel] ^definition = "A label describing the convolution kernel or algorithm used to recontruct the data. Dicom Tag (0018,1210)"

// ############
// # PT and NM IMAGE #
// ############
* extension[pt_nm_image].extension contains
    attenuation_correction_method 1..1 MS and
    reconstruction_method 1..1 MS and
    scatter_correction_method 1..1 MS

* extension[pt_nm_image].extension[attenuation_correction_method].value[x] 1..1 MS
* extension[pt_nm_image].extension[attenuation_correction_method].value[x] only string
* extension[pt_nm_image].extension[attenuation_correction_method] ^short = "Attenuation correction method"
* extension[pt_nm_image].extension[attenuation_correction_method] ^definition = "Attenuation correction method. Dicom Tag (0054,1101)"

* extension[pt_nm_image].extension[reconstruction_method].value[x] 1..1 MS
* extension[pt_nm_image].extension[reconstruction_method].value[x] only string
* extension[pt_nm_image].extension[reconstruction_method] ^short = "Reconstruction method"
* extension[pt_nm_image].extension[reconstruction_method] ^definition = "Reconstruction method e.g. 2D filtered back projection, 2D iterative, 3D PROMIS, 3D FAVOR, 3D iterative. Dicom Tag (0054,1103)"

* extension[pt_nm_image].extension[scatter_correction_method].value[x] 1..1 MS
* extension[pt_nm_image].extension[scatter_correction_method].value[x] only string
* extension[pt_nm_image].extension[scatter_correction_method] ^short = "Scattering correction method"
* extension[pt_nm_image].extension[scatter_correction_method] ^definition = "Scattering correction method. For example, convolution-subtraction, dual energy window, model based, use of attenuation data. Dicom Tag (0054,1105)"

// ############
// # DX IMAGE #
// ############
* extension[dx_image].extension contains
    image_laterality 1..1 MS and
    patient_orientation 0..1 MS and
    kvp 1..1 MS and
    exposure 1..1 MS and
    exposure_time 1..1 MS

* extension[dx_image].extension[image_laterality].value[x] 1..1 MS
* extension[dx_image].extension[image_laterality].value[x] only string
* extension[dx_image].extension[image_laterality] ^short = "Laterality of the body part"
* extension[dx_image].extension[image_laterality] ^definition = "Examination of the laterality of the body part examined. Dicom Tag (0020,0062)"

* extension[dx_image].extension[patient_orientation].value[x] MS
* extension[dx_image].extension[patient_orientation].value[x] only string
* extension[dx_image].extension[patient_orientation] ^short = "Patient orientation"
* extension[dx_image].extension[patient_orientation] ^definition = "Patient orientation. Dicom Tag (0020,0020)"

* extension[dx_image].extension[kvp].value[x] 1..1 MS
* extension[dx_image].extension[kvp].value[x] only integer
* extension[dx_image].extension[kvp] ^short = "Peak in kilovoltage of the X-ray generator used"
* extension[dx_image].extension[kvp] ^definition = "Peak kilovoltage of the voltage produced by the X-ray generator. Dicom Tag (0008,0060)"

* extension[dx_image].extension[exposure].value[x] 1..1 MS
* extension[dx_image].extension[exposure].value[x] only integer
* extension[dx_image].extension[exposure] ^short = "The exposure expressed in mAs"
* extension[dx_image].extension[exposure] ^definition = "The exposure expressed in mAs, for example calculated from the exposure time and the X-ray tube current. DicomTag (0018,1152)"

* extension[dx_image].extension[exposure_time].value[x] 1..1 MS
* extension[dx_image].extension[exposure_time].value[x] only integer
* extension[dx_image].extension[exposure_time] ^short = "Duration of X-ray exposure in ms"
* extension[dx_image].extension[exposure_time] ^short = "Duration of X-Ray exposure in ms. DicomTag (0018,1150)"

/*
    ###################################
    # MAPPING OSIRIS <--> FHIR-OSIRIS #
    ###################################
*/
Mapping: FhirOSIRISImagingStudy
Source: onco-imagingstudy
Target: "ImagingStudy"
Id: fhir-osiris-imaging-study
Title: "OSIRIS pivot files"
* -> "Imaging Study" "Imaging study description"

* subject -> "OSIRIS_pivot_Study.Patient_Id"
* reasonReference -> "OSIRIS_pivot_Study.Analysis_Ref"
* identifier -> "OSIRIS_pivot_Study.Study_StudyInstanceUID"
* endpoint -> "OSIRIS_pivot_Study.Study_Location"
* description -> "OSIRIS_pivot_Study.Study_StudyDescription"
* started -> "OSIRIS_pivot_Study.Study_AcquisitionDate"
* location -> "OSIRIS_pivot_Study.Study_InstitutionName"
* modality -> "OSIRIS_pivot_Study.Study_ModalitiesInStudy"
* numberOfSeries -> "OSIRIS_pivot_Study.Study_NbStudyRelatedSeries"

* series.number -> "OSIRIS_pivot_Series.Series_SeriesNumber"
* series.uid -> "OSIRIS_pivot_Series.Series_SeriesInstanceUID"
* series.modality -> "OSIRIS_pivot_Series.Series_Modality"
* series.description -> "OSIRIS_pivot_Series.Series_Description"
* series.bodySite -> "OSIRIS_pivot_Series.Series_BodyPartExamined"
* series.started -> "OSIRIS_pivot_Series.Series_AcquisitionDate"
* series.numberOfInstances -> "OSIRIS_pivot_Series.Series_NbSeriesRelatedInstances"
* series.performer.actor -> "OSIRIS_pivot_Series.Equipment_Ref"
* series.extension[series-weightheigt].extension[patient_weight] -> "OSIRIS_pivot_Series.Series_PatientWeight"
* series.extension[series-weightheigt].extension[patient_height] -> "OSIRIS_pivot_Series.Series_PatientSize"

* series.instance.uid -> "OSIRIS_pivot_CommonImage.CommonImage_SOPInstanceUID"
* series.extension[imaging-settings].extension[slice_thickness] -> "OSIRIS_pivot_CommonImage.CommonImage_SliceThickness"
* series.extension[imaging-settings].extension[pixel_spacing] -> "OSIRIS_pivot_CommonImage.CommonImage_PixelSpacing"
* series.extension[imaging-settings].extension[field_of_view] -> "OSIRIS_pivot_CommonImage.CommonImage_FieldOfView"
* series.extension[imaging-settings].extension[rows] -> "OSIRIS_pivot_CommonImage.CommonImage_Rows"
* series.extension[imaging-settings].extension[columns] -> "OSIRIS_pivot_CommonImage.CommonImage_Columns"

* series.extension[imaging-settings].extension[mr_image].extension[sequence_name] -> "OSIRIS_pivot_MRImage.MRImage_SequenceName"
* series.extension[imaging-settings].extension[mr_image].extension[magnetic_field_strength] -> "OSIRIS_pivot_MRImage.MRImage_MagneticFieldStrength"
* series.extension[imaging-settings].extension[mr_image].extension[mr_acquisition_type] -> "OSIRIS_pivot_MRImage.MRImage_MRAcquisitionType"
* series.extension[imaging-settings].extension[mr_image].extension[repetition_time] -> "OSIRIS_pivot_MRImage.MRImage_RepetitionTime"
* series.extension[imaging-settings].extension[mr_image].extension[echo_time] -> "OSIRIS_pivot_MRImage.MRImage_EchoTime"
* series.extension[imaging-settings].extension[mr_image].extension[imaging_frequency] -> "OSIRIS_pivot_MRImage.MRImage_ImagingFrequency"
* series.extension[imaging-settings].extension[mr_image].extension[flip_angle] -> "OSIRIS_pivot_MRImage.MRImage_FlipAngle"
* series.extension[imaging-settings].extension[mr_image].extension[inversion_time] -> "OSIRIS_pivot_MRImage.MRImage_InversionTime"
* series.extension[imaging-settings].extension[mr_image].extension[receive_coil_name] -> "OSIRIS_pivot_MRImage.MRImage_ReceiveCoilName" 


* series.extension[imaging-settings].extension[ct_image].extension[kvp] -> "OSIRIS_pivot_CTImage.CTImage_KVp"
* series.extension[imaging-settings].extension[ct_image].extension[xray_tube_current] -> "OSIRIS_pivot_CTImage.CTImage_XRayTubeCurrent"
* series.extension[imaging-settings].extension[ct_image].extension[exposure_time] -> "OSIRIS_pivot_CTImage.CTImage_ExposureTime"
* series.extension[imaging-settings].extension[ct_image].extension[spiral_pitch_factor] -> "OSIRIS_pivot_CTImage.CTImage_SpiralPitchFactor"
* series.extension[imaging-settings].extension[ct_image].extension[filter_type] -> "OSIRIS_pivot_CTImage.CTImage_FilterType"
* series.extension[imaging-settings].extension[ct_image].extension[convolution_kernel] -> "OSIRIS_pivot_CTImage.CTImage_ConvolutionKernel"

* series.extension[imaging-settings].extension[pt_nm_image].extension[attenuation_correction_method] -> "OSIRIS_pivot_NMImage.NMImage_AttenuationCorrectionMethod"
* series.extension[imaging-settings].extension[pt_nm_image].extension[reconstruction_method] -> "OSIRIS_pivot_NMImage.NMImage_ReconstructionMethod"
* series.extension[imaging-settings].extension[pt_nm_image].extension[scatter_correction_method] -> "OSIRIS_pivot_NMImage.NMImage_ScatterCorrectionMethod"


* series.extension[imaging-settings].extension[dx_image].extension[image_laterality] -> "OSIRIS_pivot_DXImage.DXImage_ImageLaterality"
* series.extension[imaging-settings].extension[dx_image].extension[patient_orientation] -> "OSIRIS_pivot_DXImage.DXImage_PatientOrientation"
* series.extension[imaging-settings].extension[dx_image].extension[kvp] -> "OSIRIS_pivot_DXImage.DXImage_KVP"
* series.extension[imaging-settings].extension[dx_image].extension[exposure] -> "OSIRIS_pivot_DXImage.DXImage_Exposure"
* series.extension[imaging-settings].extension[dx_image].extension[exposure_time] -> "OSIRIS_pivot_DXImage.DXImage_ExposureTime"


/*
    ##########################
    # FHIR-OSIRIS  <--> DICOM #
    ##########################
*/
Mapping: FhirToDicomImagingStudy
Source: onco-imagingstudy
Target: "ImagingStudy"
Id: fhir-osiris-to-dicom-imaging-study
Title: "DICOM Tag Mapping (version OSIRIS)"
* -> "Imaging Study" "Imaging study description"

* identifier -> "Dicom Tag (0020,000D)"
* description -> "Dicom Tag (0008,1030)"
* started -> "Dicom Tag (0008, 0032), (0008, 0022) or Dicom Tag (0008, 0021), (0008, 0023) or Dicom Tag (0008, 0031), (0008, 0033)"
* location -> "Dicom Tag (0008,0080)"
* modality -> "Dicom Tag (0008,0061)"
* numberOfSeries -> "Dicom Tag (0020,1206)"

* series.number -> "Dicom Tag (0020,0011)"
* series.uid -> "Dicom Tag (0020,000E)"
* series.modality -> "Dicom Tag (0008, 0060)"
* series.description -> "Dicom Tag (00e1, 1040), (0008, 103E), (0008, 1030)"
* series.bodySite -> "Dicom Tag (0018,0015)"
* series.numberOfInstances -> "Dicom Tag (0020,1209)"
* series.extension[series-weightheigt].extension[patient_weight] -> "Dicom Tag (0010,1030)"
* series.extension[series-weightheigt].extension[patient_height] -> "Dicom Tag (0010,1020)"
* series.started -> "Dicom Tag (0008,002a)/Dicom Tag (0008,0032)"

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

* series.extension[imaging-settings].extension[pt_nm_image].extension[attenuation_correction_method] -> "Dicom Tag (0054,1101)"
* series.extension[imaging-settings].extension[pt_nm_image].extension[reconstruction_method] -> "Dicom Tag (0054,1103)"
* series.extension[imaging-settings].extension[pt_nm_image].extension[scatter_correction_method] -> "Dicom Tag (0054,1105)"

* series.extension[imaging-settings].extension[dx_image].extension[image_laterality] -> "Dicom Tag (0020,0062)"
* series.extension[imaging-settings].extension[dx_image].extension[patient_orientation] -> "Dicom Tag (0020,0020)"
* series.extension[imaging-settings].extension[dx_image].extension[kvp] -> "Dicom Tag (0008,0060)"
* series.extension[imaging-settings].extension[dx_image].extension[exposure] -> "Dicom Tag (0018,1152)"
* series.extension[imaging-settings].extension[dx_image].extension[exposure_time] -> "Dicom Tag (0018,1150)"
