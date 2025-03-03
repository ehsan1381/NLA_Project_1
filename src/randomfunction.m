function [ outputProcessed, outputRaw ] = randomfunction(inputMat, option)
  arguments
    inputMat (:, :) double
    option (1, 1) double {mustBeNumeric}
  end % arguments

[nRows, nColumns] = size(inputMat);
outputRaw = inputMat;
switch option
    case 1
        % put an algorithm here
        indices = logical(eye([nRows, nColumns]));
        outputProcessed = inputMat;
        outputProcessed(indices) = sort(diag(inputMat));
    
    case 2
        % put an algorithm here
        indices = logical(eye([nRows, nColumns]));
        outputProcessed = inputMat;
        outputProcessed(indices) = sort(diag(inputMat), 'descend');
    
    otherwise
        if nRows > nColumns
            % put an algorithm here
            outputProcessed = inputMat + transpose(1:nRows);

        elseif nColumns > nRows
            % put an algorithm here
            outputProcessed = inputMat + [1:nColumns];
        else
            % put an algorithm here
            outputProcessed = flip(flip(inputMat, 2).', 2);
        end
end

end % function
