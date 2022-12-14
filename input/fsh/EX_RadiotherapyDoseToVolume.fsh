Instance: fhir-osiris-example-RadiotherapyDoseToVolume-1
InstanceOf: RadiotherapyDoseToVolume
Description: "Example of instance from OSIRIS_pivot_DoseToVolumeRT.csv"

* identifier.value = "1"
* subject = Reference(fhir-osiris-example-patient)
* status = #completed
* partOf[0] = Reference(fhir-osiris-example-RadiotherapyCourse-1)
* partOf[1] = Reference(fhir-osiris-example-RadiotherapyPhase-1)
* partOf[2] = Reference(fhir-osiris-example-RadiotherapyPlan-1)
* extension[volume].extension[volume].valueReference = Reference(fhir-osiris-example-RadiotherapyVolume-1)
* extension[dose-to-volume].extension[fractionDose].valueString = "266"
* extension[dose-to-volume].extension[numberOfFractions].valueUnsignedInt = 16
* extension[dose-to-volume].extension[totalDose].valueString = "4256"

Instance: fhir-osiris-example-RadiotherapyDoseToVolume-2
InstanceOf: RadiotherapyDoseToVolume
Description: "Example of instance from OSIRIS_pivot_DoseToVolumeRT.csv"

* identifier.value = "2"
* subject = Reference(fhir-osiris-example-patient)
* status = #completed
* partOf[0] = Reference(fhir-osiris-example-RadiotherapyCourse-1)
* partOf[1] = Reference(fhir-osiris-example-RadiotherapyPhase-1)
* partOf[2] = Reference(fhir-osiris-example-RadiotherapyPlan-1)
* extension[volume].extension[volume].valueReference = Reference(fhir-osiris-example-RadiotherapyVolume-2)
* extension[dose-to-volume].extension[fractionDose].valueString = "266"
* extension[dose-to-volume].extension[numberOfFractions].valueUnsignedInt = 16
* extension[dose-to-volume].extension[totalDose].valueString = "4256"

Instance: fhir-osiris-example-RadiotherapyDoseToVolume-3
InstanceOf: RadiotherapyDoseToVolume
Description: "Example of instance from OSIRIS_pivot_DoseToVolumeRT.csv"

* identifier.value = "3"
* subject = Reference(fhir-osiris-example-patient)
* status = #completed
* partOf[0] = Reference(fhir-osiris-example-RadiotherapyCourse-1)
* partOf[1] = Reference(fhir-osiris-example-RadiotherapyPhase-1)
* partOf[2] = Reference(fhir-osiris-example-RadiotherapyPlan-1)
* extension[volume].extension[volume].valueReference = Reference(fhir-osiris-example-RadiotherapyVolume-3)
* extension[dose-to-volume].extension[fractionDose].valueString = "266"
* extension[dose-to-volume].extension[numberOfFractions].valueUnsignedInt = 16
* extension[dose-to-volume].extension[totalDose].valueString = "4256"

Instance: fhir-osiris-example-RadiotherapyDoseToVolume-4
InstanceOf: RadiotherapyDoseToVolume
Description: "Example of instance from OSIRIS_pivot_DoseToVolumeRT.csv"

* identifier.value = "3"
* subject = Reference(fhir-osiris-example-patient)
* status = #completed
* partOf[0] = Reference(fhir-osiris-example-RadiotherapyCourse-1)
* partOf[1] = Reference(fhir-osiris-example-RadiotherapyPhase-2)
* partOf[2] = Reference(fhir-osiris-example-RadiotherapyPlan-2)
* extension[volume].extension[volume].valueReference = Reference(fhir-osiris-example-RadiotherapyVolume-2)
* extension[dose-to-volume].extension[fractionDose].valueString = "266"
* extension[dose-to-volume].extension[numberOfFractions].valueUnsignedInt = 16
* extension[dose-to-volume].extension[totalDose].valueString = "4256"

Instance: fhir-osiris-example-RadiotherapyDoseToVolume-5
InstanceOf: RadiotherapyDoseToVolume
Description: "Example of instance from OSIRIS_pivot_DoseToVolumeRT.csv"

* identifier.value = "3"
* subject = Reference(fhir-osiris-example-patient)
* status = #completed
* partOf[0] = Reference(fhir-osiris-example-RadiotherapyCourse-1)
* partOf[1] = Reference(fhir-osiris-example-RadiotherapyPhase-3)
* partOf[2] = Reference(fhir-osiris-example-RadiotherapyPlan-3)
* extension[volume].extension[volume].valueReference = Reference(fhir-osiris-example-RadiotherapyVolume-4)
* extension[dose-to-volume].extension[fractionDose].valueString = "266"
* extension[dose-to-volume].extension[numberOfFractions].valueUnsignedInt = 16
* extension[dose-to-volume].extension[totalDose].valueString = "4256"