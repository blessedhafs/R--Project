# Vector Selection
scores[1]
scores[5]
scores[10]

scores[c(1, 5, 10)]



# Matrix

# Matrix transpose

A <- matrix(c(1,3,5,2,4,6), nrow=2, ncol=3, byrow=TRUE)
A_transpose <- t(A)
A_transpose


#2  Matrix Inverse Multiplication
A <- matrix(c(4,7,2,6), nrow=2, ncol=2, byrow=TRUE)
B <- matrix(c(3,5,1,2), nrow=2, ncol=2, byrow=TRUE)

A_inverse = solve(A)
new_matrix=A_inverse %*% B
new_matrix


  
# Examining the airquality dataset.
my_data = airquality

# Select the first three columns.
my_data[1:3, ]

# Select rows 1-3 and columns 1 and 3.
my_data[1:3, c(1,3)]

# Select rows 1-5 and column 1.
my_data[1:5, 1]

# Select the first row.
my_data[1]

# Select the first 6 rows 
my_data[1:6, ]



