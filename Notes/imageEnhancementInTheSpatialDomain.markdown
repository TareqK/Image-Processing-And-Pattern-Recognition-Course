# Image Enhancement in the Spatial Domain

Some images might be too dark, or too bright, or too noisy. The goal of 
**Image Enhancement** is to improve these images. These are simple
**manipulations** on the image, that will help us improve the contrast and remove the noise.
We do this both when we want to make images look better for human consumption
and help highlight regions of interest for computer vision.

Image Enhancement is different from image restoration, in that image restoration
aims at restoring an image to its original form/fixing degradation
rather than making it a better image. Image Restoration works by
**modeling** of the degradation and correcting it based on some criteria.

## But What Makes a Good Image?

A Good image to a human is a completely subjective thing that is hard 
to standardize. An image that seems beautiful to one person might 
not like another. An image that is clear to someone might seem too 
tiny and ambiguous to another.

However, to a machine, a good image is the one 
that **gives the best machine recognition results**.
Multiple trials and errors might be performed to find the best 
enhancement approach or technique for an application.

## The Spatial Domain 

The Spatial Domain is defined as :

> The Domain that contains the pixels of an image.

Spatial domain techniques work directly on the pixels of an image, as 
opposed to the Frequency domain, in which the operations are done 
on a signature of the image(eg, the fourier transformation).
Spatial domain techniques are more efficient and require less processing
resources to implement. Spatial domain processes are expressed as

> g(x,y) = T\[ f(x,y) \]

where f(x,y) is the input image, T is the process or operation on 
f defined over the **neighborhood** of (x,y), and g(x,y) is the output. The
operator can be applied to the whole image or to parts of an image or 
even sets of images.

### Pixel Neighborhood

A Neighborhood in Digital Image Processing is defined as :

> An n\*n neighborhood is the area with size n\*n around a pixel with the 
center at (x,y). 


## Mask/Filter

the process consists of moving the origin of a neighborhood from pixel 
to pixel and applying T to the pixels in the neighborhood to yield output
at that location. 

We can determine if we want operations to overlap or not
overlap on this region by determining where we move the center during
operation. If we are doing certain operations such as inversing or 
modifying contrast, this could cause certain pixels to be overexposed 
or the wrong color. Overlapping is not always the best option for 
an operation.

a special case of mask is point processing

### Point Processing/Point-Wise Modification

Point processing is applying a mask to a neighborhood of 1 ie to each 
pixel in the image . In this case :

> S = T\(r\)

Where S is the pixels in the output image , r 
is the pixels in the input image, T is the transform.

An example of point processing is **Thresholding**, where all pixels with gray level 
above a certain level are turned to white, and all pixels under that 
level are turned black, Or **Contrast stretching** where all values of r lower than k are 
compressed(decreased) into a narrow range of s towards black, while all
values of r higher than k are stretched(increased) towards white.


## Intensity Transformations 

- simplest type of transformation.

- The Values of the pixels are changed individually.

- Basically histogram/point-wise modification/manipulation.

- 1D function to translate input to output.

- The process consists of moving the origin of the neighborhood from pixel to 
pixel and applying T on the neighborhood 1x1

There are many functions to do this.

### Intensity Transformation Functions

- Linear Transformations :
  - Identity Transformation : S = r.

- Negative Transformation : S = L - r, where L is the maximum value in 
  the spatial domain(max intensity in grayscale, for example).
   - Inverse of an inverse is the original image.
   - Useful in the medical field.

- Logarithmic Transformations :

  - General Formula : s = c\*log\(r+1).
    - c is determined by us. Usually it is 1.
	- We assume r&ge;1, because we cant calculate log(0).
  
  - Maps a narrow range of low intensity in the input to a wider range
    at output.
    - The opposite is true the higher the intensity values of the input 
   
  - Used to expand the value of dark pixels while compressing higher level 
	values.
	- The Opposite is true of inverse log transformation.

  - Compresses the dynamic range of images with large variation in pixel
  values
    - A classic example of images with pixels with large dynamic range values
     are Fourier Spectrum images(more than 10^6 possible values). When these values
     are scaled linearly, the brightest pixels dominate the display, while 
     the lower values are lost. Therefore, we apply the log transform 
     to them, decreasing the range(applying log transform with c=1 on a spectrum 
     with 1.5*10^6 values results in 0-6.2 values).
     
	- As a results, We cannot see the significant degree of detail as it will be lost 
	  in the display.

- Exponential Transformation :
  - General Formula : s = c*r<sup>&gamma;</sup>
  
  - Based on the value of &gamma;, we get different functions mapping the input
  to the output.
  
  - Using fractional values maps a narrow range of dark input
   values to a wider range of output vales.
    - The Opposite is true of higher values.
	- &gamma; = 1 gives us the identity function.

  - Unlike log function, we get a number of transformation curves can 
  be obtained by varying &gamma;.
    
  - Used for [Gamma Correction](https://en.wikipedia.org/wiki/Gamma_correction#Windows.2C_Mac.2C_sRGB_and_TV.2Fvideo_standard_gammas).
	
	- Gamma Correction inverts the darkening operation due to some properties in the image
	
	- Mostly happens in CRT monitors.
	
	- If we don't do it , the picture will either be too dark or bleached out.
	
	- Done before inputing the image to the screen.
	
	- Trying to reproduce colors accurately also requires knowledge of gamma 
	correction since it changes not just the intensity, but also the ratio
	of R:G:B.
	  
	  ![Example Of Gamma Correction](https://image.slidesharecdn.com/04imageenhancementinspatialdomain-130831074136-phpapp01/95/04-image-enhancement-in-spatial-domain-dip-10-638.jpg?cb=1377934957)
