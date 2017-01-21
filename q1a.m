#Image = [1 2 3 4; 5 6 7 8];
#origF = [1 2 3; 4 5 6; 7 8 9]

function out = q1a(I, origF)

  F = rot90(origF);
  F = rot90(F);
  Image = imread(I);
  imageSize = size(Image);
  filterSize = size(F);
  result = zeros(imageSize(1), imageSize(2));
  padded = padarray(Image, [1 1]);

  for n = 1:imageSize(1);
    for m = 1:imageSize(2);
      val = convolution(n, m, F, padded);
      result(n, m) = val;     
    end
  end
  out = result
end


function out = convolution(n, m, F, padded)
  filterSize = size(F);
  val = 0;
  for k = 1:filterSize(1)
  tempm = m;
    for l = 1:filterSize(2)
      val += F(k, l) * padded(n, tempm);
      tempm++;
     end
     n++;
  end
  out = val;
end

