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

## Image Interpolation

Image interpolation is the use of known data to estimate values 
at unknown location. it is an important tool in zooming, shrinking,
shrinking, rotation , and geometric connections.
### Zooming 

There are several interpolation for zooming. After a new grid 
the size of the new resolution is generated, the missing intensities can 
be estimated by these methods :

  - Nearest Neighbor : Assigns each new location the intensity of its 
  nearest neighbor in th original image.
    - Simple.
    - Quick.
    - However, generates distortion of straight edges.
    - Not used frequently.
    
  - Bilinear : Use the four nearest pixels to estimate the intensity of the
   new location. [This method is described in detail here](https://en.wikipedia.org/wiki/Bilinear_interpolation#Application_in_image_processing).
    
  - Bicubic : Use the nearest sixteen neighbors of a point to determine
  its intensity. [Bicubic interpolation is described in detail here](https://en.wikipedia.org/wiki/Bicubic_interpolation#Use_in_computer_graphics).
