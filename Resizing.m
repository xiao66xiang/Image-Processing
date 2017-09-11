calc('C:\Users\SU HAO\OneDrive - Nanyang Technological University\Course\Image processing\Lab1\Lena.bmp');
calc('C:\Users\SU HAO\OneDrive - Nanyang Technological University\Course\Image processing\Lab1\Peppers.bmp');
calc('C:\Users\SU HAO\OneDrive - Nanyang Technological University\Course\Image processing\Lab1\Mandrill.bmp');
close all;
function calc(s)
    x=imread(s);
    A=[2,4,8,16];
    for i=1:4
        y=imresize(x,1/A(i));
        figure, imshow(y)
        pause
    end
end



    