# Problem description
1. Write a function which takes a matrix as argument and an integer as parameter which can be a 1 or a 2. If the user entered a matrix with a parameter other than 1 or 2 do the following:
 	- If matrix is rectangular (more rows), add to each row its corresponding row index
 	- If matrix is rectangular (more columns), add to each column its corresponding column index
 	- If matrix is square, transpose with respect to secondary diagonal
	- If the user enterd a matrix and a paramter 1 or 2, do the following
 		- If the parameter is 1, sort the diagonal in ascending order, then return the input and sorted matrices
 		- If the parameter is 2, sort the diagonal in descending order, then return the input and sorted matrices
2. Write a script which generates a random matrix and tests all possible cases
	- with no parameter entered, just the matrix
 		- more rows🉑
 		- more columns🉑
 		- square
	- with parameter other than 1 or 2
 		- more rows🉑
 		- more columns🉑
 		- square
	- with parameter 1
		- more rows🉑
 		- more columns🉑
 		- square
	- with parameter 2
 		- more rows🉑
 		- more columns🉑
 		- square

# Side note
The test cases set above add up to 12, but in the problem statement only 6 were requested. I am not going to write code that is not properly tested so I added uncovered cases myself. The ones that were requested are marked with "🉑". \

# Submitted solution
The function body is quite straightforward. Each part of the program is written as requested using matlab's built-in functions instead of writing loops and local functions for each.\
The first choice that might sound odd is that "option" in the program is an argument with a default value so the program will function as intended if nothing is passed for this argument. We could of course use "nargin" to check the number of input arguments and base the rest of the code around if statements, but it is not very hard to see that such a program would have many nested cases. This way, however, we only reach a maximum of 2 levels of nesting when ignoring the function itself.\
The "arguments" block is used to verify the type of the matrix and option. This is used so that if any other data type is passed, the program will return an error halt.\
The indices array is initiated only when it is needed. Although we could initiate it before the switch-case, doing so would mean unneccesary usage a lot of memmory for default case.
