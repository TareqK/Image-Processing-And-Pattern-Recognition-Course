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

