Instance: fhir-osiris-example-ROISegmentation 
InstanceOf: RoiSegmentation
Description: "Example of Patient from OSIRIS_pivot_ROISegmentation.csv"

* text.div = "<div>Poumon</div>"
* text.status = #generated
* identifier[dicom].value = "" //* fictional: obligatory but variable not found in pivot file
* identifier[roi].value = ""
* partOf = Reference(fhir-osiris-example-imagingstudy)
* method = RadiomicsCS#DICOM
* subject = Reference(fhir-osiris-example-patient)
* identifier[file] = "Unknown"
* note.text = "Poumon"
* status = #registered // Not in pivot file but obligatory
