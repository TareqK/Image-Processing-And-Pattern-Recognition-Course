pkg load image;
x = imread("Pepper.jpg");
h = imhist(x);
y = x(1:512,1:256,1:3)
z = imcomplement(y)
n = x;
n(1:512,256,1:3)=z();
imwrite(n,"Pepper-Negative.jpg");
l = imadjust(x,[],[],0.2);
imwrite(l,"Pepper-Gamma02.jpg");
l = imadjust(x,[],[],0.8);
imwrite(l,"Pepper-Gamma08.jpg");
l = imadjust(x,[],[],4.0);
imwrite(l,"Pepper-Gamma40.jpg");

