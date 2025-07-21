//define the parameters for pre-processing

//background intensity
filter=500;
//pixels for median filter
x=2;
z=1;
// number of frames in the stack
frames=3;

//image processing
run("Median 3D...", "x="+x+" y="+x+" z="+z+"");
run("Bleach Correction", "correction=[Simple Ratio] background="+filter+"");
run("Enhance Contrast", "saturated=0.35");
run("Stack Splitter", "number="+3+"");
