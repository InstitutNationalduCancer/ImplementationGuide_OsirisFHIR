These requests are examples of the potential of this IG.
These requests will work on each hospital that has a FHIR endpoint using the osiris data model.

### Request Patients with breast cancer (primary or metastatic) with a genetic alteration on TP53.

#### Requests Patient with breast cancer

```
Patient?
    gender=female
    &_has:Condition:subject:body-site=C50.9
```

#### Request Patients with a genetic alteration on TP53 \*\*

```
Patient?
    _has:Observation:patient:component-code-value-concept=http://loinc.org|48018-6$http://hl7.org/fhir/uv/genomics-reporting/ValueSet/hgnc|TP53
```

#### Final request

```
Patient?
    gender=female
    &_has:Condition:subject:body-site=C50.9
    &_has:Observation:patient:component-code-value-concept=http://loinc.org|48018-6$http://hl7.org/fhir/uv/genomics-reporting/ValueSet/hgnc|TP53
```

### Request Patients with colorectal cancer and metastatic with an genetic alteration on KRAS, treated by Bevacizumab and progressing.

#### Request female Patients with a colorectal cancer

```
Patient?
    gender=female
    &_has:Condition:subject:body-site=C18.9
```

#### Request Patients with metastasis

```
Condition?
    code=C2939419
```

#### Request Patients treated by bevacizumab (ATC code L01XC07)

```
Patient?
    _has:MedicationStatement:subject:code=L01XC07
```

#### Request Patients with an genetic alteration on KRAS

```
Patient?
    _has:Observation:patient:component-code-value-concept=http://loinc.org|48018-6$http://hl7.org/fhir/uv/genomics-reporting/ValueSet/hgnc|KRAS
```

#### Request female Patients with a progressing cancer

```
Patient?
    gender=female
    &_has:Observation:subject:code-value-concept=https://project.eortc.org/recist|PD
```

#### Final request

```
Patient?
    gender=female
    &_has:Condition:subject:body-site=C18.9
    &_has:Condition:subject:code=C2939419
    &_has:MedicationStatement:subject:code=L01XC07
    &_has:Observation:patient:component-code-value-concept=http://loinc.org|48018-6$http://hl7.org/fhir/uv/genomics-reporting/ValueSet/hgnc|KRAS
    &_has:Observation:subject:code-value-concept=https://project.eortc.org/recist|PD
```
