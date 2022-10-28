Instance: fhir-osiris-example-imagingstudy 
InstanceOf: OncoImagingStudy
Description: "Example of Imaging Study from OSIRIS_pivot_CommonImage.csv, OSIRIS_pivot_Study.csv, OSIRIS_pivot_CTImage.csv, OSIRIS_pivot_CommonImage.csv"

* identifier.value = "741.3.12.2.1107.5.8.15.131606.300000200206202439756000008556"
* modality = #CT //* fictional: obligatory but empty in pivot file
* subject = Reference(fhir-osiris-example-patient) // 13 in pivot file but change to be coherent with EX_PATIENT
* started = "2020-02-06"   //* "20200206 203320.358054" in pdf but does not correspond to datetime 
//* endpoint = "['set_osiris/Poumon/DICOM/39688736']" Add Reference
* numberOfSeries = 0 //* fictional: obligatory but empty in pivot file
* numberOfInstances = 0 //* fictional: obligatory but variable not found in pivot file
//* procedureReference 
//* location = 
* reasonReference = Reference(fhir-osiris-example-TumorPathologyEvent-instance-1) // no column in the pdf, used this reference from EX_TumorPathologyEvent
* description =  "" //* obligatory but empty in pivot file
* series.extension[imaging-settings].extension[slice_thickness].valueDecimal = 1.5
* series.extension[imaging-settings].extension[pixel_spacing].valueString  = "[0.63671875, 0.63671875]"
//* series.extension[imaging-settings].extension[fov] = 
* series.extension[imaging-settings].extension[rows].valueDecimal  = 512
* series.extension[imaging-settings].extension[columns].valueDecimal = 512
//* series.extension[imaging_injection] =  
* series.extension[imaging-settings].extension[ct_image].extension[kvp].valueDecimal  = 110
* series.extension[imaging-settings].extension[ct_image].extension[xray_tube_current].valueDecimal  = 75
* series.extension[imaging-settings].extension[ct_image].extension[exposure_time].valueDecimal = 600
* series.extension[imaging-settings].extension[ct_image].extension[spiral_pitch_factor].valueDecimal = 1.0
* series.extension[imaging-settings].extension[ct_image].extension[filter_type].valueString = "1"
* series.extension[imaging-settings].extension[ct_image].extension[convolution_kernel].valueString = "B41s"
* series.uid = "1.3.12.2.1107.5.8.15.131606.30000020020620243975600000856"
* series.number = 2
* series.modality = #CT
* series.description = "" //* obligatory but empty in pivot file
* series.bodySite = #CHEST
// * series.performer.actor = No information in OSIRIS_pivot_Series.csv and  
* series.instance.uid = "1.3.12.2.1107.5.8.15.131606.30000020020620243975600001109"
* series.instance.sopClass = #?
* status = #unknown // Not in pivot file but obligatory



							
