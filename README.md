# Scattering-and-Linear-Sampling
Matlab implementation of electromagnetic wave scattering by dielectric cylinder and imaging resulting data with linear sampling method

The project consists of two parts. The first part calculates the simulated data from electromagnetic scattering guided by the paper "Scattering by a Dielectric Cylinder of Arbitrary Cross Section Shape" by JACK H. RICHMOND. 

The link to the paper: https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=1138427

Ess(iii,kkk) matrix from Es.m file corresponds to equation (17) from the papar and used in linear sampling method.

Additional information about linear sampling method: https://onlinelibrary.wiley.com/doi/10.1002/9781119311997.ch5 and https://iopscience.iop.org/article/10.1088/0266-5611/20/1/010

Initial.m and Initial2.m files sets up the initial layout for the calculations to carry out. Cmn.m and Es.m files calculates the data for scattering.

Run the files in the following order Initial.m > Cmn.m > Es.m > linear_sampling.m 

Initial.m and Initial1.m have plots to show the placement of the antennas and dielectric cylinder and linear_sampling.m has a plot to show the result of imaging. 

The initial position of dielectric and antennas

![initial_layout](https://user-images.githubusercontent.com/128630855/227712319-929ba056-c83f-48e7-ab20-39cf52a9aa44.jpg)

The resulting image of linear sampling

![linear_sampling](https://user-images.githubusercontent.com/128630855/227712321-2a80502f-8790-42fd-8899-b844c66b63a7.jpg)
