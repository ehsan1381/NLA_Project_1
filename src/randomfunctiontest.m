% test randomfunction
nRows = 4;
nColumns = 6;

% preconditions
testMat = rand([nRows, nColumns]);

%% Case 1 : Any option, rectangular matrix more rows than columns
option = rand(1);
[outputProcessed, ~] = randomfunction(testMat, option);
assert(outputProcessed == testMat + [1:nRows].', "Case 1 failed")


%% Case 2 : Any option, rectangular matrix, more columns than rows
option = rand(1);
[outputProcessed, ~] = randomfunction(testMat, option);
assert(outputProcessed == testMat + [1:nColumns], "Case 2 failed")


%% Case 3 : Any option, square matrix
testMat = rand([3, 3]);
option = rand(1);
[outputProcessed, ~] = randomfunction(testMat, option);
assert(outputProcessed == flip(flip(testMat, 2).', 2), "Case 3 failed")

%% Case 4 : Option = 1, 
option = 1;
[outputProcessed, ~] = randomfunction(testMat, option);
indices = logical(eye([nRows, nColumns]));
testMat(indices) = sort(diag(testMat));
assert(outputProcessed== testMat, "Case 4 failed")


%% Case 5 : Option = 2
option = 2;
[outputProcessed, outputRaw] = randomfunction(testMat, option);
indices = logical(eye([nRows, nColumns]));
testMat(indices) = sort(diag(testMat), 'descend');
assert(output == testMat, "Case 5 failed")

