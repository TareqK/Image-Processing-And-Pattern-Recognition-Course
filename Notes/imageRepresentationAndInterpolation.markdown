# Image Representation and Interpolation 

## Image Representation

### What is an Image to the Computer?

- Images are represented as matrices of values. These values can be any data type

- For Grayscale images, any value of (x,y) in the matrix has a value between 0-255(usually).

  - The Number of grayscale levels is 2^n.
  
  - We can also come up with our own values for intensities. Say we want to represent an image
	with 3 colors only, we will only need 3 values instead of 256.

  -	This is an example of a simple grayscale image and its representation :
	
	![this is an example](https://i.stack.imgur.com/A6g0y.jpg)
- For colored images, any value of (x,y) in the matrix is a vector of red,green,and blue, each 
with a value between 0-255(usually).

- Intensity Level Resolution : Number of intensity levels used to represent the image
  
  - The higher the intensity levels used, the finer level of detail.
  
  - Intensity Level Resolution is given in terms of the number of bits needed
	to store every intensity level.
	
- The Number of bits required to store a digitized image is :

> M\*N\*k  
  
  or

> (x\*y\*Intensity Level Resolution)

#### Noise Level

Noise is the grainy texture pattern in images. This is effected by 
multiple factors such as ISO, Blur, contrast, etc. We must be mindful 
of what might cause it and try to reduce it to an acceptable level for
our use. Its **not** a measured value, but rather a phenomenon in 
imagery.

### Image Properties

- Resolution : Resolution is how much detail we can have
in an image. It depends on sampling and gray level.

  - The Higher the *Sampling Rate*
	and the larger the grayscale value domain, the better the approximation
	of the digitized image is from the original.
	
  - The more the quantization levels, the larger the size of the image.

  - Key Questions to ask when determining resolution : 
    
    - Does the image look aesthetically pleasing?
    
    - Can you see what you need to see in the image?

- Spatial Resolution is determined by how fine/coarse the sampling that
was carried out is. It Is the measure of the smallest discernible detail in an image.

  - A Widely used definition of image resolution is the largest number of 
  discernible line pairs per unit distance

  - Dots per unit distance is a measure of image resolution used commonly in printing
  and publishing. A Common unit is **Dots per Inch**(DPI)

  - We can also measure resolution using a pair of values representing how 
  many pixels there are in a row and how many pixels there are in a column.
  

- Saturation : The Value beyond which all intensity levels are clipped
(changed to the same level).

- Image File Format : There are many image file formats(gif,png,jpeg). They 
Each have their own advantages and disadvantages. 

## Relationship between Pixels

A Pixel at (x,y) has 4 neighbors : (x+1,y), (x-1,y), (x,y+1), (x,y-1).
This set is denoted by N4(p). The four diagonal neighbors of P is the set : 
(x+1,y+1), (x-1,y+1), (x=1,y+1), (x-1,y-1). this is denoted as ND(p).

All Neighbors of a pixel are 1 unit distance away. Some neighbors of p might
lie outside the image. In that case we may take an average or substitute 
the existing neighbors in calculations.
### Adjacency 

Let V be the set of intensity values used to refer to adjacency. Adjacency is 
the set of pixels that are neighbors with an intensity belonging to V .

There are 3 types of adjacency :

- 4-Adjacency: The 2 pixels q,p with values from v are adjacent if 
q is in the set N4(p).

- 8-Adjacency: The 2 pixels q,p with values from v are adjacent if 
q is in the set N8(p).

- m-Adjacency: A mixed approach to remove any ambiguities when 
8-adjacency is used, the 2 pixels q,p with values from v are adjacent if 
  - q is in the set N4(p) OR
  - q is in ND(p) and N4(p) &cap; N4(q).

The boundary of finite regions forms a closed path. Edges are formed from 
pixels with derivative values that exceed a preset threshold. THis, the 
idea of an edge is a local concept that is based on ** intensity level discontinuity
at a point **. 

In layman terms, adjacency = paths.

### Distance 

Distance between pixels is measured using [Euclidean Distance](https://en.wikipedia.org/wiki/Euclidean_distance). This 
is the distance in unit length from pixel to pixel. it is given by the equation

> ((x1-x2)^2 + (y1-y2)^2)^(1/2) 

Another measure is the
[City-Block Distance](https://en.wikipedia.org/wiki/City_block), which is the number of 
pixels we travel between p an q. It is given by

> |x1-x2| + |y1-y2|

another measure is the [Chebyshev Distance](https://en.wikipedia.org/wiki/Chebyshev_distance). Which is a current subject of research.

## Mathematical Tools in Digital Image Processing

Since an image is a matrix of intensities, any operation involving one or
more images is carried out on a *pixel-by-pixel* basis. We mostly
used *array products* rather than *matrix products* when doing image 
processing. For example, the array product of adding 2 images is called
*superimposing* them, and results in an image which is composed of them both.

## Image Interpolation

Image interpolation is the use of known data to estimate values 
at unknown location. it is an important tool in zooming, shrinking,
rotation , and geometric connections. 

### Some Simple Interpolation Techniques

After the matrix with the new size is created, the missing intensities 
are filled by a few techniques. This is often used when shrinking or
zooming an image, some examples of these techniques are : 

  - Nearest Neighbor : Assigns each new location the intensity of its 
  nearest neighbor in the original image.
    - Simple.
    - Quick.
    - However, generates distortion of straight edges. This is called
	  **pixelization**.
    - Not used frequently.
    
  - Bilinear : Use the four nearest pixels to estimate the intensity of the
   new location. [This method is described in detail here](https://en.wikipedia.org/wiki/Bilinear_interpolation#Application_in_image_processing). 
 
  - Bicubic : Use the nearest sixteen neighbors of a point to determine
    its intensity. [Bicubic interpolation is described in detail here](https://en.wikipedia.org/wiki/Bicubic_interpolation#Use_in_computer_graphics).


