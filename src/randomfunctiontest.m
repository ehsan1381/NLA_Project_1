

%% Case 1 : Any option, rectangular matrix more rows than columns
testMat = random([3, 2]);
option = random(1);
output = randomfunction(testMat, option);
assert(output == testMat + [1, 2, 3].', "Case 1 failed")


%% Case 2 : Any option, rectangular matrix, more columns than rows
testMat = random([2, 3]);
option = random(1);
output = randomfunction(testMat, option);
assert(output == testMat + [1, 2, 3], "Case 2 failed")


%% Case 3 : Any option, square matrix
testMat = random([3, 3]);
option = random(1);
output = randomfunction(testMat, option);
assert(output == flip(flip(testMat, 2).', 2), "Case 2 failed")

%% Case 4 : Option = 1, 
