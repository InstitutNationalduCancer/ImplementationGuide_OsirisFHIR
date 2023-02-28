Instance: fhir-osiris-example-RadiotherapyPhase-1
InstanceOf: RadiotherapyPhase
Description: "Example of instance from OSIRIS_pivot_PhaseRT.csv, OSIRIS_pivot_EnergyOrIsotopeRT.csv and OSIRIS_pivot_ModalityAndTechniqueRT.csv"

* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-RadiotherapyCourse-1)
* status = #completed
* category = RadiotherapyCS#Planned
* performedPeriod.start = "2018-08-15"
* performedPeriod.end  = "2018-11-25"
* extension[numberOfFractions].valueUnsignedInt = 16

Instance: fhir-osiris-example-RadiotherapyPhase-2
InstanceOf: RadiotherapyPhase
Description: "Example of instance from OSIRIS_pivot_PhaseRT.csv, OSIRIS_pivot_EnergyOrIsotopeRT.csv and OSIRIS_pivot_ModalityAndTechniqueRT.csv"

* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-RadiotherapyCourse-1)
* status = #completed
* category = RadiotherapyCS#Planned
* performedPeriod.start = "2018-11-25"
* performedPeriod.end  = "2018-12-25"
* extension[numberOfFractions].valueUnsignedInt = 4

Instance: fhir-osiris-example-RadiotherapyPhase-3
InstanceOf: RadiotherapyPhase
Description: "Example of instance from OSIRIS_pivot_PhaseRT.csv, OSIRIS_pivot_EnergyOrIsotopeRT.csv and OSIRIS_pivot_ModalityAndTechniqueRT.csv"

* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-RadiotherapyCourse-1)
* status = #completed
* category = RadiotherapyCS#Planned
* performedPeriod.start = "2018-09-15"
* performedPeriod.end  = "2018-12-25"
* extension[numberOfFractions].valueUnsignedInt = 16

Instance: fhir-osiris-example-RadiotherapyPhase-4
InstanceOf: RadiotherapyPhase
Description: "Example of instance from OSIRIS_pivot_PhaseRT.csv, OSIRIS_pivot_EnergyOrIsotopeRT.csv and OSIRIS_pivot_ModalityAndTechniqueRT.csv"

* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-RadiotherapyCourse-2)
* status = #completed
* category = RadiotherapyCS#Delivered
* performedPeriod.start = "2018-08-15"
* performedPeriod.end  = "2018-11-25"
* extension[numberOfFractions].valueUnsignedInt = 16

Instance: fhir-osiris-example-RadiotherapyPhase-5
InstanceOf: RadiotherapyPhase
Description: "Example of instance from OSIRIS_pivot_PhaseRT.csv, OSIRIS_pivot_EnergyOrIsotopeRT.csv and OSIRIS_pivot_ModalityAndTechniqueRT.csv"

* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-RadiotherapyCourse-2)
* status = #completed
* category = RadiotherapyCS#Delivered
* performedPeriod.start = "2018-11-25"
* performedPeriod.end  = "2018-12-25"
* extension[numberOfFractions].valueUnsignedInt = 4

Instance: fhir-osiris-example-RadiotherapyPhase-6
InstanceOf: RadiotherapyPhase
Description: "Example of instance from OSIRIS_pivot_PhaseRT.csv, OSIRIS_pivot_EnergyOrIsotopeRT.csv and OSIRIS_pivot_ModalityAndTechniqueRT.csv"

* subject = Reference(fhir-osiris-example-patient)
* partOf = Reference(fhir-osiris-example-RadiotherapyCourse-6)
* status = #completed
* category = RadiotherapyCS#Delivered
* performedPeriod.start = "2018-09-15"
* performedPeriod.end  = "2018-12-25"
* extension[numberOfFractions].valueUnsignedInt = 16