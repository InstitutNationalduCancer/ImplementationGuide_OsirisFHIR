/*
####################################
######### OncoAdverseEvent #########
####################################
*/

Profile:        OncoAdverseEvent //Not really oncologic-specialized
Parent:         AdverseEvent
Id:             onco-adverse-event
Title:          "Oncologic Adverse Event"
Description:    "Adverse event related to a cancer-related treatment associated to a grade from MEDDRA terminology (ex: 10047700: \"Vomiting\")."
* subject only Reference (onco-patient)

// Extensions
* extension contains adverse-event-end-date named end-date 0..1
* extension[end-date] MS
* extension[end-date] ^short = "End date of the adverse event"

// Others
* event from AdverseEventCode (extensible) // AdverseEvent > Code

* seriousness ^short = "Grade of the adverse event"
* seriousness from http://bioportal.bioontology.org/ontologies/MEDDRA (preferred)

* suspectEntity.instance only Reference (onco-medication-statement or Immunization or Procedure or Substance or Medication or MedicationAdministration or MedicationStatement or Device)
* subjectMedicalHistory only Reference (TumorPathologyEvent)



Extension:  EndDate
Id: adverse-event-end-date
Title: "Adverse Event End date"
Description: "End date of the adverse event"
* value[x] only dateTime



Mapping: FhirOSIRISAdverseEvent
Source: onco-adverse-event
Target: "AdverseEvent"
Id: fhir-osiris-adverseevent
Title: "Fhir-osiris adverse event to osiris"
* subject -> "AdverseEvent.Patient_Identifier"
* suspectEntity.instance -> "AdverseEvent.Treatment_Ref"
* subjectMedicalHistory -> "AdverseEvent.TumorPathologyEvent_Ref"
* event -> "AdverseEvent.AdverseEvent_Code"
* date -> "AdverseEvent.AdverseEvent_Date"
* extension[EndDate] -> "AdverseEvent.AdverseEvent_EndDate"
* seriousness.coding.code -> "AdverseEvent.AdverseEvent_Grade"

ValueSet: AdverseEventCode
Title: "Adverse Event Code Value Set"
Description:  "Adverse event codes"
* MEDDRA#10002272	"Anemia"
* MEDDRA#10005329	"Blood and lymphatic system disorders - Other, specify"
* MEDDRA#10048580	"Bone marrow hypocellular"
* MEDDRA#10013442	"Disseminated intravascular coagulation"
* MEDDRA#10014950	"Eosinophilia"
* MEDDRA#10016288	"Febrile neutropenia"
* MEDDRA#10019491	"Hemolysis"
* MEDDRA#10019515	"Hemolytic uremic syndrome"
* MEDDRA#10024378	"Leukocytosis"
* MEDDRA#10025182	"Lymph node pain"
* MEDDRA#10027506	"Methemoglobinemia"
* MEDDRA#10043648	"Thrombotic thrombocytopenic purpura"
* MEDDRA#10061589	"Aortic valve disease"
* MEDDRA#10003586	"Asystole"
* MEDDRA#10003658	"Atrial fibrillation"
* MEDDRA#10003662	"Atrial flutter"
* MEDDRA#10003673	"Atrioventricular block complete"
* MEDDRA#10003674	"Atrioventricular block first degree"
* MEDDRA#10007515	"Cardiac arrest"
* MEDDRA#10007541	"Cardiac disorders - Other, specify"
* MEDDRA#10008481	"Chest pain - cardiac"
* MEDDRA#10010276	"Conduction disorder"
* MEDDRA#10011703	"Cyanosis"
* MEDDRA#10019279	"Heart failure"
* MEDDRA#10069501	"Left ventricular systolic dysfunction"
* MEDDRA#10061532	"Mitral valve disease"
* MEDDRA#10027786	"Mobitz (type) II atrioventricular block"
* MEDDRA#10027787	"Mobitz type I"
* MEDDRA#10028596	"Myocardial infarction"
* MEDDRA#10028606	"Myocarditis"
* MEDDRA#10033557	"Palpitations"
* MEDDRA#10034040	"Paroxysmal atrial tachycardia"
* MEDDRA#10034474	"Pericardial effusion"
* MEDDRA#10053565	"Pericardial tamponade"
* MEDDRA#10034484	"Pericarditis"
* MEDDRA#10061541	"Pulmonary valve disease"
* MEDDRA#10038748	"Restrictive cardiomyopathy"
* MEDDRA#10058597	"Right ventricular dysfunction"
* MEDDRA#10040639	"Sick sinus syndrome"
* MEDDRA#10040741	"Sinus bradycardia"
* MEDDRA#10040752	"Sinus tachycardia"
* MEDDRA#10042604	"Supraventricular tachycardia"
* MEDDRA#10061389	"Tricuspid valve disease"
* MEDDRA#10047281	"Ventricular arrhythmia"
* MEDDRA#10047290	"Ventricular fibrillation"
* MEDDRA#10047302	"Ventricular tachycardia"
* MEDDRA#10010331	"Congenital, familial and genetic disorders - Other, specify"
* MEDDRA#10013993	"Ear and labyrinth disorders - Other, specify"
* MEDDRA#10014020	"Ear pain"
* MEDDRA#10065785	"External ear pain"
* MEDDRA#10019245	"Hearing impaired"
* MEDDRA#10065838	"Middle ear inflammation"
* MEDDRA#10043882	"Tinnitus"
* MEDDRA#10047340	"Vertigo"
* MEDDRA#10047386	"Vestibular disorder"
* MEDDRA#10001367	"Adrenal insufficiency"
* MEDDRA#10011655	"Cushingoid"
* MEDDRA#10012205	"Delayed puberty"
* MEDDRA#10014698	"Endocrine disorders - Other, specify"
* MEDDRA#10018746	"Growth accelerated"
* MEDDRA#10020705	"Hyperparathyroidism"
* MEDDRA#10020850	"Hyperthyroidism"
* MEDDRA#10021041	"Hypoparathyroidism"
* MEDDRA#10062767	"Hypophysitis"
* MEDDRA#10021067	"Hypopituitarism"
* MEDDRA#10021114	"Hypothyroidism"
* MEDDRA#10058084	"Precocious puberty"
* MEDDRA#10067734	"Testosterone deficiency"
* MEDDRA#10047488	"Virilization"
* MEDDRA#10005886	"Blurred vision"
* MEDDRA#10007739	"Cataract"
* MEDDRA#10048492	"Corneal ulcer"
* MEDDRA#10013774	"Dry eye"
* MEDDRA#10015829	"Extraocular muscle paresis"
* MEDDRA#10015919	"Eye disorders - Other, specify"
* MEDDRA#10015958	"Eye pain"
* MEDDRA#10061145	"Eyelid function disorder"
* MEDDRA#10016757	"Flashing lights"
* MEDDRA#10016778	"Floaters"
* MEDDRA#10018304	"Glaucoma"
* MEDDRA#10023332	"Keratitis"
* MEDDRA#10029404	"Night blindness"
* MEDDRA#10061322	"Optic nerve disorder"
* MEDDRA#10033703	"Papilledema"
* MEDDRA#10054541	"Periorbital edema"
* MEDDRA#10034960	"Photophobia"
* MEDDRA#10038848	"Retinal detachment"
* MEDDRA#10038897	"Retinal tear"
* MEDDRA#10038901	"Retinal vascular disorder"
* MEDDRA#10038923	"Retinopathy"
* MEDDRA#10061510	"Scleral disorder"
* MEDDRA#10046851	"Uveitis"
* MEDDRA#10047516	"Vision decreased"
* MEDDRA#10047656	"Vitreous hemorrhage"
* MEDDRA#10047848	"Watering eyes"
* MEDDRA#10000060	"Abdominal distension"
* MEDDRA#10000081	"Abdominal pain"
* MEDDRA#10002153	"Anal fissure"
* MEDDRA#10002156	"Anal fistula"
* MEDDRA#10055226	"Anal hemorrhage"
* MEDDRA#10065721	"Anal mucositis"
* MEDDRA#10065722	"Anal necrosis"
* MEDDRA#10002167	"Anal pain"
* MEDDRA#10002176	"Anal stenosis"
* MEDDRA#10002180	"Anal ulcer"
* MEDDRA#10003445	"Ascites"
* MEDDRA#10004222	"Belching"
* MEDDRA#10005265	"Bloating"
* MEDDRA#10065747	"Cecal hemorrhage"
* MEDDRA#10008417	"Cheilitis"
* MEDDRA#10009167	"Chylous ascites"
* MEDDRA#10009887	"Colitis"
* MEDDRA#10009995	"Colonic fistula"
* MEDDRA#10009998	"Colonic hemorrhage"
* MEDDRA#10010000	"Colonic obstruction"
* MEDDRA#10010001	"Colonic perforation"
* MEDDRA#10010004	"Colonic stenosis"
* MEDDRA#10010006	"Colonic ulcer"
* MEDDRA#10010774	"Constipation"
* MEDDRA#10012318	"Dental caries"
* MEDDRA#10012727	"Diarrhea"
* MEDDRA#10013781	"Dry mouth"
* MEDDRA#10013828	"Duodenal fistula"
* MEDDRA#10055242	"Duodenal hemorrhage"
* MEDDRA#10013830	"Duodenal obstruction"
* MEDDRA#10013832	"Duodenal perforation"
* MEDDRA#10050094	"Duodenal stenosis"
* MEDDRA#10013836	"Duodenal ulcer"
* MEDDRA#10013946	"Dyspepsia"
* MEDDRA#10013950	"Dysphagia"
* MEDDRA#10014893	"Enterocolitis"
* MEDDRA#10062570	"Enterovesical fistula"
* MEDDRA#10065851	"Esophageal fistula"
* MEDDRA#10015384	"Esophageal hemorrhage"
* MEDDRA#10065727	"Esophageal necrosis"
* MEDDRA#10015387	"Esophageal obstruction"
* MEDDRA#10015388	"Esophageal pain"
* MEDDRA#10055472	"Esophageal perforation"
* MEDDRA#10015448	"Esophageal stenosis"
* MEDDRA#10015451	"Esophageal ulcer"
* MEDDRA#10015453	"Esophageal varices hemorrhage"
* MEDDRA#10015461	"Esophagitis"
* MEDDRA#10016296	"Fecal incontinence"
* MEDDRA#10016766	"Flatulence"
* MEDDRA#10065713	"Gastric fistula"
* MEDDRA#10017789	"Gastric hemorrhage"
* MEDDRA#10051886	"Gastric necrosis"
* MEDDRA#10017815	"Gastric perforation"
* MEDDRA#10061970	"Gastric stenosis"
* MEDDRA#10017822	"Gastric ulcer"
* MEDDRA#10017853	"Gastritis"
* MEDDRA#10066874	"Gastroesophageal reflux disease"
* MEDDRA#10017947	"Gastrointestinal disorders - Other, specify"
* MEDDRA#10017877	"Gastrointestinal fistula"
* MEDDRA#10017999	"Gastrointestinal pain"
* MEDDRA#10018043	"Gastroparesis"
* MEDDRA#10018286	"Gingival pain"
* MEDDRA#10060640	"Hemorrhoidal hemorrhage"
* MEDDRA#10019611	"Hemorrhoids"
* MEDDRA#10065728	"Ileal fistula"
* MEDDRA#10055287	"Ileal hemorrhage"
* MEDDRA#10065730	"Ileal obstruction"
* MEDDRA#10021305	"Ileal perforation"
* MEDDRA#10021307	"Ileal stenosis"
* MEDDRA#10021309	"Ileal ulcer"
* MEDDRA#10021328	"Ileus"
* MEDDRA#10055291	"Intra-abdominal hemorrhage"
* MEDDRA#10065719	"Jejunal fistula"
* MEDDRA#10055300	"Jejunal hemorrhage"
* MEDDRA#10065732	"Jejunal obstruction"
* MEDDRA#10023174	"Jejunal perforation"
* MEDDRA#10023176	"Jejunal stenosis"
* MEDDRA#10023177	"Jejunal ulcer"
* MEDDRA#10024561	"Lip pain"
* MEDDRA#10051746	"Lower gastrointestinal hemorrhage"
* MEDDRA#10025476	"Malabsorption"
* MEDDRA#10028130	"Mucositis oral"
* MEDDRA#10028813	"Nausea"
* MEDDRA#10029957	"Obstruction gastric"
* MEDDRA#10065720	"Oral cavity fistula"
* MEDDRA#10054520	"Oral dysesthesia"
* MEDDRA#10030980	"Oral hemorrhage"
* MEDDRA#10031009	"Oral pain"
* MEDDRA#10065703	"Pancreatic duct stenosis"
* MEDDRA#10049192	"Pancreatic fistula"
* MEDDRA#10033626	"Pancreatic hemorrhage"
* MEDDRA#10058096	"Pancreatic necrosis"
* MEDDRA#10033645	"Pancreatitis"
* MEDDRA#10034536	"Periodontal disease"
* MEDDRA#10065704	"Peritoneal necrosis"
* MEDDRA#10036774	"Proctitis"
* MEDDRA#10064993	"Rectal fissure"
* MEDDRA#10038062	"Rectal fistula"
* MEDDRA#10038064	"Rectal hemorrhage"
* MEDDRA#10063190	"Rectal mucositis"
* MEDDRA#10065709	"Rectal necrosis"
* MEDDRA#10065707	"Rectal obstruction"
* MEDDRA#10038072	"Rectal pain"
* MEDDRA#10038073	"Rectal perforation"
* MEDDRA#10038079	"Rectal stenosis"
* MEDDRA#10038080	"Rectal ulcer"
* MEDDRA#10038981	"Retroperitoneal hemorrhage"
* MEDDRA#10056681	"Salivary duct inflammation"
* MEDDRA#10039411	"Salivary gland fistula"
* MEDDRA#10065710	"Small intestinal mucositis"
* MEDDRA#10041101	"Small intestinal obstruction"
* MEDDRA#10041103	"Small intestinal perforation"
* MEDDRA#10062263	"Small intestinal stenosis"
* MEDDRA#10041133	"Small intestine ulcer"
* MEDDRA#10042112	"Stomach pain"
* MEDDRA#10044030	"Tooth development disorder"
* MEDDRA#10044031	"Tooth discoloration"
* MEDDRA#10044055	"Toothache"
* MEDDRA#10045271	"Typhlitis"
* MEDDRA#10055356	"Upper gastrointestinal hemorrhage"
* MEDDRA#10054692	"Visceral arterial ischemia"
* MEDDRA#10047700	"Vomiting"
* MEDDRA#10008531	"Chills"
* MEDDRA#10011912	"Death neonatal"
* MEDDRA#10011914	"Death NOS"
* MEDDRA#10061818	"Disease progression"
* MEDDRA#10014222	"Edema face"
* MEDDRA#10050068	"Edema limbs"
* MEDDRA#10058720	"Edema trunk"
* MEDDRA#10016059	"Facial pain"
* MEDDRA#10016256	"Fatigue"
* MEDDRA#10016558	"Fever"
* MEDDRA#10016791	"Flu like symptoms"
* MEDDRA#10017577	"Gait disturbance"
* MEDDRA#10018065	"General disorders and administration site conditions - Other, specify"
* MEDDRA#10018112	"Generalized edema"
* MEDDRA#10021113	"Hypothermia"
* MEDDRA#10064774	"Infusion site extravasation"
* MEDDRA#10022095	"Injection site reaction"
* MEDDRA#10062466	"Localized edema"
* MEDDRA#10025482	"Malaise"
* MEDDRA#10028154	"Multi-organ failure"
* MEDDRA#10054482	"Neck edema"
* MEDDRA#10062501	"Non-cardiac chest pain"
* MEDDRA#10033371	"Pain"
* MEDDRA#10042435	"Sudden death NOS"
* MEDDRA#10069480	"Vaccination site lymphadenopathy"
* MEDDRA#10051341	"Bile duct stenosis"
* MEDDRA#10004665	"Biliary fistula"
* MEDDRA#10006537	"Budd-Chiari syndrome"
* MEDDRA#10008612	"Cholecystitis"
* MEDDRA#10017631	"Gallbladder fistula"
* MEDDRA#10059446	"Gallbladder necrosis"
* MEDDRA#10017636	"Gallbladder obstruction"
* MEDDRA#10017638	"Gallbladder pain"
* MEDDRA#10017639	"Gallbladder perforation"
* MEDDRA#10019663	"Hepatic failure"
* MEDDRA#10019678	"Hepatic hemorrhage"
* MEDDRA#10019692	"Hepatic necrosis"
* MEDDRA#10019705	"Hepatic pain"
* MEDDRA#10019805	"Hepatobiliary disorders - Other, specify"
* MEDDRA#10034405	"Perforation bile duct"
* MEDDRA#10036200	"Portal hypertension"
* MEDDRA#10036206	"Portal vein thrombosis"
* MEDDRA#10063675	"Sinusoidal obstruction syndrome"
* MEDDRA#10001718	"Allergic reaction"
* MEDDRA#10002218	"Anaphylaxis"
* MEDDRA#10061664	"Autoimmune disorder"
* MEDDRA#10052015	"Cytokine release syndrome"
* MEDDRA#10021428	"Immune system disorders - Other, specify"
* MEDDRA#10040400	"Serum sickness"
* MEDDRA#10056519	"Abdominal infection"
* MEDDRA#10061640	"Anorectal infection"
* MEDDRA#10003011	"Appendicitis"
* MEDDRA#10003012	"Appendicitis perforated"
* MEDDRA#10065744	"Arteritis infective"
* MEDDRA#10003999	"Bacteremia"
* MEDDRA#10061695	"Biliary tract infection"
* MEDDRA#10005047	"Bladder infection"
* MEDDRA#10061017	"Bone infection"
* MEDDRA#10006259	"Breast infection"
* MEDDRA#10055078	"Bronchial infection"
* MEDDRA#10007810	"Catheter related infection"
* MEDDRA#10065761	"Cecal infection"
* MEDDRA#10008330	"Cervicitis infection"
* MEDDRA#10010741	"Conjunctivitis"
* MEDDRA#10010742	"Conjunctivitis infective"
* MEDDRA#10061788	"Corneal infection"
* MEDDRA#10065765	"Cranial nerve infection"
* MEDDRA#10058666	"Cytomegalovirus infection reactivation"
* MEDDRA#10064687	"Device related infection"
* MEDDRA#10065752	"Duodenal infection"
* MEDDRA#10014594	"Encephalitis infection"
* MEDDRA#10014621	"Encephalomyelitis infection"
* MEDDRA#10014678	"Endocarditis infective"
* MEDDRA#10014801	"Endophthalmitis"
* MEDDRA#10058838	"Enterocolitis infectious"
* MEDDRA#10015109	"Epstein-Barr virus infection reactivation"
* MEDDRA#10058804	"Esophageal infection"
* MEDDRA#10015929	"Eye infection"
* MEDDRA#10016936	"Folliculitis"
* MEDDRA#10017544	"Fungemia"
* MEDDRA#10062632	"Gallbladder infection"
* MEDDRA#10018784	"Gum infection"
* MEDDRA#10056522	"Hepatic infection"
* MEDDRA#10058827	"Hepatitis B reactivation"
* MEDDRA#10019799	"Hepatitis viral"
* MEDDRA#10080137	"Herpes simplex reactivation"
* MEDDRA#10021881	"Infections and infestations - Other, specify"
* MEDDRA#10021918	"Infective myositis"
* MEDDRA#10023216	"Joint infection"
* MEDDRA#10023424	"Kidney infection"
* MEDDRA#10023874	"Laryngitis"
* MEDDRA#10065755	"Lip infection"
* MEDDRA#10061229	"Lung infection"
* MEDDRA#10050823	"Lymph gland infection"
* MEDDRA#10057483	"Mediastinal infection"
* MEDDRA#10027199	"Meningitis"
* MEDDRA#10065764	"Mucosal infection"
* MEDDRA#10028524	"Myelitis"
* MEDDRA#10061304	"Nail infection"
* MEDDRA#10033072	"Otitis externa"
* MEDDRA#10033078	"Otitis media"
* MEDDRA#10055005	"Ovarian infection"
* MEDDRA#10051741	"Pancreas infection"
* MEDDRA#10069138	"Papulopustular rash"
* MEDDRA#10034016	"Paronychia"
* MEDDRA#10058674	"Pelvic infection"
* MEDDRA#10061912	"Penile infection"
* MEDDRA#10051472	"Periorbital infection"
* MEDDRA#10065766	"Peripheral nerve infection"
* MEDDRA#10057262	"Peritoneal infection"
* MEDDRA#10034835	"Pharyngitis"
* MEDDRA#10056627	"Phlebitis infective"
* MEDDRA#10061351	"Pleural infection"
* MEDDRA#10050662	"Prostate infection"
* MEDDRA#10037888	"Rash pustular"
* MEDDRA#10059827	"Rhinitis infective"
* MEDDRA#10039413	"Salivary gland infection"
* MEDDRA#10062156	"Scrotal infection"
* MEDDRA#10040047	"Sepsis"
* MEDDRA#10040555	"Shingles"
* MEDDRA#10040753	"Sinusitis"
* MEDDRA#10040872	"Skin infection"
* MEDDRA#10065771	"Small intestine infection"
* MEDDRA#10062255	"Soft tissue infection"
* MEDDRA#10062112	"Splenic infection"
* MEDDRA#10064505	"Stoma site infection"
* MEDDRA#10043649	"Thrush"
* MEDDRA#10048762	"Tooth infection"
* MEDDRA#10044302	"Tracheitis"
* MEDDRA#10046300	"Upper respiratory infection"
* MEDDRA#10052298	"Urethral infection"
* MEDDRA#10046571	"Urinary tract infection"
* MEDDRA#10062233	"Uterine infection"
* MEDDRA#10046914	"Vaginal infection"
* MEDDRA#10054688	"Viremia"
* MEDDRA#10065772	"Vulval infection"
* MEDDRA#10048038	"Wound infection"
* MEDDRA#10002544	"Ankle fracture"
* MEDDRA#10002899	"Aortic injury"
* MEDDRA#10003162	"Arterial injury"
* MEDDRA#10050458	"Biliary anastomotic leak"
* MEDDRA#10065802	"Bladder anastomotic leak"
* MEDDRA#10006504	"Bruising"
* MEDDRA#10006634	"Burn"
* MEDDRA#10061103	"Dermatitis radiation"
* MEDDRA#10065961	"Esophageal anastomotic leak"
* MEDDRA#10016173	"Fall"
* MEDDRA#10065788	"Fallopian tube anastomotic leak"
* MEDDRA#10065790	"Fallopian tube perforation"
* MEDDRA#10017076	"Fracture"
* MEDDRA#10065893	"Gastric anastomotic leak"
* MEDDRA#10065879	"Gastrointestinal anastomotic leak"
* MEDDRA#10065712	"Gastrointestinal stoma necrosis"
* MEDDRA#10020100	"Hip fracture"
* MEDDRA#10051792	"Infusion related reaction"
* MEDDRA#10022161	"Injury to carotid artery"
* MEDDRA#10022213	"Injury to inferior vena cava"
* MEDDRA#10065849	"Injury to jugular vein"
* MEDDRA#10022356	"Injury to superior vena cava"
* MEDDRA#10022117	"Injury, poisoning and procedural complications - Other, specify"
* MEDDRA#10059095	"Intestinal stoma leak"
* MEDDRA#10059094	"Intestinal stoma obstruction"
* MEDDRA#10049468	"Intestinal stoma site bleeding"
* MEDDRA#10065826	"Intraoperative arterial injury"
* MEDDRA#10065831	"Intraoperative breast injury"
* MEDDRA#10065843	"Intraoperative cardiac injury"
* MEDDRA#10065844	"Intraoperative ear injury"
* MEDDRA#10065834	"Intraoperative endocrine injury"
* MEDDRA#10065825	"Intraoperative gastrointestinal injury"
* MEDDRA#10065842	"Intraoperative head and neck injury"
* MEDDRA#10055298	"Intraoperative hemorrhage"
* MEDDRA#10065827	"Intraoperative hepatobiliary injury"
* MEDDRA#10065829	"Intraoperative musculoskeletal injury"
* MEDDRA#10065830	"Intraoperative neurological injury"
* MEDDRA#10065841	"Intraoperative ocular injury"
* MEDDRA#10065845	"Intraoperative renal injury"
* MEDDRA#10065840	"Intraoperative reproductive tract injury"
* MEDDRA#10065832	"Intraoperative respiratory injury"
* MEDDRA#10065847	"Intraoperative splenic injury"
* MEDDRA#10065828	"Intraoperative urinary injury"
* MEDDRA#10065848	"Intraoperative venous injury"
* MEDDRA#10065803	"Kidney anastomotic leak"
* MEDDRA#10065891	"Large intestinal anastomotic leak"
* MEDDRA#10050457	"Pancreatic anastomotic leak"
* MEDDRA#10065705	"Pharyngeal anastomotic leak"
* MEDDRA#10055322	"Postoperative hemorrhage"
* MEDDRA#10056745	"Postoperative thoracic procedure complication"
* MEDDRA#10065745	"Prolapse of intestinal stoma"
* MEDDRA#10065822	"Prolapse of urostomy"
* MEDDRA#10037767	"Radiation recall reaction (dermatologic)"
* MEDDRA#10065894	"Rectal anastomotic leak"
* MEDDRA#10040102	"Seroma"
* MEDDRA#10065892	"Small intestinal anastomotic leak"
* MEDDRA#10065897	"Spermatic cord anastomotic leak"
* MEDDRA#10041569	"Spinal fracture"
* MEDDRA#10065898	"Stenosis of gastrointestinal stoma"
* MEDDRA#10042127	"Stomal ulcer"
* MEDDRA#10062548	"Tracheal hemorrhage"
* MEDDRA#10044291	"Tracheal obstruction"
* MEDDRA#10065749	"Tracheostomy site bleeding"
* MEDDRA#10065814	"Ureteric anastomotic leak"
* MEDDRA#10065815	"Urethral anastomotic leak"
* MEDDRA#10065882	"Urostomy leak"
* MEDDRA#10065883	"Urostomy obstruction"
* MEDDRA#10065748	"Urostomy site bleeding"
* MEDDRA#10065885	"Urostomy stenosis"
* MEDDRA#10065886	"Uterine anastomotic leak"
* MEDDRA#10046810	"Uterine perforation"
* MEDDRA#10046861	"Vaccination complication"
* MEDDRA#10065887	"Vaginal anastomotic leak"
* MEDDRA#10065888	"Vas deferens anastomotic leak"
* MEDDRA#10062169	"Vascular access complication"
* MEDDRA#10047228	"Venous injury"
* MEDDRA#10053692	"Wound complication"
* MEDDRA#10048031	"Wound dehiscence"
* MEDDRA#10048049	"Wrist fracture"
* MEDDRA#10000636	"Activated partial thromboplastin time prolonged"
* MEDDRA#10001551	"Alanine aminotransferase increased"
* MEDDRA#10001675	"Alkaline phosphatase increased"
* MEDDRA#10003481	"Aspartate aminotransferase increased"
* MEDDRA#10005332	"Blood antidiuretic hormone abnormal"
* MEDDRA#10005359	"Blood bicarbonate decreased"
* MEDDRA#10005364	"Blood bilirubin increased"
* MEDDRA#10005452	"Blood corticotrophin decreased"
* MEDDRA#10005561	"Blood gonadotrophin abnormal"
* MEDDRA#10005630	"Blood lactate dehydrogenase increased"
* MEDDRA#10005778	"Blood prolactin abnormal"
* MEDDRA#10065906	"Carbon monoxide diffusing capacity decreased"
* MEDDRA#10007612	"Cardiac troponin I increased"
* MEDDRA#10007613	"Cardiac troponin T increased"
* MEDDRA#10007839	"CD4 lymphocytes decreased"
* MEDDRA#10008661	"Cholesterol high"
* MEDDRA#10011268	"CPK increased"
* MEDDRA#10011368	"Creatinine increased"
* MEDDRA#10050528	"Ejection fraction decreased"
* MEDDRA#10014383	"Electrocardiogram QT corrected interval prolonged"
* MEDDRA#10050380	"Electrocardiogram T wave abnormal"
* MEDDRA#10016596	"Fibrinogen decreased"
* MEDDRA#10016987	"Forced expiratory volume decreased"
* MEDDRA#10056910	"GGT increased"
* MEDDRA#10018748	"Growth hormone abnormal"
* MEDDRA#10019150	"Haptoglobin decreased"
* MEDDRA#10055599	"Hemoglobin increased"
* MEDDRA#10022402	"INR increased"
* MEDDRA#10022891	"Investigations - Other, specify"
* MEDDRA#10024574	"Lipase increased"
* MEDDRA#10025256	"Lymphocyte count decreased"
* MEDDRA#10025258	"Lymphocyte count increased"
* MEDDRA#10029366	"Neutrophil count decreased"
* MEDDRA#10062646	"Pancreatic enzymes decreased"
* MEDDRA#10035528	"Platelet count decreased"
* MEDDRA#10040139	"Serum amylase increased"
* MEDDRA#10043770	"Thyroid stimulating hormone increased"
* MEDDRA#10059895	"Urine output decreased"
* MEDDRA#10047580	"Vital capacity abnormal"
* MEDDRA#10047896	"Weight gain"
* MEDDRA#10047900	"Weight loss"
* MEDDRA#10049182	"White blood cell decreased"
* MEDDRA#10000486	"Acidosis"
* MEDDRA#10001598	"Alcohol intolerance"
* MEDDRA#10001680	"Alkalosis"
* MEDDRA#10002646	"Anorexia"
* MEDDRA#10012174	"Dehydration"
* MEDDRA#10052426	"Glucose intolerance"
* MEDDRA#10020587	"Hypercalcemia"
* MEDDRA#10020639	"Hyperglycemia"
* MEDDRA#10020647	"Hyperkalemia"
* MEDDRA#10020667	"Hyperlipidemia"
* MEDDRA#10020670	"Hypermagnesemia"
* MEDDRA#10020680	"Hypernatremia"
* MEDDRA#10020712	"Hyperphosphatemia"
* MEDDRA#10020870	"Hypertriglyceridemia"
* MEDDRA#10020907	"Hyperuricemia"
* MEDDRA#10020943	"Hypoalbuminemia"
* MEDDRA#10020949	"Hypocalcemia"
* MEDDRA#10021005	"Hypoglycemia"
* MEDDRA#10021018	"Hypokalemia"
* MEDDRA#10021028	"Hypomagnesemia"
* MEDDRA#10021038	"Hyponatremia"
* MEDDRA#10021059	"Hypophosphatemia"
* MEDDRA#10065973	"Iron overload"
* MEDDRA#10027433	"Metabolism and nutrition disorders - Other, specify"
* MEDDRA#10029883	"Obesity"
* MEDDRA#10045152	"Tumor lysis syndrome"
* MEDDRA#10065775	"Abdominal soft tissue necrosis"
* MEDDRA#10003239	"Arthralgia"
* MEDDRA#10003246	"Arthritis"
* MEDDRA#10066480	"Avascular necrosis"
* MEDDRA#10003988	"Back pain"
* MEDDRA#10006002	"Bone pain"
* MEDDRA#10048677	"Buttock pain"
* MEDDRA#10048831	"Chest wall necrosis"
* MEDDRA#10008496	"Chest wall pain"
* MEDDRA#10015688	"Exostosis"
* MEDDRA#10065799	"Fibrosis deep connective tissue"
* MEDDRA#10016750	"Flank pain"
* MEDDRA#10062572	"Generalized muscle weakness"
* MEDDRA#10018761	"Growth suppression"
* MEDDRA#10065779	"Head soft tissue necrosis"
* MEDDRA#10023215	"Joint effusion"
* MEDDRA#10048706	"Joint range of motion decreased"
* MEDDRA#10065796	"Joint range of motion decreased cervical spine"
* MEDDRA#10065800	"Joint range of motion decreased lumbar spine"
* MEDDRA#10023509	"Kyphosis"
* MEDDRA#10024842	"Lordosis"
* MEDDRA#10028294	"Muscle cramp"
* MEDDRA#10065776	"Muscle weakness lower limb"
* MEDDRA#10065795	"Muscle weakness trunk"
* MEDDRA#10065895	"Muscle weakness upper limb"
* MEDDRA#10028395	"Musculoskeletal and connective tissue disorder - Other, specify"
* MEDDRA#10065783	"Musculoskeletal deformity"
* MEDDRA#10028411	"Myalgia"
* MEDDRA#10028653	"Myositis"
* MEDDRA#10028836	"Neck pain"
* MEDDRA#10065781	"Neck soft tissue necrosis"
* MEDDRA#10031264	"Osteonecrosis"
* MEDDRA#10064658	"Osteonecrosis of jaw"
* MEDDRA#10031282	"Osteoporosis"
* MEDDRA#10033425	"Pain in extremity"
* MEDDRA#10065793	"Pelvic soft tissue necrosis"
* MEDDRA#10039020	"Rhabdomyolysis"
* MEDDRA#10039226	"Rotator cuff injury"
* MEDDRA#10039722	"Scoliosis"
* MEDDRA#10065777	"Soft tissue necrosis lower limb"
* MEDDRA#10065778	"Soft tissue necrosis upper limb"
* MEDDRA#10065798	"Superficial soft tissue fibrosis"
* MEDDRA#10044684	"Trismus"
* MEDDRA#10065738	"Unequal limb length"
* MEDDRA#10048293	"Leukemia secondary to oncology chemotherapy"
* MEDDRA#10028533	"Myelodysplastic syndrome"
* MEDDRA#10029104	"Neoplasms benign, malignant and unspecified (incl cysts and polyps) - Other, specify"
* MEDDRA#10040907	"Skin papilloma"
* MEDDRA#10049737	"Treatment related secondary malignancy"
* MEDDRA#10055351	"Tumor hemorrhage"
* MEDDRA#10045158	"Tumor pain"
* MEDDRA#10053662	"Abducens nerve disorder"
* MEDDRA#10060929	"Accessory nerve disorder"
* MEDDRA#10000521	"Acoustic nerve disorder NOS"
* MEDDRA#10001540	"Akathisia"
* MEDDRA#10001949	"Amnesia"
* MEDDRA#10002653	"Anosmia"
* MEDDRA#10002953	"Aphonia"
* MEDDRA#10003074	"Arachnoiditis"
* MEDDRA#10003591	"Ataxia"
* MEDDRA#10065417	"Brachial plexopathy"
* MEDDRA#10065784	"Central nervous system necrosis"
* MEDDRA#10008164	"Cerebrospinal fluid leakage"
* MEDDRA#10009845	"Cognitive disturbance"
* MEDDRA#10010250	"Concentration impairment"
* MEDDRA#10012373	"Depressed level of consciousness"
* MEDDRA#10013573	"Dizziness"
* MEDDRA#10013887	"Dysarthria"
* MEDDRA#10062872	"Dysesthesia"
* MEDDRA#10013911	"Dysgeusia"
* MEDDRA#10013951	"Dysphasia"
* MEDDRA#10014217	"Edema cerebral"
* MEDDRA#10014625	"Encephalopathy"
* MEDDRA#10015832	"Extrapyramidal disorder"
* MEDDRA#10051272	"Facial muscle weakness"
* MEDDRA#10061457	"Facial nerve disorder"
* MEDDRA#10061185	"Glossopharyngeal nerve disorder"
* MEDDRA#10018767	"Guillain-Barre syndrome"
* MEDDRA#10019211	"Headache"
* MEDDRA#10020508	"Hydrocephalus"
* MEDDRA#10020765	"Hypersomnia"
* MEDDRA#10061212	"Hypoglossal nerve disorder"
* MEDDRA#10022763	"Intracranial hemorrhage"
* MEDDRA#10023030	"Ischemia cerebrovascular"
* MEDDRA#10024264	"Lethargy"
* MEDDRA#10024382	"Leukoencephalopathy"
* MEDDRA#10027175	"Memory impairment"
* MEDDRA#10027198	"Meningismus"
* MEDDRA#10028041	"Movements involuntary"
* MEDDRA#10065780	"Muscle weakness left-sided"
* MEDDRA#10065794	"Muscle weakness right-sided"
* MEDDRA#10028417	"Myasthenia gravis"
* MEDDRA#10029205	"Nervous system disorders - Other, specify"
* MEDDRA#10029223	"Neuralgia"
* MEDDRA#10029864	"Nystagmus"
* MEDDRA#10053661	"Oculomotor nerve disorder"
* MEDDRA#10056388	"Olfactory nerve disorder"
* MEDDRA#10033987	"Paresthesia"
* MEDDRA#10034580	"Peripheral motor neuropathy"
* MEDDRA#10034620	"Peripheral sensory neuropathy"
* MEDDRA#10056238	"Phantom pain"
* MEDDRA#10036653	"Presyncope"
* MEDDRA#10063636	"Pyramidal tract syndrome"
* MEDDRA#10061928	"Radiculitis"
* MEDDRA#10038130	"Recurrent laryngeal nerve palsy"
* MEDDRA#10063761	"Reversible posterior leukoencephalopathy syndrome"
* MEDDRA#10039906	"Seizure"
* MEDDRA#10041349	"Somnolence"
* MEDDRA#10041416	"Spasticity"
* MEDDRA#10041549	"Spinal cord compression"
* MEDDRA#10042244	"Stroke"
* MEDDRA#10042772	"Syncope"
* MEDDRA#10043245	"Tendon reflex decreased"
* MEDDRA#10044391	"Transient ischemic attacks"
* MEDDRA#10044565	"Tremor"
* MEDDRA#10060890	"Trigeminal nerve disorder"
* MEDDRA#10074765	"Trochlear nerve disorder"
* MEDDRA#10061403	"Vagus nerve disorder"
* MEDDRA#10047166	"Vasovagal reaction"
* MEDDRA#10054746	"Fetal growth retardation"
* MEDDRA#10072314	"Pregnancy loss"
* MEDDRA#10036585	"Pregnancy, puerperium and perinatal conditions - Other, specify"
* MEDDRA#10036595	"Premature delivery"
* MEDDRA#10001497	"Agitation"
* MEDDRA#10002652	"Anorgasmia"
* MEDDRA#10002855	"Anxiety"
* MEDDRA#10010300	"Confusion"
* MEDDRA#10057066	"Delayed orgasm"
* MEDDRA#10012218	"Delirium"
* MEDDRA#10012260	"Delusions"
* MEDDRA#10012378	"Depression"
* MEDDRA#10015533	"Euphoria"
* MEDDRA#10019077	"Hallucinations"
* MEDDRA#10022437	"Insomnia"
* MEDDRA#10022998	"Irritability"
* MEDDRA#10024419	"Libido decreased"
* MEDDRA#10024421	"Libido increased"
* MEDDRA#10026749	"Mania"
* MEDDRA#10034719	"Personality change"
* MEDDRA#10037175	"Psychiatric disorders - Other, specify"
* MEDDRA#10037234	"Psychosis"
* MEDDRA#10038743	"Restlessness"
* MEDDRA#10042458	"Suicidal ideation"
* MEDDRA#10042464	"Suicide attempt"
* MEDDRA#10069339	"Acute kidney injury"
* MEDDRA#10063575	"Bladder perforation"
* MEDDRA#10048994	"Bladder spasm"
* MEDDRA#10064848	"Chronic kidney disease"
* MEDDRA#10063057	"Cystitis noninfective"
* MEDDRA#10013990	"Dysuria"
* MEDDRA#10068405	"Glucosuria"
* MEDDRA#10019450	"Hematuria"
* MEDDRA#10019489	"Hemoglobinuria"
* MEDDRA#10029164	"Nephrotic syndrome"
* MEDDRA#10037032	"Proteinuria"
* MEDDRA#10038359	"Renal and urinary disorders - Other, specify"
* MEDDRA#10038385	"Renal calculi"
* MEDDRA#10038419	"Renal colic"
* MEDDRA#10038463	"Renal hemorrhage"
* MEDDRA#10065368	"Urinary fistula"
* MEDDRA#10046539	"Urinary frequency"
* MEDDRA#10046543	"Urinary incontinence"
* MEDDRA#10046555	"Urinary retention"
* MEDDRA#10061574	"Urinary tract obstruction"
* MEDDRA#10062225	"Urinary tract pain"
* MEDDRA#10046593	"Urinary urgency"
* MEDDRA#10046628	"Urine discoloration"
* MEDDRA#10001927	"Amenorrhea"
* MEDDRA#10003883	"Azoospermia"
* MEDDRA#10006179	"Breast atrophy"
* MEDDRA#10006298	"Breast pain"
* MEDDRA#10013934	"Dysmenorrhea"
* MEDDRA#10013941	"Dyspareunia"
* MEDDRA#10014326	"Ejaculation disorder"
* MEDDRA#10061461	"Erectile dysfunction"
* MEDDRA#10065789	"Fallopian tube obstruction"
* MEDDRA#10054382	"Feminization acquired"
* MEDDRA#10018146	"Genital edema"
* MEDDRA#10018801	"Gynecomastia"
* MEDDRA#10060602	"Hematosalpinx"
* MEDDRA#10022992	"Irregular menstruation"
* MEDDRA#10061261	"Lactation disorder"
* MEDDRA#10027313	"Menorrhagia"
* MEDDRA#10065823	"Nipple deformity"
* MEDDRA#10030300	"Oligospermia"
* MEDDRA#10065763	"Ovarian hemorrhage"
* MEDDRA#10033279	"Ovarian rupture"
* MEDDRA#10033314	"Ovulation pain"
* MEDDRA#10064026	"Pelvic floor muscle weakness"
* MEDDRA#10034263	"Pelvic pain"
* MEDDRA#10034310	"Penile pain"
* MEDDRA#10061339	"Perineal pain"
* MEDDRA#10036601	"Premature menopause"
* MEDDRA#10055325	"Prostatic hemorrhage"
* MEDDRA#10055026	"Prostatic obstruction"
* MEDDRA#10036968	"Prostatic pain"
* MEDDRA#10038604	"Reproductive system and breast disorders - Other, specify"
* MEDDRA#10039757	"Scrotal pain"
* MEDDRA#10065762	"Spermatic cord hemorrhage"
* MEDDRA#10065805	"Spermatic cord obstruction"
* MEDDRA#10043306	"Testicular disorder"
* MEDDRA#10055347	"Testicular hemorrhage"
* MEDDRA#10043345	"Testicular pain"
* MEDDRA#10065811	"Uterine fistula"
* MEDDRA#10046789	"Uterine hemorrhage"
* MEDDRA#10065928	"Uterine obstruction"
* MEDDRA#10046809	"Uterine pain"
* MEDDRA#10046901	"Vaginal discharge"
* MEDDRA#10046904	"Vaginal dryness"
* MEDDRA#10065813	"Vaginal fistula"
* MEDDRA#10046912	"Vaginal hemorrhage"
* MEDDRA#10046916	"Vaginal inflammation"
* MEDDRA#10065817	"Vaginal obstruction"
* MEDDRA#10046937	"Vaginal pain"
* MEDDRA#10065818	"Vaginal perforation"
* MEDDRA#10053496	"Vaginal stricture"
* MEDDRA#10001409	"Adult respiratory distress syndrome"
* MEDDRA#10001723	"Allergic rhinitis"
* MEDDRA#10002972	"Apnea"
* MEDDRA#10003504	"Aspiration"
* MEDDRA#10003598	"Atelectasis"
* MEDDRA#10006437	"Bronchial fistula"
* MEDDRA#10006440	"Bronchial obstruction"
* MEDDRA#10063524	"Bronchial stricture"
* MEDDRA#10053481	"Bronchopleural fistula"
* MEDDRA#10065746	"Bronchopulmonary hemorrhage"
* MEDDRA#10006482	"Bronchospasm"
* MEDDRA#10051228	"Chylothorax"
* MEDDRA#10011224	"Cough"
* MEDDRA#10013963	"Dyspnea"
* MEDDRA#10015090	"Epistaxis"
* MEDDRA#10020039	"Hiccups"
* MEDDRA#10020201	"Hoarseness"
* MEDDRA#10021143	"Hypoxia"
* MEDDRA#10023838	"Laryngeal edema"
* MEDDRA#10065786	"Laryngeal fistula"
* MEDDRA#10065759	"Laryngeal hemorrhage"
* MEDDRA#10065735	"Laryngeal inflammation"
* MEDDRA#10065880	"Laryngeal mucositis"
* MEDDRA#10059639	"Laryngeal obstruction"
* MEDDRA#10023862	"Laryngeal stenosis"
* MEDDRA#10062667	"Laryngopharyngeal dysesthesia"
* MEDDRA#10023891	"Laryngospasm"
* MEDDRA#10056356	"Mediastinal hemorrhage"
* MEDDRA#10028735	"Nasal congestion"
* MEDDRA#10068319	"Oropharyngeal pain"
* MEDDRA#10034825	"Pharyngeal fistula"
* MEDDRA#10055315	"Pharyngeal hemorrhage"
* MEDDRA#10065881	"Pharyngeal mucositis"
* MEDDRA#10065706	"Pharyngeal necrosis"
* MEDDRA#10050028	"Pharyngeal stenosis"
* MEDDRA#10034844	"Pharyngolaryngeal pain"
* MEDDRA#10035598	"Pleural effusion"
* MEDDRA#10055319	"Pleural hemorrhage"
* MEDDRA#10035623	"Pleuritic pain"
* MEDDRA#10035742	"Pneumonitis"
* MEDDRA#10035759	"Pneumothorax"
* MEDDRA#10036402	"Postnasal drip"
* MEDDRA#10036790	"Productive cough"
* MEDDRA#10037375	"Pulmonary edema"
* MEDDRA#10037383	"Pulmonary fibrosis"
* MEDDRA#10065873	"Pulmonary fistula"
* MEDDRA#10037400	"Pulmonary hypertension"
* MEDDRA#10038695	"Respiratory failure"
* MEDDRA#10038738	"Respiratory, thoracic and mediastinal disorders - Other, specify"
* MEDDRA#10038921	"Retinoic acid syndrome"
* MEDDRA#10039100	"Rhinorrhea"
* MEDDRA#10062244	"Sinus disorder"
* MEDDRA#10040747	"Sinus pain"
* MEDDRA#10040975	"Sleep apnea"
* MEDDRA#10041232	"Sneezing"
* MEDDRA#10041367	"Sore throat"
* MEDDRA#10042241	"Stridor"
* MEDDRA#10065787	"Tracheal fistula"
* MEDDRA#10065900	"Tracheal mucositis"
* MEDDRA#10050816	"Tracheal stenosis"
* MEDDRA#10047681	"Voice alteration"
* MEDDRA#10047924	"Wheezing"
* MEDDRA#10001760	"Alopecia"
* MEDDRA#10005901	"Body odor"
* MEDDRA#10006556	"Bullous dermatitis"
* MEDDRA#10013786	"Dry skin"
* MEDDRA#10014184	"Eczema"
* MEDDRA#10015218	"Erythema multiforme"
* MEDDRA#10015277	"Erythroderma"
* MEDDRA#10016241	"Fat atrophy"
* MEDDRA#10055525	"Hair color changes"
* MEDDRA#10019049	"Hair texture abnormal"
* MEDDRA#10020112	"Hirsutism"
* MEDDRA#10020642	"Hyperhidrosis"
* MEDDRA#10020649	"Hyperkeratosis"
* MEDDRA#10020864	"Hypertrichosis"
* MEDDRA#10021013	"Hypohidrosis"
* MEDDRA#10062315	"Lipohypertrophy"
* MEDDRA#10028689	"Nail changes"
* MEDDRA#10028691	"Nail discoloration"
* MEDDRA#10049281	"Nail loss"
* MEDDRA#10062283	"Nail ridging"
* MEDDRA#10033474	"Pain of skin"
* MEDDRA#10054524	"Palmar-plantar erythrodysesthesia syndrome"
* MEDDRA#10034966	"Photosensitivity"
* MEDDRA#10037087	"Pruritus"
* MEDDRA#10037549	"Purpura"
* MEDDRA#10037847	"Rash acneiform"
* MEDDRA#10037868	"Rash maculo-papular"
* MEDDRA#10049120	"Scalp pain"
* MEDDRA#10040785	"Skin and subcutaneous tissue disorders - Other, specify"
* MEDDRA#10040799	"Skin atrophy"
* MEDDRA#10040865	"Skin hyperpigmentation"
* MEDDRA#10040868	"Skin hypopigmentation"
* MEDDRA#10051837	"Skin induration"
* MEDDRA#10040947	"Skin ulceration"
* MEDDRA#10042033	"Stevens-Johnson syndrome"
* MEDDRA#10042344	"Subcutaneous emphysema"
* MEDDRA#10043189	"Telangiectasia"
* MEDDRA#10044223	"Toxic epidermal necrolysis"
* MEDDRA#10046735	"Urticaria"
* MEDDRA#10041244	"Social circumstances - Other, specify"
* MEDDRA#10042613	"Surgical and medical procedures - Other, specify"
* MEDDRA#10073529	"Arterial thromboembolism"
* MEDDRA#10007196	"Capillary leak syndrome"
* MEDDRA#10016825	"Flushing"
* MEDDRA#10019428	"Hematoma"
* MEDDRA#10020407	"Hot flashes"
* MEDDRA#10020772	"Hypertension"
* MEDDRA#10021097	"Hypotension"
* MEDDRA#10065773	"Lymph leakage"
* MEDDRA#10025233	"Lymphedema"
* MEDDRA#10048642	"Lymphocele"
* MEDDRA#10034578	"Peripheral ischemia"
* MEDDRA#10034879	"Phlebitis"
* MEDDRA#10042554	"Superficial thrombophlebitis"
* MEDDRA#10042569	"Superior vena cava syndrome"
* MEDDRA#10043565	"Thromboembolic event"
* MEDDRA#10047065	"Vascular disorders - Other, specify"
* MEDDRA#10047115	"Vasculitis"

