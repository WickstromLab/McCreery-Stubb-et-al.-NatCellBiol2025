// define the directory
dir=getDirectory("Choose Directory");
title = "Untitled";
Dialog.create("Example Dialog");
Dialog.addString("Title:", title);
Dialog.show();
title = Dialog.getString();


//generate the tables
Table.create("nuc");
Table.create("ag");

// measurements
selectImage("ID");
run("Label image to ROIs");
selectImage("CBX");
roiManager("Measure");

Area=Table.getColumn("Area");
CBXMean=Table.getColumn("Mean");
STDV=Table.getColumn("StdDev");
Slice=Table.getColumn("Slice");
Raw=Table.getColumn("RawIntDen");
Int=Table.getColumn("IntDen");
close("Results");
selectImage("ID");
roiManager("Measure");
ID=Table.getColumn("Mean");
close("Results");

selectWindow("nuc");
Table.setColumn("ID", ID);
Table.setColumn("Frame", Slice);
Table.setColumn("Area", Area);
Table.setColumn("CBXMean", CBXMean);
Table.setColumn("CBXSTDV", STDV);
Table.setColumn("CBXRaw", Raw);
Table.setColumn("IntDen", Int);
Table.update;

roiManager("Deselect");
roiManager("Delete");
selectImage("Ag");
run("Label image to ROIs");
selectImage("CBX");
roiManager("Measure");
CBXMean2=Table.getColumn("Mean");
Slice2=Table.getColumn("Slice");
Area2=Table.getColumn("Area");
Raw2=Table.getColumn("RawIntDen");
Int2=Table.getColumn("IntDen");


close("Results");
selectImage("ID");
roiManager("Measure");
ID2=Table.getColumn("Max");
close("Results");


selectWindow("ag");
Table.setColumn("ID", ID2);
Table.setColumn("Frame", Slice2);
Table.setColumn("Area", Area2);
Table.setColumn("CBXMean", CBXMean2);
Table.setColumn("CBXRaw", Raw2);
Table.setColumn("IntDen", Int2);
Table.update;

//Save

selectWindow("nuc");
saveAs("results", dir+title+"NucResults"+".csv");

selectWindow("ag");
saveAs("results", dir+title+"AgResults"+".csv");
