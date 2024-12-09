function result = myFunction(input)
  % This function demonstrates an uncommon MATLAB error related to incorrect indexing.
  % The error arises when the input is a scalar, leading to an empty matrix in the loop.

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

% Example usage with an array:
inputArray = [2, 8, 3, 10, 5];
resultArray = myFunction(inputArray);

% Example usage with a scalar - this causes the problem:
inputScalar = 7;
resultScalar = myFunction(inputScalar);