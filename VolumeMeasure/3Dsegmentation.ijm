//set parameters for segmentation

D=3.0;
P=0.018;
R=3.0;
// extraction of voxel size from the image
getVoxelSize(XY, height, Z, unit);

// calculating voxerl height to widht ratio for limeseg
scale=Z/XY;
print(Z);
print(XY);
print(scale);

// run sphere seg 3D segmentation
run("Clear all");
run("Sphere Seg", "d_0="+D+" f_pressure=0.018 z_scale="+scale+" range_in_d0_units=3.0 color=102,255,255 samecell=false show3d=true numberofintegrationstep=-1 realxypixelsize="+XY+"");
