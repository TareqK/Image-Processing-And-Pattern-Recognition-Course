# Histograms 

- A histogram plots how many times(the frequency) of each intensity in
an image occurs.

- Helps avoid taking overexposed pictures.

- Easier to detect types of processing previously applied to an image

- Widely used in image processing.

- a common practice is to normalize the histogram function by the number of 
pixels in an image.
  - This helps us to remove bias.
  - The sum of all components of a normal histogram is equal to 1.
  
## Histograms and Contrast

- Lower number of pins far apart = high contrast.

- High Contrast = very clear details **BUT**

- High Contrast = loss of details sometimes. 

- We can get higher contrast by grouping pixels into discrete levels.

## Histograms and Dynamic Range

- high dynamic range = very bright and very dark parts in an image.

- Dynamic rang my exceed number of available bits to represent pixels
  - Solution :
	- Capture multiple images of the same scene.
	- Combine them. 
	
## Color image Histogram 

- Two types of histogram 

- Intensity histogram : image converted to grayscale and the histogram of the grayscale is taken

- Individual color channel histogram : 3 histograms for red, green, blue.

- Provide useful information like dynamic range, brightness, contrast.

- No information about distribution of colors.

- Different images can have the same histogram.

## Histogram Equalization/Normalization

- The aim is to create uniform(flat) distribution of histogram. ie, the probability 
is (1/L-1) to get a pixel value.

- Apply a point operation that changes histogram into a uniform distribution.

- Spreading out the frequencies in an image is a simple way to improve a dark or washed image.

- Can be expressed as 

  - r<sub>k</sub> : input intensity.

  - s<sub>k</sub> : processed intensity.

  - k : range of intensity.
  
  - L : maximum intensity.
  
- s = T\(r\) , where T\(r\) is a transformation to equalize a histogram, should be :
   
   1. monotonically increasing : ie, if x &gt; y, then T\(x\) &ge; T\(y\), So we don't get negative images after the 
   transformation is applied.
   2. Bounded by \[0,L-1\] : So the output is in the same range as the input.
   
		note that, given that T is strictly monotonically increasing, ie if x &gt; y, then T\(x\) &gt; T\(y\), there is a 
		T<sup>-1</sup>\(s\) that returns r.
		
   3. s = T\(r\) = (L-1) <sub>0</sub>&int;<sup>r</sup> P<sub>r</sub>\(r\).
   
		- There should be a bunch of integrations and probability equations to prove this, look at the course book for the details.
		  Long story short, its a probability thing, where we look at all values to determine the transformation of a certain value.

- Histogram Equalization distributes the gray level to reach the maximum gray level white because the 
cumulative distribution function equals 1 when 0 &le; r &le; L.


- Some cases : 
  - Low Contrast Image Histogram : Narrow and centered toward the middle of grayscale. we distribute 
  the histogram to a wider range, improving the quality
    
    - We do this by adjusting the probability density function of the image so that the probability is 
    spread evenly.

### Histogram Matching
