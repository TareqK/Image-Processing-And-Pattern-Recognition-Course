# Image Enhancement in the Spatial Domain

Some images might be too dark, or too bright, or too noisy. Here, we can
use image enhancement techniques to improve these images. These are simple
manipulations, that will help us improve the contrast and remove the noise.

## The Spatial Domain 

The Spatial Domain is defined as :

> The Domain that contains the pixels of an image.

Spatial domain techniques work directly on the pixels of an image.
Spatial domain techniques are more efficient and require less processing
resources to implement. Spatial domain processes are expressed as

> g(x,y) = T[ f(x,y) ]

where f(x,y) is the input image, T is the process or operator, and g(x,y) is the output. The
operator can be applied to the whole image or to parts of an image or 
even sets of images.

### Pixel Neighborhood

An nxn neighborhood is the area with size n*n around a pixel with the 
center at (x,y). We can determine if we want operations to overlap or not
overlap on this region by determining where we move the center during
operation. If we are doing certain operations such as inversing or 
modifying contrast, this could cause certain pixels to be overexposed 
or the wrong color. Overlapping is not always the best solution for 
an operation.
