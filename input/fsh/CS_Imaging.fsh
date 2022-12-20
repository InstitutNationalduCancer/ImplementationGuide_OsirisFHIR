CodeSystem: RadiomicsCS
Id: RadiomicsCS
Title: "Imaging Code System"
Description: "Imaging Code System"
* ^url = "https://terminology.arkhn.com/radiomicsCS"

// Radiomics Criteria: Type of ROI Segmentation
* #DICOM    "ROI Type DICOM"
* #NIFTI    "ROI Type NIfTI"

// Radiomics Criteria: LocalizationMethod
* #Local "Local Method: Apply from a ROI"
* #Global "Global Method: Apply directly on image voxels"

// Radiomics Criteria: Resampling Intensity Method
* #FBN "Relative"
* #FBS "Absolute"

// Radiomics Criteria: Spatial Resampling Method and Radiomics Image Filter: Interpolation Type
* #BicubicSpline "Bicubic spline"
* #TricubicSpline "Tricubic spline"
* #LagrangianPolynomial "Lagrangian polynomial"
* #None "None"

// Radiomics Image Filter: Filter Method
* #Mean "Mean"
* #LaplacianOfGaussian "Laplacian of Gaussian"
* #LawsKernels "Laws Kernels"
* #Gabor "Gabor"
* #Wavelets "Wavelets"
* #Riesz "Riesz"
* #Simoncelli "Simoncelli"

// Radiomics Image Filter: Filter Type
* #SliceWise2D "Slice-wise (2D)"
* #Volume3D "Volume (3D)"

// Boundary Condition
* #ZeroPadding "Zero Padding"
* #MirrorPadding "Mirror Padding"
* #PeriodicPadding "Periodic Padding"
* #ConstantValuePadding  "Constant Value Padding "
* #NearestValuePadding "Nearest Value Padding"

CodeSystem: RadiotherapyCS
Id: RadiotherapyCS
Title: "Radiotherapy Code System"
Description: "Radiotherapy Code System"

// Type (planified or delevred)
* #planned "Planified"
* #delivred  "Delivred"

CodeSystem: SnomedRequestedCS
Id: SnomedRequestedCS
Title: "Requested SNOMED Codes Code System"
Description: "Requested SNOMED Codes Code System"

// ReasonReplanification
* #1259981006  "Radiotherapy course change due to change to treatment intent (finding)"
* #373858009 "Radiotherapy course changed - acute radiotherapy toxicity (finding)"
* #1259231006  "Radiotherapy course changed due to changes to target (finding)"
* #1259232004  "Radiotherapy course changed due to change to organ at risk (finding)"   

CodeSystem: SeriesModalityCS
Id: SeriesModalityCS
Title: "Series Modality Code System"
Description: "Series Modality  Code System"
* ^url = "https://terminology.arkhn.com/SeriesModalityCS"

* #MR    "Magnetic Resonance Imaging"
* #CT    "Computed Tomography Scanner"
* #RTSTRUCT "Radiotherapy Structure Set"
* #PT "Positron emission Tomography"
* #DX "Digital X Ray"
* #NM "Nuclear Medicine image"


