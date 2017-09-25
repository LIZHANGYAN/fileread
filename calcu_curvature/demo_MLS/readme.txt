File Description:

MLS_curvature_computing.m: main function for curvature computing.
MLS_demo.m: a demo for direct computing of point-set surface curvatures.
MLS_energy.m: calculate the energy value of a given point. 
MLS_projection.m: project a point onto the MLS surface defined by input points. 
nearestneighbour.m: find nearest neighbour points for a given point.


demo_evaluation_data.txt: evaluation point data.
                     file format:
                     x-coordinate y-coordinate z-coordinate
                     ...

demo_input_data.txt: input synthetic/real point data and normals.
                          file format:
                          x-coordinate y-coordinate z-coordinate normal-x normal-y normal-z
                          ... ...

demo_resulting_curvatures.txt: resulting curvatures.
                               file format:
                               gaussian mean k1 k2
                               ...