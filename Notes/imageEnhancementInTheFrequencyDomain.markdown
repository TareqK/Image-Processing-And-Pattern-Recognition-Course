# Image Enhancement in the Frequency Domain

Recall : The purpose of image enhancement is to improve the 
interpretability or precision of information in images for 
human viewers and providing better input for other image processing
and image processing vision techniques. 

This is achieved by changing the attributes of images to make them 
more suitable for a given task.

Image enhancement doesn't increase the amount of data in an image, it 
just changes the dynamic range of the chosen feature so they 
can be detected easily.

We already talked about image enhancement in the spatial domain. Today 
we will be talking about image enhancement in the **frequency domain**. 
This is mostly done using the **fourier transform**.

There is no "general theory" to determine what a good image is when 
judged by humans. The rule of thumb is : if it looks good, it is good.

However, when we use image enhancement as preprocessing for other image
processing or computer vision techniques, there are quantitative techniques
to find out of the image is good. An example of this is histograms
to determine if the contrast is suitable or not.

In Frequency domain images, The image is first transferred into the 
frequency domain. This means we take the fourier transform of the image first, 
do operations on that, then we perform the **inverse** fourier transform
to get the resultant image.

These methods enhance the image by convolution the image with a linear,
position invariant operator --> this means that the image will have the 
same signature regardless of the position of the pixels in the image. **It is 
possible for 2 images to have the same signature in the frequency domain**

The Pixel values of the input image will be changed according to the transformation
function applied. For an image F and output G This is given by  :

> s = T\(r\)

The process is mostly done this way 

> F(x,y) --> preprocessing --> Fourier Transform -->filter function -->inverse Fourier transform --> post-processing --> G(x,y)

Alternatively, we can do this directly 

> G(u,v) = H(u,v)F(u,v) 

Using the frequency domain allows us to capture properties that are 
not present in the spatial representation of the image, mainly the
shape and texture of the image. 

## Definition of frequency

Frequency is formally defined as:

> The number of times in a specified period that a phenomena occurs within a specified interval.




