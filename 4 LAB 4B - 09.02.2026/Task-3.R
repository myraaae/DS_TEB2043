#2r 4c 3 tables
Array1 <- array(1:24, dim = c(2, 4, 3))
print("Array1:")
print(Array1)

#3r 5c 5 tables
Array2 <- array(25:54, dim = c(3, 2, 5))
print("Array2:")
print(Array2)

# 2nd row of second matrix from array1
second_row_second_matrix <- Array1[2, , 2]
print("The second row of the second matrix of Array1:")
print(second_row_second_matrix)

# 3rd row 3rd column first matrix array2
element_3rd_row_1st_matrix <- Array2[3, 2, 1]
print("The element in the 3rd row and 3rd column of the 1st matrix of Array2:")
print(element_3rd_row_1st_matrix)
