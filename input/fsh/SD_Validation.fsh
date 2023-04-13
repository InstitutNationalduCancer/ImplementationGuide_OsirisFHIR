Profile:        DataValidation
Parent:         VerificationResult
Id:             data-validation
Title:          "Validation"
Description:    "Validation information about data from a Variant / Expression / Fusion / CopyNumber profile."

* target 1..1 MS
* target only Reference (snp or fusion or expression or copy-number)

* status 1..1 MS
* status ^short = "Validation status of the detected alteration (attested | validated | in-process | req-revalid | val-fail | reval-fail)"
* status ^definition = "Allows to indicate if the alteration has been validated or not by the validation method."

* validationType 1..1 MS
* validationType from OsirisValidationType (extensible)
* validationType ^short = "Type of validation of the detected alteration (Experimental | By biologist | In silico)"
* validationType ^definition = "Validation method used (Experimental | By biologist | In silico)."

* validationProcess 0..1 MS
* validationProcess ^short = "Validation method" 
* validationProcess ^definition = "Allows you to indicate a validation method (example: bibliographic)"


Mapping: FhirOSIRISValidation
Source: data-validation
Target: "OsirisValidation"
Id: fhir-osiris-validation
Title: "Fhir-osiris to osiris"
* status -> "OSIRIS_pivot_Variant.Validation_Status"
* validationType -> "OSIRIS_pivot_Variant.Validation_Type"
* validationProcess -> "OSIRIS_pivot_Variant.Validation_Method"
