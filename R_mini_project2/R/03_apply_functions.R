# ============================================================
# R Mini Project 2 - Part 3: Apply Functions
# ============================================================
# Topics Covered:
#   - apply() on rows and columns
#   - rowMeans() and rowSums()
#   - lapply() with custom functions
#   - apply() with user-defined functions
#   - Modifying data frames using apply()
# ============================================================


# ----------------------------------------------------------
# 1. apply() - Row-wise Statistics
# ----------------------------------------------------------

df <- data.frame(
  var1 = 1:3,
  var2 = 4:6,
  var3 = 7:9,
  var4 = 10:12,
  var5 = 13:15
)
print(df)

# Mean of each row (MARGIN = 1 means rows)
apply(df, 1, mean)
# Output: [1] 7 8 9

# Sum of each row
apply(df, 1, sum)
# Output: [1] 35 40 45

# Standard deviation of each row
apply(df, 1, sd)
# Output: [1] 4.743416 4.743416 4.743416

# Multiply every element in each row by 2
t(apply(df, 1, function(x) x * 2))


# ----------------------------------------------------------
# 2. rowMeans() and rowSums() Shortcuts
# ----------------------------------------------------------

rowMeans(df)
# Output: [1] 7 8 9

rowSums(df)
# Output: [1] 35 40 45


# ----------------------------------------------------------
# 3. lapply() - Apply Function to Each Column (Numeric)
# ----------------------------------------------------------

m <- c(1, 9, 6, 5, 9, 6)
n <- c(8, 2, 3, 6, 4, 3)
o <- c(21, 0, 14, 5, 3, 2)
p <- c(4, 6, 3, 7, 1, 3)

df_num <- data.frame(A = m, B = n, C = o, D = p)

# Custom function: multiply each value by 7 then add 1
magic_fun <- function(x) {
  return(x * 7 + 1)
}

result <- data.frame(lapply(df_num, magic_fun))
print(result)


# ----------------------------------------------------------
# 4. lapply() - Apply Function to Each Column (String)
# ----------------------------------------------------------

m <- c("Vikas", "Varun", "Deepak")
n <- c("Komal", "Suneha", "Priya")

df_str <- data.frame(A = m, B = n)

# Prepend "Hello, " to each name
df_str <- data.frame(lapply(df_str, function(x) paste("Hello,", x, sep = " ")))
print(df_str)


# ----------------------------------------------------------
# 5. apply() - Row-wise Custom Product Function
# ----------------------------------------------------------

x <- c(5, 6, 7, 5, 6, 9)
y <- c(6, 4, 3, 4, 2, 6)
z <- c(1, 2, 3, 7, 8, 9)

df_prod <- data.frame(A = x, B = y, C = z)

# Function to compute product of elements in a row
product <- function(row) {
  A <- row[1]
  B <- row[2]
  C <- row[3]
  return(A * B * C)
}

single <- apply(df_prod, 1, product)

# Add product as a new column
cbind(df_prod, product = single)


# ----------------------------------------------------------
# 6. apply() - Modifying Specific Columns (Subtract 1)
# ----------------------------------------------------------

data_frame <- data.frame(
  col1 = c(1:10),
  col2 = 11:20,
  col3 = c(rep(TRUE, 4), rep(FALSE, 6))
)

print("Original DataFrame")
print(data_frame)

user_defined_func <- function(x) {
  x - 1
}

data_frame_temp <- apply(data_frame[, c(1, 2)], 2, user_defined_func)

print("Modified col1 and col2")
print(data_frame_temp)

# Update only modified columns in the original data frame
data_frame_mod <- data_frame
colnames_all <- colnames(data_frame_mod)
data_frame_mod[, colnames_all %in% colnames(data_frame_temp)] <- data_frame_temp

print("Modified DataFrame")
print(data_frame_mod)


# ----------------------------------------------------------
# 7. apply() - Modifying Multiple Columns (Add 1)
# ----------------------------------------------------------

data_frame2 <- data.frame(
  col1 = c(1:10),
  col2 = 11:20,
  col3 = c(rep(TRUE, 4), rep(FALSE, 6)),
  col4 = 0:9
)

print("Original DataFrame")
print(data_frame2)

user_defined_func2 <- function(x) {
  x + 1
}

data_frame_temp2 <- apply(data_frame2[, 2:4], 2, user_defined_func2)

print("Modified col2, col3, col4")
print(data_frame_temp2)

# Update columns in the original data frame
data_frame_mod2 <- data_frame2
colnames_all2 <- colnames(data_frame_mod2)
data_frame_mod2[, colnames_all2 %in% colnames(data_frame_temp2)] <- data_frame_temp2

print("Modified DataFrame")
print(data_frame_mod2)
