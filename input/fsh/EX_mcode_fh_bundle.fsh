// example snippet of an EOM bundle

Instance: eom-patient-bundle-jane-anyperson
InstanceOf: EomPatientBundle
Description: "Extended example as a EOM Patient Bundle"
* entry[0].resource = cancer-patient-jane-anyperson
* entry[=].fullUrl = "http://globalalliantinc.com/fhir/Patient/cancer-patient-jane-anyperson"
* entry[+].resource = primary-cancer-condition-breast
* entry[=].fullUrl = "http://globalalliantinc.com/fhir/Condition/primary-cancer-condition-breast"
* entry[+].resource = cancer-disease-status-jane-anyperson
* entry[=].fullUrl = "http://globalalliantinc.com/fhir/Observation/cancer-disease-status-jane-anyperson"
* entry[+].resource = tnm-clinical-primary-tumor-category-cT3 
* entry[=].fullUrl = "http://globalalliantinc.com/fhir/Observation/tnm-clinical-primary-tumor-category-cT3"
* entry[+].resource = tnm-clinical-regional-nodes-category-cN3
* entry[=].fullUrl = "http://globalalliantinc.com/fhir/Observation/tnm-clinical-regional-nodes-category-cN3"
* entry[+].resource = tnm-clinical-distant-metastases-category-cM0
* entry[=].fullUrl = "http://globalalliantinc.com/fhir/Observation/tnm-clinical-distant-metastases-category-cM0"
* entry[+].resource = tumor-marker-test-er-jane-anyperson
* entry[=].fullUrl = "http://globalalliantinc.com/fhir/Observation/tumor-marker-test-er-jane-anyperson"
* entry[+].resource = no-history-of-metastatic-cancer
* entry[=].fullUrl = "http://globalalliantinc.com/fhir/Observation/no-history-of-metastatic-cancer"

