/* Example instance of minimal cancer patient */
Instance: cancer-patient-jane-anyperson
InstanceOf: EomCancerPatient
Description: "Example of Patient"
* identifier[MBI].system = "http://hl7.org/fhir/sid/us-mbi"
* identifier[MBI].value = "1CA0CA0CC00"
* identifier[1].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[1].type = IDTYPE#MR "Medical Record Number"
* identifier[1].system = "http://hospital.globalalliantinc.com"
* identifier[1].value = "MR1234"

* name.family = "Anyperson"
* name.given[0] = "Jane"
* name.given[1] = "B."
* gender = #male
* birthDate = "1951-01-20"
* extension[USCoreBirthSex].valueCode = #M
* address.line = "234 Anyway St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "US"


Instance: primary-cancer-condition-breast
InstanceOf: EomPrimaryCancerCondition
Description: "Example of Primary Cancer Condition"
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = CondCat#problem-list-item
* code = SCT#93796005 "Primary malignant neoplasm of female breast (disorder)"
* extension[histologyMorphologyBehavior].valueCodeableConcept = SCT#1187332001 "Adenocarcinoma (morphologic abnormality)"
* subject = Reference(cancer-patient-jane-anyperson)
* extension[assertedDate].valueDateTime = "2019-04-01"
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* stage.summary = SCT#1222806003 "American Joint Committee on Cancer stage IIIC (qualifier value)"
* stage.assessment = Reference(tnm-clinical-stage-group-3c)

Instance: tnm-clinical-stage-group-3c
InstanceOf: McodeStageGroup
Description: "Example of TNM Clinical Stage Group"
* code = SCT#399537006 "Clinical TNM stage grouping"
* valueCodeableConcept = SCT#1222806003 "American Joint Committee on Cancer stage IIIC (qualifier value)"
* status = #final "final"
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* subject = Reference(cancer-patient-jane-anyperson)
* focus = Reference(primary-cancer-condition-breast)  // added requirement STU3
* effectiveDateTime = "2019-04-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* hasMember[0] = Reference(tnm-clinical-primary-tumor-category-cT3)
* hasMember[1] = Reference(tnm-clinical-regional-nodes-category-cN3)
* hasMember[2] = Reference(tnm-clinical-distant-metastases-category-cM0)

Instance: tnm-clinical-distant-metastases-category-cM0
InstanceOf: EomMCategory
Description: "Example of TNM Clinical Distant Metastases Category"
//* code = LNC#21907-1 "Distant metastases.clinical [Class] Cancer"
* code = SCT#399387003 "cM category"
* status = #final "final"
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* subject = Reference(cancer-patient-jane-anyperson)
* performer = Reference(us-core-practitioner-kyle-anydoc)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = SCT#1229901006 "American Joint Committee on Cancer cM0 (qualifier value)"

Instance: tnm-clinical-primary-tumor-category-cT3
InstanceOf: EomTCategory
Description: "Example of TNM Clinical Primary Tumor Category"
//* code = LNC#21905-5 "Primary tumor.clinical [Class] Cancer"
* code = SCT#399504009 "cT category"
* valueCodeableConcept = SCT#1228938002 "American Joint Committee on Cancer cT3 (qualifier value)"
* status = #final "final"
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* subject = Reference(cancer-patient-jane-anyperson)
* performer = Reference(us-core-practitioner-kyle-anydoc)
* effectiveDateTime = "2019-04-01"

Instance: tnm-clinical-regional-nodes-category-cN3
InstanceOf: EomMCategory
Description: "Example of TNM Clinical Regional Nodes Category"
//* code = LNC#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* code = SCT#399534004 "cN category"
* valueCodeableConcept = SCT#1229984001 "American Joint Committee on Cancer cN3 (qualifier value)"
* status = #final "final"
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
* subject = Reference(cancer-patient-jane-anyperson)
* performer = Reference(us-core-practitioner-kyle-anydoc)
* effectiveDateTime = "2019-04-01"


Instance: cancer-disease-status-jane-anyperson
InstanceOf: EomDiseaseStatus
Description: "Extended example: example showing disease status (patient's condition improved)"
* extension[evidenceType].valueCodeableConcept = SCT#363679005 "Imaging (procedure)"
* status = #final "final"
* code = LNC#97509-4 "Cancer Disease Progression"
* subject = Reference(cancer-patient-jane-anyperson)
* effectiveDateTime = "2018-11-01"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* focus = Reference(primary-cancer-condition-breast)
* valueCodeableConcept = SCT#268910001 "Patient's condition improved (finding)"

Instance: us-core-practitioner-kyle-anydoc
InstanceOf: USCorePractitioner
Description: "Example of Practitioner"
* identifier[NPI].value = "9988776655"
* name.family = "Anydoc"
* name.given = "Kyle"
* name.prefix = "Dr."
* gender = #male
* address.use = #home
* address.line = "567 Healthcare Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360#MD "Doctor of Medicine"

Instance: no-history-of-metastatic-cancer 
InstanceOf: EomHxMetastaticCancer
Description: "Example showing no history of metastatic cancer"
* status = #final 
* code = SCT#1287652008 "History of metastatic malignant neoplasm (situation)"
* subject = Reference(cancer-patient-jane-anyperson)
* effectiveDateTime = "2018-11-16"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueBoolean = false


Instance: tumor-marker-test-er-jane-anyperson
InstanceOf: EomTumorMarkerTest
Description: "Extended example: example showing ER status"
* status = #final "final"
* code = LNC#85337-4 "Estrogen receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* subject = Reference(cancer-patient-jane-anyperson)
* effectiveDateTime = "2018-11-16"
* performer = Reference(us-core-practitioner-kyle-anydoc)
* valueCodeableConcept = LNC#LA6576-8 "Positive"
