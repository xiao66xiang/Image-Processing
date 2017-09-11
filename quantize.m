quan('C:\Users\SU HAO\OneDrive - Nanyang Technological University\Course\Image processing\Lab1\Lena.bmp');
quan('C:\Users\SU HAO\OneDrive - Nanyang Technological University\Course\Image processing\Lab1\Peppers.bmp');
quan('C:\Users\SU HAO\OneDrive - Nanyang Technological University\Course\Image processing\Lab1\Mandrill.bmp');
close all;
function quan(s)
    x=imread(s);
    A=[2,4,8,16,64];
    [row, column]=size(x);
    for i=1:5
        y=x/A(i);
        figure, imshow(y)
        pause
    end
end



    