# ============================================================
# R Mini Project 2 - Part 1: Data Frames
# ============================================================
# Topics Covered:
#   - Creating data frames
#   - Viewing structure and summary
#   - Accessing columns
#   - Finding length and dimensions
#   - Adding columns (cbind)
#   - Removing rows (subset)
# ============================================================


# ----------------------------------------------------------
# 1. Basic Data Frame Creation
# ----------------------------------------------------------

dataframe1 <- data.frame(
  Name = c("Juan", "Alcaraz", "Simantha"),
  Age  = c(22, 15, 19),
  Vote = c(TRUE, FALSE, TRUE)
)
print(dataframe1)
# Output:
#       Name Age  Vote
# 1     Juan  22  TRUE
# 2  Alcaraz  15 FALSE
# 3 Simantha  19  TRUE


# ----------------------------------------------------------
# 2. Structure of a Data Frame (str)
# ----------------------------------------------------------

emp.data <- data.frame(
  emp_id   = c(1:5),
  emp_name = c("Rick", "Dan", "Michelle", "Ryan", "Gary"),
  salary   = c(623.3, 515.2, 611.0, 729.0, 843.25)
)
str(emp.data)
# Output:
# 'data.frame': 5 obs. of 3 variables:
#  $ emp_id  : int  1 2 3 4 5
#  $ emp_name: chr  "Rick" "Dan" "Michelle" "Ryan" ...
#  $ salary  : num  623 515 611 729 843


# ----------------------------------------------------------
# 3. Summary of a Data Frame
# ----------------------------------------------------------

emp.data <- data.frame(
  emp_id     = c(1:5),
  emp_name   = c("Rick", "Dan", "Michelle", "Ryan", "Gary"),
  salary     = c(623.3, 515.2, 611.0, 729.0, 843.25),
  start_date = as.Date(c("2012-01-01", "2013-09-23",
                          "2014-11-15", "2014-05-11",
                          "2015-03-27")),
  stringsAsFactors = FALSE
)
print(summary(emp.data))


# ----------------------------------------------------------
# 4. Accessing Columns
# ----------------------------------------------------------

dataframe1 <- data.frame(
  Name = c("Juan", "Alcaraz", "Simantha"),
  Age  = c(22, 15, 19),
  Vote = c(TRUE, FALSE, TRUE)
)

# Using index number
print(dataframe1[1])

# Using column name with [[ ]]
print(dataframe1[["Name"]])

# Using $ operator
print(dataframe1$Name)


# ----------------------------------------------------------
# 5. Length of a Data Frame (number of columns)
# ----------------------------------------------------------

cat("Total Elements:", length(dataframe1))
# Output: Total Elements: 3


# ----------------------------------------------------------
# 6. Dimensions of a Data Frame
# ----------------------------------------------------------

friend.data <- data.frame(
  friend_id   = c(1:5),
  friend_name = c("Sachin", "Sourav", "Dravid", "Sehwag", "Dhoni"),
  stringsAsFactors = FALSE
)
dim(friend.data)
# Output: [1] 5 2


# ----------------------------------------------------------
# 7. Adding a New Column (cbind)
# ----------------------------------------------------------

Products <- data.frame(
  Product_ID   = c(101, 102, 103),
  Product_Name = c("T-Shirt", "Jeans", "Shoes"),
  Price        = c(15.99, 29.99, 49.99),
  Stock        = c(50, 30, 25)
)

cat("Existing dataframe (Products):\n")
print(Products)

Discount <- c(5, 10, 8)
Products <- cbind(Products, Discount)
colnames(Products)[ncol(Products)] <- "Discount"

cat("\nUpdated dataframe after adding 'Discount' column:\n")
print(Products)


# ----------------------------------------------------------
# 8. Removing a Row (subset)
# ----------------------------------------------------------

data <- data.frame(
  friend_id   = c(1, 2, 3, 4, 5),
  friend_name = c("Sachin", "Sourav", "Dravid", "Sehwag", "Dhoni"),
  location    = c("Kolkata", "Delhi", "Bangalore", "Hyderabad", "Chennai")
)
print(data)

# Remove row where friend_id == 3
data <- subset(data, friend_id != 3)
print(data)
