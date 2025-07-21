Nucleus 3D segmentation pipeline

Preprocesses:

Preprocesses the movie files for 3D segmentation by performing bleach correction and reduces the noise from the signal. The values for Median 3D filter should be set based on voxel dimensions.
1. Prior starting the macro open the movie as 4D hyper stack with ImageJ
2. Determine the degree of background intensity from area with out cells
3. Define the parameters for the macro based on voxel dimensions and background signal
4. Run the macro
5. Individual frames are ready to be processed with 3D segmentation macro


3D segmentation

The macro runs LimeSeg sphere seg option while visualising the 3D rendered surfaces for visualization. The value for D_0, F_pressure and Range in d0 units need to be adjusted to fit the given dataset. 

1. Draw circles to the centers of nuclei to be segmented and store them to ImageJ ROI manager (use protein localising to nuclear lamina as bondries for the nuclei)
2. Define parameters for the segmentation D= D_0, P= F_pressure, R= Range in d0 units
3. Run macro
4. Inspect complete segmentation from the 3D visualisation, the seed circle location can be updated and parameters adjusted to facilitate proper segmentation
5. Once the segmentation is satisfactory, the results table contain volumes and surface areas for individual nuclei
6. Use updated rois stored in ROI manager for the following frame in the movie. 

Dependencies:
https://imagej.net/plugins/limeseg
