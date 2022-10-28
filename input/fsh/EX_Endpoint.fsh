Instance: fhir-osiris-example-EndpointImaging 
InstanceOf: EndpointImaging
Description: "Example of Patient from OSIRIS_pivot_ROISegmentation.csv"

* status = #test // Not in pivot file but obligatory
* connectionType = #standard // Not in pivot file but obligatory
* payloadType = http://terminology.hl7.org/CodeSystem/endpoint-payload-type#ihe:dent:CDA:ImagingReportStructuredHeadings:2013 // Not in pivot file but obligatory
* address = "['set_osiris/Poumon/DICOM/39688736']" 