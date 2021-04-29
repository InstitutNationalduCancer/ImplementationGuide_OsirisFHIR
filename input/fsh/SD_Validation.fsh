Profile:        DataValidation
Parent:         VerificationResult
Id:             data-validation
Title:          "Validation"
Description:    "Validation information about data from a Variant / Expression / Fusion / CopyNumber profile."
* status ^short = "Validation status of the detected alteration (attested | validated | in-process | req-revalid | val-fail | reval-fail)"
* validationType from OsirisValidationType (extensible)
* validationType ^short = "Type of validation of the detected alteration (Experimental | By biologist | In silico)"
* validationProcess ^short = "Validation method depending on the type of validation" //TODO : find a valueset
* target only Reference (snp or fusion or expression or copy-number)

ValueSet: OsirisValidationType
Title: "Osiris Validation Type"
Description:  "Osiris validation type"
* OSIRIS#O16-1	"Experimental"
* OSIRIS#O16-2	"By biologist"
* OSIRIS#O16-3	"In silico"

Mapping: FhirOSIRISValidation
Source: data-validation
Target: "OsirisValidation"
Id: fhir-osiris-validation
Title: "Fhir-osiris to osiris"
* status -> "Validation.type"
* validationType -> "Validation.Type"
* validationProcess -> "Validation.Method"



// Validation
// Type	    Type of validation of the detected alteration           
// Method	Validation method depending on the type of validation   string
// Status	Validation status of the detected alteration            code(becomes boolean)

// Type
// OSIRIS:O16-1	Experimental
// OSIRIS:O16-2	By biologist
// OSIRIS:O16-3	In silico

// Status (to discuss, replaced by https://www.hl7.org/fhir/valueset-verificationresult-status.html)
// OSIRIS:O18-1	Not Validated
// OSIRIS:O18-2	Validated