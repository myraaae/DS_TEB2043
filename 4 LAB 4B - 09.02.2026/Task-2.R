#vector
V1 <- c(2, 3, 1, 5, 4, 6, 8, 7, 9)

#3x3 matrix
Matrix1 <- matrix(V1, nrow = 3, ncol = 3, byrow = TRUE)
print("Matrix-1:")
print(Matrix1)

#transpose matrix1 -> matrix2
Matrix2 <- t(Matrix1)
print("Matrix-2 (Transpose of Matrix-1):")
print(Matrix2)

rownames(Matrix1) <- paste("Row", 1:3, sep = "_")
colnames(Matrix1) <- paste("Col", 1:3, sep = "_")

rownames(Matrix2) <- paste("Row", 1:3, sep = "_")
colnames(Matrix2) <- paste("Col", 1:3, sep = "_")

print("Matrix-1 with row and column names:")
print(Matrix1)
print("Matrix-2 with row and column names:")
print(Matrix2)

#operations
AddMatrix <- Matrix1 + Matrix2
print("Matrix Addition:")
print(AddMatrix)

SubMatrix <- Matrix1 - Matrix2
print("Matrix Subtraction:")
print(SubMatrix)

MulMatrix <- Matrix1 * Matrix2
print("Matrix Multiplication (element-wise):")
print(MulMatrix)

DivMatrix <- Matrix1 / Matrix2
print("Matrix Division (element-wise):")
print(DivMatrix)