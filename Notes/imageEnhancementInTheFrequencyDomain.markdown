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

These methods enhance the image by performing a convolution operation on the image with a linear,
position invariant operator --> this means that the image will have the 
same signature regardless of the position of the pixels in the image. They
modify the distribution of the gray-level values. As a consequence, 
the values of the pixels in the image change. It is important to know that **It is 
possible for 2 images to have the same signature in the frequency domain**

The Pixel values of the input image will be changed according to the transformation
function applied. For an image F and output G This is given by  :

> s = T\(r\)

where r and s represent the pixels in F and G respectively.

The process is as follows :

> F(x,y) --> preprocessing(normalization) --> Fourier Transform --> Filter function --> Inverse Fourier Transform --> Post-Processing --> G(x,y)

Alternatively, we can do this directly 

> G(u,v) = H(u,v)F(u,v) 

where H is the transfer function of the image.

Using the frequency domain allows us to capture properties that are 
not present in the spatial representation of the image, mainly the
shape and texture of the image. 

## Definition of frequency

Frequency is formally defined as:

> The number of times in a specified period that a 
> phenomenon occurs within a specified interval.


## The Fourier Transformation

The basic principle is that any equation that repeats itself can 
be expressed by the sum of sines and cosines in various frequencies.

Essentially, its the sum of the different periods of a periodic function expressed
as multiple sines.

For example, Here is a Fourier transform for a sound wave:

![fourier drawing](http://hearinghealthmatters.org/waynesworld/files/2012/06/Fourier-Analysis.gif)

The more terms there are to the Fourier function(series), the closer the approximation 
of the original(since we rarely get a perfectly periodic wave)


