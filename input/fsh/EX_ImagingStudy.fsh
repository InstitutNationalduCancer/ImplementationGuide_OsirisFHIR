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
* series.modality = SeriesModalityCS#CT
* series.description = "Unknown"
* series.bodySite = ICDO3#C76.1
* series.started  = "2020-02-06"
* series.numberOfInstances = 999999
* series.performer.actor = Reference(fhir-osiris-example-imagingdevice-ct)
* series.extension[series-weightheigt].extension[patient_weight].valueDecimal = 999999
* series.extension[series-weightheigt].extension[patient_height].valueDecimal = 999999

* series.instance.uid = "1.3.12.2.1107.5.8.15.131606.30000020020620243975600001109"
* series.extension[imaging-settings].extension[slice_thickness].valueString = "1.5"
* series.extension[imaging-settings].extension[pixel_spacing].valueString = "[0.63671875, 0.63671875]"
* series.extension[imaging-settings].extension[field_of_view].valueInteger = 999999
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
* started = "	2008-05-17"
// * location = 
* modality = UMLS#C0439673
* numberOfSeries = 999999
* status = http://hl7.org/fhir/imagingstudy-status#available

* series.number = 604	
* series.uid = ""
* series.instance.sopClass.code = https://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html#table_B.5-1#
* series.instance.sopClass.display = "1.2.840.113654.2.70.1.113529323909702015163602886063558263046"
* series.modality = SeriesModalityCS#MR
* series.description = "sFRAME 3"
* series.bodySite = ICDO3#C50
* series.started  = "2008-05-17"
* series.numberOfInstances = 999999
* series.performer.actor = Reference()
* series.extension[series-weightheigt].extension[patient_weight].valueDecimal = 90
* series.extension[series-weightheigt].extension[patient_height].valueDecimal = 999999

* series.instance.uid = "1.2.840.113654.2.70.1.208881666336949156802141584133456920873"
* series.extension[imaging-settings].extension[slice_thickness].valueString = "2"
* series.extension[imaging-settings].extension[pixel_spacing].valueString = "[0.75, 0.75]"
* series.extension[imaging-settings].extension[field_of_view].valueInteger = 999999
* series.extension[imaging-settings].extension[rows].valueInteger = 480
* series.extension[imaging-settings].extension[columns].valueInteger = 480

* series.extension[imaging-settings].extension[mr_image].extension[sequence_name].valueString = "Unknown"
* series.extension[imaging-settings].extension[mr_image].extension[magnetic_field_strength].valueDecimal = 1.5
* series.extension[imaging-settings].extension[mr_image].extension[mr_acquisition_type].valueString = "3D"
* series.extension[imaging-settings].extension[mr_image].extension[repetition_time].valueDecimal = "5.49580001831054"
* series.extension[imaging-settings].extension[mr_image].extension[echo_time].valueDecimal = "2.73"
* series.extension[imaging-settings].extension[mr_image].extension[imaging_frequency].valueDecimal = "63.877401"
* series.extension[imaging-settings].extension[mr_image].extension[flip_angle].valueDecimal = 999999
* series.extension[imaging-settings].extension[mr_image].extension[inversion_time].valueDecimal = 999999
* series.extension[imaging-settings].extension[mr_image].extension[receive_coil_name].valueString = "SENSE-Breast16M"

/*Instance: fhir-osiris-example-imagingstudy-pt-nm
InstanceOf: OncoImagingStudy
Description: "Example of Imaging Study from OSIRIS_pivot_CommonImage.csv, OSIRIS_pivot_Study.csv, OSIRIS_pivot_CTImage.csv, OSIRIS_pivot_CommonImage.csv"

* subject = Reference()
* reasonReference = Reference()
* identifier.value = ""
* endpoint = Reference()
* description = ""
* started = ""
// * location = 
* modality = UMLS#C0439673
* numberOfSeries = 
* status = http://hl7.org/fhir/imagingstudy-status#available

* series.number = 
* series.uid = ""
* series.instance.sopClass.code = https://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html#table_B.5-1#
* series.instance.sopClass.display = ""
* series.modality = SeriesModalityCS#
* series.description = "Unknown"
* series.bodySite = ICDO3#
* series.started  = ""
* series.numberOfInstances = 999999
* series.performer.actor = Reference()
* series.extension[series-weightheigt].extension[patient_weight].valueDecimal = 
* series.extension[series-weightheigt].extension[patient_height].valueDecimal =

* series.instance.uid = ""
* series.extension[imaging-settings].extension[slice_thickness].valueString = ""
* series.extension[imaging-settings].extension[pixel_spacing].valueString = ""
* series.extension[imaging-settings].extension[field_of_view].valueInteger =
* series.extension[imaging-settings].extension[rows].valueInteger =
* series.extension[imaging-settings].extension[columns].valueInteger =

* series.extension[imaging-settings].extension[pt_nm_image].extension[attenuation_correction_method] =
* series.extension[imaging-settings].extension[pt_nm_image].extension[reconstruction_method] =
* series.extension[imaging-settings].extension[pt_nm_image].extension[scatter_correction_method] =


Instance: fhir-osiris-example-imagingstudy-dx
InstanceOf: OncoImagingStudy
Description: "Example of Imaging Study from OSIRIS_pivot_CommonImage.csv, OSIRIS_pivot_Study.csv, OSIRIS_pivot_CTImage.csv, OSIRIS_pivot_CommonImage.csv"

* subject = Reference()
* reasonReference = Reference()
* identifier.value = ""
* endpoint = Reference()
* description = ""
* started = ""
// * location = 
* modality = UMLS#C0439673
* numberOfSeries = 
* status = http://hl7.org/fhir/imagingstudy-status#available

* series.number = 
* series.uid = ""
* series.instance.sopClass.code = https://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html#table_B.5-1#
* series.instance.sopClass.display = ""
* series.modality = SeriesModalityCS#
* series.description = "Unknown"
* series.bodySite = ICDO3#
* series.started  = ""
* series.numberOfInstances = 999999
* series.performer.actor = Reference()
* series.extension[series-weightheigt].extension[patient_weight].valueDecimal = 
* series.extension[series-weightheigt].extension[patient_height].valueDecimal =

* series.instance.uid = ""
* series.extension[imaging-settings].extension[slice_thickness].valueString = ""
* series.extension[imaging-settings].extension[pixel_spacing].valueString = ""
* series.extension[imaging-settings].extension[field_of_view].valueInteger =
* series.extension[imaging-settings].extension[rows].valueInteger =
* series.extension[imaging-settings].extension[columns].valueInteger =
* series.extension[imaging-settings].extension[dx_image].extension[image_laterality] =
* series.extension[imaging-settings].extension[dx_image].extension[patient_orientation] =
* series.extension[imaging-settings].extension[dx_image].extension[kvp] =
* series.extension[imaging-settings].extension[dx_image].extension[exposure] =
* series.extension[imaging-settings].extension[dx_image].extension[exposure_time] = 

