//name the file
title = "Untitled";
Dialog.create("Example Dialog");
Dialog.addString("Title:", title);
Dialog.show();
title = Dialog.getString();

//bleach correction and background reduction
run("Bleach Correction", "correction=[Histogram Matching]");
run("Subtract Background...", "rolling=200 sliding stack");
rename(title);
