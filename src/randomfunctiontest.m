%% Case 1 : Random option, rectangular matrix more rows than columns
nRows = 6;
nColumns = 4;
option = rand(1);
testMat = rand([nRows, nColumns]);
[outputProcessed, ~] = randomfunction(testMat, option);

for iRow = 1:nRows
  for iColumn = 1:nColumns
    testMat(iRow, iColumn) = testMat(iRow, iColumn) + iRow;
  end % for iColumn
end % for iRow

assert(isequal(outputProcessed, testMat));


%% Case 2 : Random option, rectangular matrix, more columns than rows
option = rand(1);
nRows = 4;
nColumns = 6;
testMat = rand([nRows, nColumns]);
[outputProcessed, ~] = randomfunction(testMat, option);

for iColumn = 1:nColumns
  for iRow = 1:nRows
    testMat(iRow, iColumn) = testMat(iRow, iColumn) + iColumn;
  end % for iRow
end % for iColumn

assert(isequal(outputProcessed, testMat));



%% Case 3 : Random option, square matrix
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

nDiagonal = min([nRows, nColumns]);
diagonal = zeros([nDiagonal, 1]);

for i=1:nDiagonal
  diagonal(i) = testMat(i, i);
end % for

diagonal = sort(diagonal);
assert(isequal(diag(outputProcessed), diagonal));


%% Case 5 : Option = 2
option = 2;
nRows = 6;
nColumns = 4;
testMat = rand([nRows, nColumns]);
nDiagonal = min([nRows, nColumns]);
diagonal = zeros([nDiagonal, 1]);

for i=1:nDiagonal
  diagonal(i) = testMat(i, i);
end % for
[outputProcessed, ~] = randomfunction(testMat, option);
diagonal = sort(diagonal, 'descend');
assert(isequal(diag(outputProcessed), diagonal));


%% Case 6 : No option, rectangular matrix more rows than columns
nRows = 6;
nColumns = 4;
testMat = rand([nRows, nColumns]);
[outputProcessed, ~] = randomfunction(testMat);

for iRow = 1:nRows
  for iColumn = 1:nColumns
    testMat(iRow, iColumn) = testMat(iRow, iColumn) + iRow;
  end % for iColumn
end % for iRow

assert(isequal(outputProcessed, testMat));



%% Case 7 : No option, rectangular matrix, more columns than rows
nRows = 4;
nColumns = 6;
testMat = rand([nRows, nColumns]);
[outputProcessed, ~] = randomfunction(testMat);

for iColumn = 1:nColumns
  for iRow = 1:nRows
    testMat(iRow, iColumn) = testMat(iRow, iColumn) + iColumn;
  end % for iRow
end % for iColumn

assert(isequal(outputProcessed, testMat));



%% Case 8 : No option, square matrix
testMat = rand([3, 3]);
[outputProcessed, ~] = randomfunction(testMat);
assert(isequal(outputProcessed, flip(flip(testMat, 2).', 2)))
