%% Case 1 : Any option, rectangular matrix more rows than columns
nRows = 6;
nColumns = 4;
option = rand(1);
testMat = rand([nRows, nColumns]);
[outputProcessed, ~] = randomfunction(testMat, option);
assert(isequal(outputProcessed, testMat + transpose(1:nRows)))


%% Case 2 : Any option, rectangular matrix, more columns than rows
option = rand(1);
nRows = 4;
nColumns = 6;
testMat = rand([nRows, nColumns]);
[outputProcessed, ~] = randomfunction(testMat, option);
assert(isequal(outputProcessed, testMat + [1:nColumns]))


%% Case 3 : Any option, square matrix
testMat = rand([3, 3]);
option = rand(1);
[outputProcessed, ~] = randomfunction(testMat, option);
assert(isequal(outputProcessed, flip(flip(testMat, 2).', 2)))

%% Case 4 : Option = 1, 
option = 1;
nRows = 6;
nColumns = 4;
testMat = rand([nRows, nColumns]);
[outputProcessed, ~] = randomfunction(testMat, option);
indices = logical(eye([nRows, nColumns]));
testMat(indices) = sort(diag(testMat));
assert(isequal(outputProcessed, testMat))


%% Case 5 : Option = 2
option = 2;
nRows = 6;
nColumns = 4;
testMat = rand([nRows, nColumns]);
[outputProcessed, ~] = randomfunction(testMat, option);
indices = logical(eye([nRows, nColumns]));
testMat(indices) = sort(diag(testMat), 'descend');
assert(isequal(outputProcessed, testMat))

