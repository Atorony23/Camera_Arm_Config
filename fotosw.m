function [imgdata,img] = fotosw()
    httpsUrl = "http://192.168.1.10:4242"; 
    imageUrlf = strcat(httpsUrl, "/current.jpg?annotations=on"); 
    imageUrln = strcat(httpsUrl, "/current.jpg?annotations=off"); 
    imageFile = "na.jpg"; 
    imageFileFullPathf = websave(imageFile, imageUrlf); 
    img = "actualphoto.jpg"; 
    imageFileFullPathn = websave(img, imageUrln); 
    imgdata = imread(img);
end