function [ outputProcessed, outputRaw ] = randomfunction(inputMat, option)
  arguments
    inputMat (:, :) double
    option (1, 1) double {mustBeNumeric} = 0
  end % arguments

  [nRows, nColumns] = size(inputMat);
  outputRaw = inputMat;
  switch option
    case 1
      indices = logical(eye([nRows, nColumns]));
      outputProcessed = inputMat;
      outputProcessed(indices) = sort(diag(inputMat));

    case 2
      indices = logical(eye([nRows, nColumns]));
      outputProcessed = inputMat;
      outputProcessed(indices) = sort(diag(inputMat), 'descend');

    otherwise
      if nRows > nColumns
        outputProcessed = inputMat + transpose(1:nRows);

      elseif nColumns > nRows
        outputProcessed = inputMat + [1:nColumns];
      else
        outputProcessed = flip(flip(inputMat, 2).', 2);
      end % if
  end % switch

end % function
