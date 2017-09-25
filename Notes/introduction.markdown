# Introduction to Digital Image Processing 

Digital Image processing refers to processing digital images by 
mean of a digital computer. It is a branch of machine learning and AI that goes into
the process of extracting useful data from images or modifying images in a certain way. Image processing
aims at improving images for better human interpretation of their content in many ways. Examples of this 
are printing, enhancement, editing, and compression. 

## What is an Image?

> An Image is a Visual Representation in the Form of a Function.

- Images are generally defined over rectangular areas, and is a **matrix**.

- Images can be matrices of intensity of Grey or color values.

- This function is a 2D function f(x,y), where x and y are spatial coordinates. The origin is the **Top Left** corner
of the image. 

- The amplitude of f at any pair(x,y) is called the intensity or the Grey level of the image at that point(the blackness or 
whiteness of that point).

- Each pair (x,y) in the matrix is called a **pixel**. 
  - The higher the pixel count, the better the quality of the image, but the larger it is in size and the harder it is to process. 
  - Digitizing an image causes an image to become an approximation of the real scene. Digitization is done using its own algorithm,
   and there is some loss of features and values when digitizing a real image. 

## Levels of Image Processing

- Image Processing(Low) : inputs and outputs are images(enhancement, compression, feature detection, restoration, noise removal, etc).

- Image Analysis(Mid) : outputs are attributes extracted from images(matching, segmentation, registration, etc).

- Computer Vision(High) : an ensemble of objects extracted from images(Object detection, object recognition, shape analysis, object tracking, etc).

## The Work Flow of Image Processing

The core concept of image processing is taking an image and returning an image ie,

> Input-> Image, Output -> Image

Going into depth, the process has 5 parts : 

- Image Acquisition and Preprocessing : The First step of the process, this is about selecting our images.

- Image Segmentation and Analysis : Extracting certain regions of an image and analyzing the objects in them, the 
*semantics* of the image, and its description.

- Feature Extraction : Extracting some characteristics from an image for a certain purpose.

- Application of Image Processing : Things such as Image Classification,
Face Detection, Face Recognition, Optical Character Recognition, License Plate Recognition, etc.

- Post processing : Modifying images in a certain way such as contrast adjustment .

## What Do we need to Know to Get Started with Image Processing?

- Maths! It's very important to know linear algebra, since all images are
technically matrices, any process we do on an image is a linear algebra
operation.

- MATLAB(or another similar software). It's what we are going to be mostly use for experimenting.
  

## Some Applications of Image Processing

There are many real world applications in image processing in many fields such as: 

- Medicine : Such as Histogram Stretching, Noise Cleanup, Tumor Detection, etc, on Medical Images(X-ray, MRI, etc). 

- Biology : Such as Organism Recognition, Clarifying Microscopic Images, etc.

- Security and Biometrics : Face Recognition, Fingerprint Recognition, Iris Recognition, etc.

- Astronomy : Identifying Galaxies.

- GIS(Geographic Information Systems) : Hurricane Recognition in Meteorology.

- Law Enforcement : Speed Cameras, Plate Recognition, Face Recognition, Fingerprint Recognition, Gesture Recognition,
Suspect Tracking, etc. 

- Industrial Inspection : Automatic Inspection of Parts such as semiconductors for defects or Sorting Produce.
Image recognition can be more reliable than the human eye when there is a huge amount of variables.

- Human Computer Interaction : Gesture Recognition and Face Recognition to make interaction more intuitive. 

## Why Do We Need Image Processing?

- Image Acquisition :
  - Correcting aperture, color balance, lightening, etc.
  - Image Reconstruction.
  - Creating 3d objects from images.
  
- Prepare images for displaying/printing :
  - Size Adjustment.
  - Color-Mapping, gamma correction.
  
- Facilitate picture storage and transformation.
  - Efficient image storage/compression.
  
- Enhance and Restore Images :
  - Enhance personal images/libraries(enhancement meaning here 
	enhancing the experience of using digital images eg by adding information and tags to them).
  - Color enhancement for security screening.
  
- Information Extraction From Images :
  - Reading Barcodes.
  - Character Recognition.
  
- Image Retrieval :
 - Text Based Image Retrieval : Searches for  and fetches images by text(tags, names, etc). 
 - Content Based Image Retrieval : Searches for and fetches images by using another image by comparing content.
 - Sketch based Image Retrieval : Searches for and fetches images by comparing to a sketch. 
 - Semantic/Concept Based Image Retrieval : Searches for and fetches images by their properties and objects. 

  
## Stages in Digital Image Processing

- Image Acquisition : The First stage. It is acquiring and digitizing images so processing 
can be performed afterwards.

- Image Enhancement : The Process of adjusting images so that the results are suitable for display.

- Image Restoration : Taking a corrupt or noisy image and restoring the clean/original image.

- Morphological Processing : Processing images based on shapes. It is applying a structural element to an input image
to create an output image of the same size.

- Segmentation : Divide images into regions/constituent parts.
 
- Description and Representation : Image regions transformed into suitable representation for further processing. This is 
important for machine learning. An example of this is the [RGB Histogram](https://en.wikipedia.org/wiki/Color_histogram) and 
its use to approximate what an image is. Another Example is [Pattern Recognition](https://en.wikipedia.org/wiki/Pattern_recognition).

- Object Recognition : The Process of finding and labeling different objects in images(Using the Description an Representation
of the image).

## How Do We and the Computer See?

### The Human Visual System

In order to understand how to deal with images, we have to understand what seeing is and how it works. 

Humans see when the reflection of light bounces off of an object and falls on the retina(the bundle of nerve sensors in the eye).
A lens controls the focus and sharpness of the image. Rods in the retina detect illumination levels while Cones detect 
colors(there are around 10x more rods than cones). The Distance between the lens and the retina is constant. To focus,
the lens changes shape by either being squished or flattened, changing the focal length and thus the sharpness.
When light falls onto the retina, electrical impulses are created and are sent to the brain via the optic nerve. The Image is 
upside down, since there is only 1 lens.

![Diagram of the Human Eye](https://nei.nih.gov/sites/default/files/nehep-images/eyediagram.gif)

### The Computer
- Images can be produced using different regions of the Electromagnetic Spectrum(x-rays,microwave,MRI,
photography,etc)

#### Displaying Images

- Images are displayed as a discrete set of intensities.

- The Eye's ability to discriminate between different intensity levels is an 
important consideration in presenting image processing results. The Main goal 
of image processing is to improve images. The Final judge is the human. Therefore 
it is very important to consider the human eye when 

- The Human visual system can perceive around 10^10 different light intensity levels.

- Subjective brightnesses a logarithmic function of the human eye.

- However, at any one time we can discriminate between a much smaller number of intensities
ie the current sensitivity of the visual system.

- Perceived intensity of a region is related to the light intensities of the regions around it. 
Perceived brightness is not a simple function of intensity. The Visual system tends to overshoot 
or undershoot around the boundary of regions of different intensities. 
  - One phenomena to demonstrate this is the mach band 
  
![mach band](http://www.ucalgary.ca/pip369/files/pip369/MachBands.jpg) 

where we see concaveness around the boundaries between the stripes even though 
they are of constant brightness. 

  - Another Phenomena is simultaneous contrast, 
    where a color seems lighter or darker depending on the surrounding region. 
    
    ![simeltaneeous contrast](http://www.johnpaulcaponigro.com/blog/http://www.johnpaulcaponigro.com/blog/wp-content/themes/zinfandel-blue-10/images/lightdark.jpg)

  - Yet Another Phenomena is optical illusions, where objects seem larger, smaller, moving, or cause us 
    to perceive things that aren't there because of how the visual system works(and fills in stuff that isnt there sometimes). An example is this 
    trippy picture.
    
    ![trippy picture](http://www.optics4kids.org/osa.o4k/media/optics4kids/snakes.gif?width=400&height=388&ext=.gif)

##### Light and the Electromagnetic spectrum
- Light is a (very small) part of the Electromagnetic Spectrum that can be sensed by the human eye(400nm to 700nm). 

- The Electromagnetic Spectrum is split up according to wavelengths of different forms of energy.

- This was discovered in 1666 by [Issac Newton](http://www.thestargarden.co.uk/Newtons-theory-of-light.html) when he noticed that light split into a spectrum 
after passing through a piece of glass.

- Humans perceive color based on the light reflected from an object. A green object for example, absorbs
everything except green, so we see it as green.

- Light That has no color is called *monochromatic* or *achromatic*.

  - Its only attribute is intensity.
  
  - Because monochromatic light is perceived from black to white with a 
    set of grays between , we refer to it using *gray level*.
    - Intensity level and gray level mean the same thing.
  
- Light that has color is called *chromatic*.

  - Its attributes in addition to the frequency of the light wave(which gives us the color) are :  
    
    - Radiance : The Energy reflected from the object.
    
    - Luminance : The Energy perceived by the observer.
    
    - Brightness : A Subjective property that is hard to measure but gives the notion of intensity.
    
#### Image Acquisition

- Image Acquisition is a problem domain

- Most of the images we are interested in are generated by the combination of 
an "illumination" source and a reflection or absorption of the energy from a 
source by the clements of the "scene" being imaged ie we need :

  - A Source of illumination.
  
  - Devices to collect the energy reflected from or transmitted through the objects.
  
- Radiance is the total energy that flows from the light source.

- Luminance is the level of energy perceived from the light source.

- The Fundamental Limit of Image Acquisition :

> To See an Object, The Electromagnetic Wavelength Must Be No Bigger Than the Object.
 
##### Sensing
there are three arrangements of sensors :

1. Single Imaging Sensors : They are used for IR data transmission.

2. Line Imagining Sensors : They are used in Flatbed Scanners and Bar code readers.

3. Array Sensors : Used in DSLR or Phone Cameras .
 
In all cases, incoming light lands on a sensor material responsive 
to that type of energy, generating a voltage.
for details on how images are generated from a physical property, see the
[image formation model](http://homepages.inf.ed.ac.uk/rbf/CVonline/LOCAL_COPIES/MARBLE/low/fundamentals/models.htm).
it can be summarized by

> f(x,y)=i(x,y)r(x,y)

where ```i``` is the *illumination* and ```r``` is the reflectivity.

- Sensors used in acquisition produce a continuous voltage signal. A Digital 
sensor can only measure a limited number of samples at a discrete set of energy 
levels.

- A Digital form of an image is produced through two processes:

  - Sampling(Digitization) : digitizing the intensity of spatial coordinates x,y.
  
  - Quantization(Discretization): converting the intensity of x,y into discrete levels.
	

