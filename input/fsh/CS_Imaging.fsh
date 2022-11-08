CodeSystem: RadiomicsCS
Id: RadiomicsCS
Title: "Imaging Code System"
Description: "Imaging Code System"

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



