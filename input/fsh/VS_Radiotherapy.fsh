ValueSet: VSRadiotherapyCategory
Id: vs-radiotherapy-category
Title: "Radiotherapy Category"
Description: "Radiotherapy Category"
* RadiotherapyCS#planned
* RadiotherapyCS#delivered

ValueSet: VSRadiotherapyIntent
Id: vs-radiotherapy-intent
Title: "Radiotherapy Intent"
Description: "RadioTherapy Intent "
* SnomedCS#373808002	"Curative - procedure intent"
* SnomedCS#363676003	"Palliative - procedure intent"
* SnomedCS#399707004	"Supportive - procedure intent"
* SnomedCS#261004008	"Diagnostic intent"
* SnomedCS#129428001	"Preventive - intent"
* SnomedCS#429892002	"Guidance intent"
* SnomedCS#360156006	"Screening - procedure intent"
* SnomedCS#447295008	"Forensic intent"

ValueSet: VSRadiotherapyTerminationReason
Id: vs-radiotherapy-termination-reason
Title: "Radiotherapy Termination Reason"
Description: "Radiotherapy Termination Reason"
* SnomedCS#182992009	"Treatment completed (situation)"
* SnomedCS#266721009	"No response to treatment (situation)"
* SnomedCS#407563006	"Treatment not tolerated (situation)"
* SnomedCS#160932005	"Financial problem (finding)"
* SnomedCS#105480006	"Refusal of treatment by patient (situation)"
* SnomedCS#184081006	"Patient has moved away (finding)"
* SnomedCS#309846006	"Treatment not available (situation)"
* SnomedCS#399307001	"Lost to follow-up (finding)"
* SnomedCS#419620001	"Death (event)"

ValueSet: RadiotherapyVolumeTypeVS
Id: mcode-radiotherapy-volume-type-vs
Title: "Radiotherapy Volume Type Value Set"
Description: "Codes describing the types of body volumes used in radiotherapy planning and treatment. The value set includes the most common codes from DICOM CID 9534 Radiotherapy Targets (UID 1.2.840.10008.6.1.1244) and adds a code for Organs at Risk (OAR)."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SnomedCS#228793007 "Planning target volume (observable entity)"
* SnomedCS#228791009 "Gross tumor volume (observable entity)"
* SnomedCS#228792002 "Clinical target volume (observable entity)"
* SnomedCS#1162586008 "Irradiated volume of organ at risk (observable entity)"
* SnomedCS#1201745009 "Internal target volume (observable entity)"
* SnomedCS#1201746005 "Internal gross tumor volume (observable entity)"


ValueSet: RadiotherapyTreatmentLocationQualifierVS
Id: mcode-radiotherapy-treatment-location-qualifier-vs
Title: "Radiotherapy Treatment Location Qualifier Value Set"
Description: "Various modifiers that can be applied to body locations where radiotherapy treatments can be directed."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
//* include codes from system SnomedCS where concept is-a #258399006  "Lymph node level value (qualifier value)"  // I, II, III, IV, V, VI, VII and sub-levels
//* exclude SnomedCS#258399006 // the top level abstract code is excluded
//* include codes from valueset LateralityQualifierVS
// * SnomedCS#255549009    "Anterior (qualifier value)" -- NOT USED BY TG263
// * SnomedCS#255551008    "Posterior (qualifier value)" -- NOT USED BY TG263
* SnomedCS#277733009 "Level 1 (qualifier value)"
* SnomedCS#277734003 "Level 2 (qualifier value)"
* SnomedCS#277735002 "Level 3 (qualifier value)"
* SnomedCS#261089000    "Inferior (qualifier value)"
* SnomedCS#264217000    "Superior (qualifier value)"
* SnomedCS#261183002    "Upper (qualifier value)"
* SnomedCS#261122009    "Lower (qualifier value)"
* SnomedCS#260528009    "Middle (qualifier value)"
* SnomedCS#46053002    "Distal (qualifier value)"
* SnomedCS#40415009    "Proximal (qualifier value)"
* SnomedCS#255503000    "Entire (qualifier value)" // flagged spuriously as invalid
* SnomedCS#255609007    "Partial (qualifier value)"
* SnomedCS#7771000    "Left (qualifier value)"
* SnomedCS#24028007    "Right (qualifier value)"
* SnomedCS#51440002    "Right and left (qualifier value)"
* SnomedCS#14414005  "Peripheral (qualifier value)"
* SnomedCS#26216008  "Central (qualifier value)"
* SnomedCS#260235002 "Core (qualifier value)"
* SnomedCS#410679008 "Surface (qualifier value)"
* SnomedCS#260521003 "Internal (qualifier value)"
* SnomedCS#261074009 "External (qualifier value)"
* SnomedCS#261115001 "Laryngeal (qualifier value)"
* SnomedCS#260548002  "Oral (qualifier value)"
* SnomedCS#18769003   "Adjacent" // or "Juxta-posed (qualifier value)"
* SnomedCS#1217011006 "Non-adjacent (qualifier value)"
* SnomedCS#1162616006 "Lymph node level IA (qualifier value)"
* SnomedCS#1162617002 "Lymph node level IB (qualifier value)"
* SnomedCS#1162620005 "Lymph node level IVA (qualifier value)"
* SnomedCS#1162621009 "Lymph node level IVB (qualifier value)"
* SnomedCS#1162622002 "Lymph node level VA (qualifier value)"
* SnomedCS#1162623007 "Lymph node level VB (qualifier value)"
* SnomedCS#1162624001 "Lymph node level VC (qualifier value)"
* SnomedCS#1162625000 "Lymph node level VIA (qualifier value)"
* SnomedCS#1162626004 "Lymph node level VIB (qualifier value)"
* SnomedCS#1162628003 "Lymph node level VIIA (qualifier value)"
* SnomedCS#1162627008 "Lymph node level VIIB (qualifier value)"
* SnomedCS#1162618007 "Lymph node level VIII (qualifier value)"
* SnomedCS#1162619004 "Lymph node level IX (qualifier value)"
* SnomedCS#1162614009 "Lymph node level X (qualifier value)"
* SnomedCS#1162615005 "Lymph node level XA (qualifier value)"
* SnomedCS#1162613003 "Lymph node level XB (qualifier value)"

ValueSet: RadiotherapyReasonReplanificationVS
Id: codexrt-radiotherapy-reason-for-revision-or-adaptation-vs
Title: "Radiotherapy Reason Replanification"
Description: "Radiotherapy Reason Replanification"

* SnomedCS#373858009 "Radiotherapy course changed - acute radiotherapy toxicity (finding)"
* SnomedCS#314846003 "Patient given choice of treatment (finding)"   
* SnomedRequestedCScodex#1259981006  "Radiotherapy course change due to change to treatment intent (finding)"
* SnomedRequestedCScodex#1259231006  "Radiotherapy course changed due to changes to target (finding)"
* SnomedRequestedCScodex#1259232004  "Radiotherapy course changed due to change to organ at risk (finding)"   
