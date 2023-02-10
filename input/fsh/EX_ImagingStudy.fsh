Instance: fhir-osiris-example-imagingstudy-ct
InstanceOf: OncoImagingStudy
Description: "Example of Imaging Study from OSIRIS_pivot_CommonImage.csv, OSIRIS_pivot_Study.csv, OSIRIS_pivot_CTImage.csv, OSIRIS_pivot_CommonImage.csv"

* subject = Reference(fhir-osiris-example-patient-ct-scan)
* reasonReference = Reference(fhir-osiris-example-analysis-ct-scan)
* identifier.value = "1.3.12.2.1107.5.8.15.131606.30000020020620243975600000855"
* endpoint = Reference(fhir-osiris-example-imagingendpoint-ct)
* description = "Unknown"
* started = "2020-02-06"
// * location = 
* modality = UMLS#C0439673
* numberOfSeries = 999999
* status = http://hl7.org/fhir/imagingstudy-status#available

* series.number = 2
* series.uid = "1.3.12.2.1107.5.8.15.131606.30000020020620243975600000856"
* series.instance.sopClass.code = https://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html#table_B.5-1#1.2.840.10008.5.1.4.1.1.2
* series.instance.sopClass.display = "CT Image Storage"
* series.modality = DICOM#CT
* series.description = "Unknown"
* series.bodySite = SCT#43799004
* series.started  = "2020-02-06"
* series.numberOfInstances = 999999
* series.performer.actor = Reference(fhir-osiris-example-imagingdevice-ct)
* series.extension[series-weightheigt].extension[patient_weight].valueDecimal = 999999
* series.extension[series-weightheigt].extension[patient_height].valueDecimal = 999999

* series.instance.uid = "1.3.12.2.1107.5.8.15.131606.30000020020620243975600001109"
* series.extension[imaging-settings].extension[slice_thickness].valueString = "1.5"
* series.extension[imaging-settings].extension[pixel_spacing].valueString = "[0.63671875, 0.63671875]"
//* series.extension[imaging-settings].extension[field_of_view].valueInteger = 999999
* series.extension[imaging-settings].extension[rows].valueInteger = 512
* series.extension[imaging-settings].extension[columns].valueInteger = 512

* series.extension[imaging-settings].extension[ct_image].extension[kvp].valueInteger = 140
* series.extension[imaging-settings].extension[ct_image].extension[xray_tube_current].valueInteger = 70
* series.extension[imaging-settings].extension[ct_image].extension[exposure_time].valueInteger = 870
* series.extension[imaging-settings].extension[ct_image].extension[spiral_pitch_factor].valueDecimal = 999999
* series.extension[imaging-settings].extension[ct_image].extension[filter_type].valueString = "BODY FILTER"
* series.extension[imaging-settings].extension[ct_image].extension[convolution_kernel].valueString = "STANDARD"

Instance: fhir-osiris-example-imagingstudy-mri
InstanceOf: OncoImagingStudy
Description: "Example of Imaging Study from OSIRIS_pivot_CommonImage.csv, OSIRIS_pivot_Study.csv, OSIRIS_pivot_MRImage.csv, OSIRIS_pivot_CommonImage.csv"

* subject = Reference(fhir-osiris-example-patient-mr)
* reasonReference = Reference(fhir-osiris-example-analysis-mr)
* identifier.value = "1.2.840.113654.2.70.1.264191517102522984763858507036706241396"
* endpoint = Reference(fhir-osiris-example-imagingendpoint-mr)
* description = "Unknown"
* started = "2008-05-17"
// * location = 
* modality = UMLS#C0439673
* numberOfSeries = 999999
* status = http://hl7.org/fhir/imagingstudy-status#available

* series.number = 604	
* series.uid = "1.2.840.113654.2.70.1.113529323909702015163602886063558263046"
* series.instance.sopClass.code = https://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html#table_B.5-1#1.2.840.10008.5.1.4.1.1.4
* series.instance.sopClass.display = "MR Image Storage"
* series.modality = DICOM#MR
* series.description = "sFRAME 3"
* series.bodySite = SCT#76752008
* series.started  = "2008-05-17"
* series.numberOfInstances = 999999
* series.performer.actor = Reference(fhir-osiris-example-imagingdevice-mr)
* series.extension[series-weightheigt].extension[patient_weight].valueDecimal = 90
* series.extension[series-weightheigt].extension[patient_height].valueDecimal = 999999

* series.instance.uid = "1.2.840.113654.2.70.1.208881666336949156802141584133456920873"
* series.extension[imaging-settings].extension[slice_thickness].valueString = "2"
* series.extension[imaging-settings].extension[pixel_spacing].valueString = "[0.75, 0.75]"
//* series.extension[imaging-settings].extension[field_of_view].valueInteger = 999999
* series.extension[imaging-settings].extension[rows].valueInteger = 480
* series.extension[imaging-settings].extension[columns].valueInteger = 480

* series.extension[imaging-settings].extension[mr_image].extension[sequence_name].valueString = "Unknown"
* series.extension[imaging-settings].extension[mr_image].extension[magnetic_field_strength].valueDecimal = 1.5
* series.extension[imaging-settings].extension[mr_image].extension[mr_acquisition_type].valueString = "3D"
* series.extension[imaging-settings].extension[mr_image].extension[repetition_time].valueDecimal = 5.49580001831054
* series.extension[imaging-settings].extension[mr_image].extension[echo_time].valueDecimal = 2.73
* series.extension[imaging-settings].extension[mr_image].extension[imaging_frequency].valueDecimal = 63.877401
* series.extension[imaging-settings].extension[mr_image].extension[flip_angle].valueDecimal = 999999
* series.extension[imaging-settings].extension[mr_image].extension[inversion_time].valueDecimal = 999999
* series.extension[imaging-settings].extension[mr_image].extension[receive_coil_name].valueString = "SENSE-Breast16M"

Instance: fhir-osiris-example-imagingstudy-pt-nm
InstanceOf: OncoImagingStudy
Description: "Example of Imaging Study from OSIRIS_pivot_CommonImage.csv, OSIRIS_pivot_Study.csv, OSIRIS_pivot_CTImage.csv, OSIRIS_pivot_CommonImage.csv"

* subject = Reference(fhir-osiris-example-patient-pt-nm)
* reasonReference = Reference(fhir-osiris-example-analysis-pt-nm)
* identifier.value = "1.3.6.1.4.1.14519.5.2.1.5168.1900.291490762800233473213844289511"
* endpoint = Reference(fhir-osiris-example-imagingendpoint-pt-nm)
* description = "CT PET with registered MR	"
* started = "2004-01-27"
// * location = 
* modality = UMLS#C0439673
* numberOfSeries = 999999
* status = http://hl7.org/fhir/imagingstudy-status#available

* series.number = 4	 
* series.uid = "1.3.6.1.4.1.14519.5.2.1.5168.1900.250501927430896548137411991862"
* series.instance.sopClass.code = https://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html#table_B.5-1#1.2.840.10008.5.1.4.1.1.128
* series.instance.sopClass.display = "Positron Emission Tomography Image Storage"
* series.modality = DICOM#PT
* series.description = "LEGS_2D_AC PET CT with registered MR"
* series.bodySite = SCT#66019005
* series.started  = "2004-01-27"
* series.numberOfInstances = 999999
* series.performer.actor = Reference(fhir-osiris-example-imagingdevice-pt-nm)
* series.extension[series-weightheigt].extension[patient_weight].valueDecimal = 58.0
* series.extension[series-weightheigt].extension[patient_height].valueDecimal = 1.57

* series.instance.uid = "1.3.6.1.4.1.14519.5.2.1.5168.1900.309323295882753345616672095692"
* series.extension[imaging-settings].extension[slice_thickness].valueString = "3.2700"
* series.extension[imaging-settings].extension[pixel_spacing].valueString = "[5.46875, 5.46875]"
//* series.extension[imaging-settings].extension[field_of_view].valueInteger = 999999
* series.extension[imaging-settings].extension[rows].valueInteger = 128
* series.extension[imaging-settings].extension[columns].valueInteger = 128
* series.extension[imaging-settings].extension[imaging_injection].valueReference = Reference (fhir-osiris-example-injection-pt-nm)

* series.extension[imaging-settings].extension[pt_nm_image].extension[attenuation_correction_method].valueString = "measured,, 0.096000 cm-1"
* series.extension[imaging-settings].extension[pt_nm_image].extension[reconstruction_method].valueString = "OSEM"
* series.extension[imaging-settings].extension[pt_nm_image].extension[scatter_correction_method].valueString = "Convolution subtraction"


Instance: fhir-osiris-example-imagingstudy-dx
InstanceOf: OncoImagingStudy
Description: "Example of Imaging Study from OSIRIS_pivot_CommonImage.csv, OSIRIS_pivot_Study.csv, OSIRIS_pivot_CTImage.csv, OSIRIS_pivot_CommonImage.csv"

* subject = Reference(fhir-osiris-example-patient-dx)
* reasonReference = Reference(fhir-osiris-example-analysis-dx)
* identifier.value = "1.3.6.1.4.1.14519.5.2.1.6279.6001.175012972118199124641098335511"
* endpoint = Reference(fhir-osiris-example-imagingendpoint-dx)
* description = "Unknown"
* started = "2000-01-01"
// * location = 
* modality = UMLS#C0439673
* numberOfSeries = 999999
* status = http://hl7.org/fhir/imagingstudy-status#available

* series.number = 3000923
* series.uid = "1.3.6.1.4.1.14519.5.2.1.6279.6001.141365756818074696859567662357"
* series.instance.sopClass.code = https://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html#table_B.5-1#1.2.840.10008.5.1.4.1.1.1.1
* series.instance.sopClass.display = "Digital X-Ray Image Storage - For Presentation"
* series.modality = DICOM#DX
* series.description = "Unknown"
* series.bodySite = SCT#43799004
* series.started  = "2000-01-01"
* series.numberOfInstances = 999999
* series.performer.actor = Reference(fhir-osiris-example-imagingdevice-dx)
* series.extension[series-weightheigt].extension[patient_weight].valueDecimal = 999999
* series.extension[series-weightheigt].extension[patient_height].valueDecimal = 999999

* series.instance.uid = "1.3.6.1.4.1.14519.5.2.1.6279.6001.307896144859643716158189196068"
* series.extension[imaging-settings].extension[slice_thickness].valueString = "Unknown"
* series.extension[imaging-settings].extension[pixel_spacing].valueString = "Unknown"
//* series.extension[imaging-settings].extension[field_of_view].valueInteger =
* series.extension[imaging-settings].extension[rows].valueInteger = 2022
* series.extension[imaging-settings].extension[columns].valueInteger = 2022

* series.extension[imaging-settings].extension[dx_image].extension[image_laterality].valueString = "Unknown"
* series.extension[imaging-settings].extension[dx_image].extension[patient_orientation].valueString = "['P', 'F']"
* series.extension[imaging-settings].extension[dx_image].extension[kvp].valueInteger = 999999
* series.extension[imaging-settings].extension[dx_image].extension[exposure].valueInteger = 2
* series.extension[imaging-settings].extension[dx_image].extension[exposure_time].valueInteger = 7

Instance: fhir-osiris-example-imagingstudy-mri-2
InstanceOf: OncoImagingStudy
Description: "Example of Imaging Study from OSIRIS_pivot_CommonImage.csv, OSIRIS_pivot_Study.csv, OSIRIS_pivot_MRImage.csv, OSIRIS_pivot_CommonImage.csv"

* subject = Reference(fhir-osiris-example-patient-mr-2)
* reasonReference = Reference(fhir-osiris-example-analysis-mr-2)
* identifier.value = "1.3.6.1.4.1.14519.5.2.1.5168.1900.293144742514571789106915674609	"
* endpoint = Reference(fhir-osiris-example-imagingendpoint-mr-2)
* description = "CT PET with registered MR"
* started = "2003-12-12"
// * location = 
* modality = UMLS#C0439673
* numberOfSeries = 999999
* status = http://hl7.org/fhir/imagingstudy-status#available

* series.number = 90027	
* series.uid = "1.3.6.1.4.1.14519.5.2.1.5168.1900.143977537292523598024281101036"
* series.instance.sopClass.code = https://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html#table_B.5-1#1.2.840.10008.5.1.4.1.1.4
* series.instance.sopClass.display = "MR Image Storage"
* series.modality = DICOM#MR
* series.description = "Aligned_STIRtoPET_BOX CT PET with registered MR"
* series.bodySite = SCT#76752008
* series.started  = "2003-12-12"
* series.numberOfInstances = 999999
* series.performer.actor = Reference(fhir-osiris-example-imagingdevice-mr-2)
* series.extension[series-weightheigt].extension[patient_weight].valueDecimal = 65.0
* series.extension[series-weightheigt].extension[patient_height].valueDecimal = 999999

* series.instance.uid = "1.3.6.1.4.1.14519.5.2.1.5168.1900.145447087104754814293313200434"
* series.extension[imaging-settings].extension[slice_thickness].valueString = "3.2699585"
* series.extension[imaging-settings].extension[pixel_spacing].valueString = "[0.976562, 0.976562]"
//* series.extension[imaging-settings].extension[field_of_view].valueInteger = 999999
* series.extension[imaging-settings].extension[rows].valueInteger = 123
* series.extension[imaging-settings].extension[columns].valueInteger = 127

* series.extension[imaging-settings].extension[mr_image].extension[sequence_name].valueString = "Unknown"
* series.extension[imaging-settings].extension[mr_image].extension[magnetic_field_strength].valueDecimal = 999999
* series.extension[imaging-settings].extension[mr_image].extension[mr_acquisition_type].valueString = "Unknown"
* series.extension[imaging-settings].extension[mr_image].extension[repetition_time].valueDecimal = 999999
* series.extension[imaging-settings].extension[mr_image].extension[echo_time].valueDecimal = 999999
* series.extension[imaging-settings].extension[mr_image].extension[imaging_frequency].valueDecimal = 999999
* series.extension[imaging-settings].extension[mr_image].extension[flip_angle].valueDecimal = 999999
* series.extension[imaging-settings].extension[mr_image].extension[inversion_time].valueDecimal = 999999
* series.extension[imaging-settings].extension[mr_image].extension[receive_coil_name].valueString = "Unknown"