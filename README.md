# Problem description
Write a function wuch takes a matrix as argument and an integer parameter which can be a 1 or a 2.
If the user entered a matrix with a parameter other than 1 or 2 do the following
    if matrix is rectangular (more rows) sum each row with its corresponding index
    if matrix is rectangular (more columns) sum each column with its corresponding index
    if matrix is square transpose with respect to secondary diagonal
If the user enterd a matrix and a paramter 1 or 2 do the following
    if the parameter is 1, sort the diagonal in ascending order and return the input and sorted
        matrices
    if the parameter is 2, sort the diagonal in descending order and return the input and sorted
        matrices

Write a script which on each execution, generates a random matrix and tests all possible cases
    with no paramter entered, just the matrix
        more rows|
        more columns|
        square
    with parameter other than 1 or 2
        more rows|
        more columns|
        square
    with paramter 1
        more rows|
        more columns|
        square
    with paramter 2
        more rows|
        more columns|
        square

*** Side note *
The test cases set above add up to 12. But in the problem only 6 were requested. I am not going to
write code that is not properly tested so I added uncovered cases myself. The ones that were
requested are marked with a "|"
A few things are not mentioned in the testing portion of the problem. What are hard limits on matrix
dimentions? Should they be tested if they are correct in the script or just computed and returned,
then verified by the user?
Additionally, I do not understand some parts of the program. What is "transpose with respect to the
secondary diagonal"?
