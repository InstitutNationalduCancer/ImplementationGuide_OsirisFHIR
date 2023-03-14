Instance: fhir-osiris-example-ROISegmentation 
InstanceOf: RoiSegmentation
Description: "Example of Patient from OSIRIS_pivot_ROISegmentation.csv"

* subject = Reference(fhir-osiris-example-patient-mr-2)
* partOf = Reference(fhir-osiris-example-imagingstudy-mri-2)
* identifier[dicom_reference][0].value = "1.3.6.1.4.1.14519.5.2.1.5168.1900.145447087104754814293313200434"
* identifier[dicom_reference][0].type.text = "dicom_reference"
* identifier[dicom_reference][1].value = "1.3.6.1.4.1.14519.5.2.1.5168.1900.145216219563575643804860454387"
* identifier[dicom_reference][1].type.text = "dicom_reference"
* identifier[dicom_reference][2].value = "1.3.6.1.4.1.14519.5.2.1.5168.1900.176764473138537905803461583603"
* identifier[dicom_reference][2].type.text = "dicom_reference"
* identifier[roi].value = "1 1"
* identifier[roi].type.text = "roi"
* identifier[file].value = "Unknown"
* identifier[file].type.text = "file"
* identifier[series_reference].value = "1.3.6.1.4.1.14519.5.2.1.5168.1900.731508463883905889576807557650"
* identifier[series_reference].type.text = "series_reference"

* text.div = "<div>Poumon</div>"
* text.status = #generated
* code = RadiomicsCS#DICOM
* status = #registered