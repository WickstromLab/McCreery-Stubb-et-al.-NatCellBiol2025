CBX2 aggregation measurement from live movies

Preprocessing (ImageJ):

The macro corrects for bleaching and reduces background intensity from the movies.

1. For preprocessing the 2D live movies are opened as a hyper stack in ImageJ.
2. Run macro

Segmentation and tracking (manual in ImageJ and Napari):

1. For aggregate and nucelus segmentation the pre-processed movies are processed with noise2void noised reduction algorithm (napari).
2. The nuclei are segmented from N2V processed movies using TrackMate-ImageJ plugins cellpose adaptation, where the nuceli were manually tracked and exported to imageJ as masks.
3. The CBX2 aggregates are segmented from the same movies using cellpose wrapper in imageJ, the whole movie was processed as once.

Intensity measures macro (ImageJ):

The macro measures CBX2 intensity from the whole nucleus area and from the CBX2 aggregates and stores them as 2 separate tables in chosen directory.

1. Open segmented nuclei and tracked nuclei and name the movie as ID
2. Open segmented CBX2 aggregates and name the movie as Ag
3. Open the pre-processed CBX2 movie and name it as CBX
4. Run the macro
5. Macro produces two tables NucResults and AgResults that contain CBX2 intensities from the whole nuclei area and from CBX2 aggregates, the tracked cells are indexed by the ID that can be used to organise the table.

Dependencies:

https://juglab.github.io/napari-n2v/
https://imagej.net/plugins/trackmate/detectors/trackmate-cellpose
https://github.com/BIOP/ijl-utilities-wrappers





