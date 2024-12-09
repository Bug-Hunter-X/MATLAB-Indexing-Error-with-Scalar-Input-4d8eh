function result = myFunction(input)
  % This function demonstrates a corrected version of the previous function.
  % It handles both array and scalar inputs correctly.

  if isscalar(input)
    if input > 5
      result = input * 2;
    else
      result = input / 2;
    end
  else
    n = length(input);
    result = zeros(n,1);
    for i = 1:n
      if input(i) > 5
        result(i) = input(i) * 2;
      else
        result(i) = input(i) / 2;
      end
    end
  end
end

% Example usage with an array:
inputArray = [2, 8, 3, 10, 5];
resultArray = myFunction(inputArray);

% Example usage with a scalar:
inputScalar = 7;
resultScalar = myFunction(inputScalar); 