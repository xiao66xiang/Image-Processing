I=imread('C:\Users\SU HAO\OneDrive - Nanyang Technological University\Course\Image processing\Lab1\Lena.bmp');
result=localhisteq(I,[3 3]);
imshow(result);
function result=localhisteq(I, window)
    A=rot90(I,2);
    B=flip(I);
    row1=cat(2,A,B,A);
    S=cat(1,row1,flipud(row1),row1);   
    [row, column]=size(I);
    hr=(window(1)-1)/2;
    hc=(window(2)-1)/2;
    result=zeros(row,column,'uint8');
    for i=1:row
        for j=1:column
            x = i+row;
            y = j+column;
            sub=S(x-hr:x+hr,y-hc:y+hc);
            glob=histeq(sub);
            result(i,j)=glob(hr+1,hc+1);
        end
    end
end
