I1=imread('C:\Users\SU HAO\OneDrive - Nanyang Technological University\Course\Image processing\Lab1\Mandrill.bmp');
I2=imread('C:\Users\SU HAO\OneDrive - Nanyang Technological University\Course\Image processing\Lab1\Peppers.bmp');
result=histTransfer(I1,I2);
imshow(result);
function result=histTransfer(I1, I2)
%   result=imhistmatch(I1,I2);
    [counts1,~] = imhist(I1);
    [counts2,~] = imhist(I2);
    cdf1 = cumsum(counts1); % Make transfer function (look up table).
    cdf1 = cdf1 / sum(counts1); % Normalize
%    plot(grayLevels, cdf1, 'b-');
    cdf2 = cumsum(counts2); 
    cdf2 = cdf2 / sum(counts2); 
    map = zeros(256,1,'uint8');
    for i=1:256
        [~,v] = min(abs(cdf1(i) - cdf2));
        map(i) = v-1;
    end
    result = map(double(I1)+1);
end
