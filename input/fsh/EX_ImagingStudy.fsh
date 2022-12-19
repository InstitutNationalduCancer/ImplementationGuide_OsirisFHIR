Instance: fhir-osiris-example-imagingstudy-ct
InstanceOf: OncoImagingStudy
Description: "Example of Imaging Study from OSIRIS_pivot_CommonImage.csv, OSIRIS_pivot_Study.csv, OSIRIS_pivot_CTImage.csv, OSIRIS_pivot_CommonImage.csv"

* subject = Reference(fhir-osiris-example-patient-ct-scan)
* reasonReference = Reference(fhir-osiris-example-analysis-ct-scan)
* identifier.value = "1.3.12.2.1107.5.8.15.131606.30000020020620243975600000855"
* endpoint = Reference(fhir-osiris-example-imagingstudy-ct)
* description = "Unknown"
* started = "2020-02-06"
// * location = 
* modality = UMLS#C0439673
* numberOfInstances = 999999

* series.number = 2
* series.uid = "1.3.12.2.1107.5.8.15.131606.30000020020620243975600000856"
* series.modality = SeriesModalityCS#CT
* series.description = "Unknown"
* series.bodySite = ICDO3#C76.1
* series.started  = "2020-02-06"
* series.numberOfInstances = 999999
* series.performer.actor = Reference(fhir-osiris-example-imagingdevice-ct)
* series.extension[series-weightheigt].extension[patient_weight] = 999999
* series.extension[series-weightheigt].extension[patient_height] = 999999

* series.instance.uid = "1.3.12.2.1107.5.8.15.131606.30000020020620243975600001109"
* series.extension[imaging-settings].extension[slice_thickness] = "1.5"
* series.extension[imaging-settings].extension[pixel_spacing] = "[0.63671875, 0.63671875]"
* series.extension[imaging-settings].extension[field_of_view] = 999999
* series.extension[imaging-settings].extension[rows] = 512
* series.extension[imaging-settings].extension[columns] = 512

* series.extension[imaging-settings].extension[ct_image].extension[kvp] = 140
* series.extension[imaging-settings].extension[ct_image].extension[xray_tube_current] = 70
* series.extension[imaging-settings].extension[ct_image].extension[exposure_time] = 870
* series.extension[imaging-settings].extension[ct_image].extension[spiral_pitch_factor] = 999999
* series.extension[imaging-settings].extension[ct_image].extension[filter_type] = "BODY FILTER"
* series.extension[imaging-settings].extension[ct_image].extension[convolution_kernel] = "STANDARD"

/*Instance: fhir-osiris-example-imagingstudy-mri
InstanceOf: OncoImagingStudy
Description: "Example of Imaging Study from OSIRIS_pivot_CommonImage.csv, OSIRIS_pivot_Study.csv, OSIRIS_pivot_CTImage.csv, OSIRIS_pivot_CommonImage.csv"

							
* series.extension[imaging-settings].extension[mr_image].extension[sequence_name] =
* series.extension[imaging-settings].extension[mr_image].extension[magnetic_field_strength] =
* series.extension[imaging-settings].extension[mr_image].extension[mr_acquisition_type] =
* series.extension[imaging-settings].extension[mr_image].extension[repetition_time] =
* series.extension[imaging-settings].extension[mr_image].extension[echo_time] =
* series.extension[imaging-settings].extension[mr_image].extension[imaging_frequency] =
* series.extension[imaging-settings].extension[mr_image].extension[flip_angle] =
* series.extension[imaging-settings].extension[mr_image].extension[inversion_time] =
* series.extension[imaging-settings].extension[mr_image].extension[receive_coil_name] = 

* series.extension[imaging-settings].extension[pt_nm_image].extension[attenuation_correction_method] =
* series.extension[imaging-settings].extension[pt_nm_image].extension[reconstruction_method] =
* series.extension[imaging-settings].extension[pt_nm_image].extension[scatter_correction_method] =


* series.extension[imaging-settings].extension[dx_image].extension[image_laterality] =
* series.extension[imaging-settings].extension[dx_image].extension[patient_orientation] =
* series.extension[imaging-settings].extension[dx_image].extension[kvp] =
* series.extension[imaging-settings].extension[dx_image].extension[exposure] =
* series.extension[imaging-settings].extension[dx_image].extension[exposure_time] = */