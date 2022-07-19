ValueSet: RadiotherapyVolumeTypeVS
Id: mcode-radiotherapy-volume-type-vs
Title: "Radiotherapy Volume Type Value Set"
Description: "Codes describing the types of body volumes used in radiotherapy planning and treatment. The value set includes the most common codes from DICOM CID 9534 Radiotherapy Targets (UID 1.2.840.10008.6.1.1244) and adds a code for Organs at Risk (OAR)."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#228793007 "Planning target volume (observable entity)"
* SCT#228791009 "Gross tumor volume (observable entity)"
* SCT#228792002 "Clinical target volume (observable entity)"
* SCT#1162586008 "Irradiated volume of organ at risk (observable entity)"
* SCT#1201745009 "Internal target volume (observable entity)"
* SCT#1201746005 "Internal gross tumor volume (observable entity)"


ValueSet: RadiotherapyTreatmentLocationQualifierVS
Id: mcode-radiotherapy-treatment-location-qualifier-vs
Title: "Radiotherapy Treatment Location Qualifier Value Set"
Description: "Various modifiers that can be applied to body locations where radiotherapy treatments can be directed."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* include codes from system SCT where concept is-a #258399006  "Lymph node level value (qualifier value)"  // I, II, III, IV, V, VI, VII and sub-levels
* exclude SCT#258399006 // the top level abstract code is excluded
//* include codes from valueset LateralityQualifierVS
// * SCT#255549009    "Anterior (qualifier value)" -- NOT USED BY TG263
// * SCT#255551008    "Posterior (qualifier value)" -- NOT USED BY TG263
* SCT#277733009 "Level 1 (qualifier value)"
* SCT#277734003 "Level 2 (qualifier value)"
* SCT#277735002 "Level 3 (qualifier value)"
* SCT#261089000    "Inferior (qualifier value)"
* SCT#264217000    "Superior (qualifier value)"
* SCT#261183002    "Upper (qualifier value)"
* SCT#261122009    "Lower (qualifier value)"
* SCT#260528009    "Middle (qualifier value)"
* SCT#46053002    "Distal (qualifier value)"
* SCT#40415009    "Proximal (qualifier value)"
* SCT#255503000    "Entire (qualifier value)" // flagged spuriously as invalid
* SCT#255609007    "Partial (qualifier value)"
//* SCT#7771000    "Left (qualifier value)" - now in separate lateralityQualifier
//* SCT#24028007    "Right (qualifier value)" - now in separate lateralityQualifier
//* SCT#51440002    "Right and left (qualifier value)" - now in separate lateralityQualifier
* SCT#14414005  "Peripheral (qualifier value)"
* SCT#26216008  "Central (qualifier value)"
* SCT#260235002 "Core (qualifier value)"
* SCT#410679008 "Surface (qualifier value)"
* SCT#260521003 "Internal (qualifier value)"
* SCT#261074009 "External (qualifier value)"
* SCT#261115001 "Laryngeal (qualifier value)"
* SCT#260548002  "Oral (qualifier value)"
* SCT#18769003   "Adjacent" // or "Juxta-posed (qualifier value)"
* SCT#1217011006 "Non-adjacent (qualifier value)"
* SCT#1162616006 "Lymph node level IA (qualifier value)"
* SCT#1162617002 "Lymph node level IB (qualifier value)"
* SCT#1162620005 "Lymph node level IVA (qualifier value)"
* SCT#1162621009 "Lymph node level IVB (qualifier value)"
* SCT#1162622002 "Lymph node level VA (qualifier value)"
* SCT#1162623007 "Lymph node level VB (qualifier value)"
* SCT#1162624001 "Lymph node level VC (qualifier value)"
* SCT#1162625000 "Lymph node level VIA (qualifier value)"
* SCT#1162626004 "Lymph node level VIB (qualifier value)"
* SCT#1162628003 "Lymph node level VIIA (qualifier value)"
* SCT#1162627008 "Lymph node level VIIB (qualifier value)"
* SCT#1162618007 "Lymph node level VIII (qualifier value)"
* SCT#1162619004 "Lymph node level IX (qualifier value)"
* SCT#1162614009 "Lymph node level X (qualifier value)"
* SCT#1162615005 "Lymph node level XA (qualifier value)"
* SCT#1162613003 "Lymph node level XB (qualifier value)"

ValueSet: RadiotherapyIntent
Id: radiotherapy-intent
Title: "Radiotherapy Intent"
Description: "RadioTherapy Intent Described in DicomTag(300A,000A)"
* DICOM#CURATIVE "Curative therapy on patient"
* DICOM#PALLIATIVE "Palliative therapy on patient"
* DICOM#PROPHYLACTIC "Preventative therapy on patient"
* DICOM#VERIFICATION "Verification of patient plan using phantom"
* DICOM#MACHINE_QA "Quality assurance of the delivery machine (independently of a specific patient)"
* DICOM#RESEARCH "Research project"
* DICOM#SERVICE "Machine repair or maintenance operation"

ValueSet: RadiotherapyIsotopes
Id: codex-radiotherapy-isotopes
Title: "Radiotherapy Isotopes"
Description: "Isotopes Used in Radiotherapy"
// include all cesium isotopes
* SCT#13237009 "Cesium-131 (substance)"
* SCT#55117002 "Cesium-137 (substance)"
// cobalt
* SCT#5405008 "Cobalt-60 (substance)"
// gold isotopes
* SCT#24301009  "Gold-198 (substance"
// include all iodine isotopes
* SCT#68630002 "Iodine-125 (substance)"
* SCT#1368003 "Iodine-131 (substance)"
// Iridium
* SCT#48341001 "Iridium-192 (substance)"
//Lutetium
* SCT#447553000  "Lutetium-177 (substance)"
// include all palladium isotopes
* SCT#9351000 "Palladium-103 (substance)"
// include all phosphorus isotopes
* SCT#32505007 "Phosphorus-32 (substance)"
// include all radium isotopes
* SCT#24853006 "Radium-223 (substance)"
//rhenium
* SCT#423578007 "Rhenium-188 (substance)"
// include all ruthenium isotopes
* SCT#8227001 "Ruthenium-106 (substance)"
// strontium
* SCT#14071002   "Strontium-90 (substance"
// xenon
* SCT#80751004  "Xenon-133 (substance)"
// yttrium
* SCT#14691008 "Yttrium-90 (substance)"