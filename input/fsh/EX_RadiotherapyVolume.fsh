Instance: fhir-osiris-example-RadiotherapyVolume-1
InstanceOf: RadiotherapyVolume
Description: "Example of instance from OSIRIS_pivot_VolumeRT.csv"

* patient = Reference(fhir-osiris-example-patient)
* identifier.value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.102"
* location.coding = SnomedCS#76752008
* locationQualifier.coding[0] = SnomedCS#7771000
* locationQualifier.coding[1] = SnomedCS#255503000
* description = "Left Breast"

Instance: fhir-osiris-example-RadiotherapyVolume-2
InstanceOf: RadiotherapyVolume
Description: "Example of instance from OSIRIS_pivot_VolumeRT.csv"

* patient = Reference(fhir-osiris-example-patient)
* identifier.value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.103"
* location.coding = SnomedCS#76752008
* locationQualifier.coding[0] = SnomedCS#7771000
* locationQualifier.coding[1] = SnomedCS#255609007
* description = "Left Breast Surgical Bed"

Instance: fhir-osiris-example-RadiotherapyVolume-3
InstanceOf: RadiotherapyVolume
Description: "Example of instance from OSIRIS_pivot_VolumeRT.csv"

* patient = Reference(fhir-osiris-example-patient)
* identifier.value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.104"
* location.coding = SnomedCS#76752008
* locationQualifier.coding[0] = SnomedCS#7771000
* locationQualifier.coding[1] = SnomedCS#255503000
* locationQualifier.coding[1] = SnomedCS#68171009
* description = "Left Axillary Nodes"

Instance: fhir-osiris-example-RadiotherapyVolume-4
InstanceOf: RadiotherapyVolume
Description: "Example of instance from OSIRIS_pivot_VolumeRT.csv"

* patient = Reference(fhir-osiris-example-patient)
* identifier.value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.105"
* location.coding = SnomedCS#76752008
* locationQualifier.coding[0] = SnomedCS#24028007
* locationQualifier.coding[1] = SnomedCS#255503000
* description = "Right Breast"