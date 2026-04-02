# ============================================================
# R Mini Project 2 - Part 2: Merging Data Frames
# ============================================================
# Topics Covered:
#   - Inner Join
#   - Outer (Full) Join
#   - Left Join
#   - Right Join
#   - Cross Join
#   - Semi Join (dplyr)
#   - Anti Join (dplyr)
#   - Merging with NA handling
# ============================================================


# ----------------------------------------------------------
# Setup: Base Data Frames
# ----------------------------------------------------------

personal_details <- data.frame(
  Student_ID = c(1:5),
  Name       = c("Siddhi", "Jessica", "Nisarg", "Vishal", "Fredo"),
  Address    = c("Mumbai", "Mumbai", "Pune", "Madgaon", "Nashik")
)

courses <- data.frame(
  Student_ID = c(2, 3, 5, 8),
  Course     = c("Chemistry", "Physics", "Computer Science", "History")
)

print(personal_details)
print(courses)


# ----------------------------------------------------------
# 1. Inner Join
# ----------------------------------------------------------

inner <- merge(x = personal_details, y = courses, by = "Student_ID")
print(inner)
# Returns only rows with matching Student_ID in both frames


# ----------------------------------------------------------
# 2. Outer (Full) Join
# ----------------------------------------------------------

outer <- merge(x = personal_details, y = courses,
               by = "Student_ID", all = TRUE)
print(outer)
# Returns all rows from both frames; NAs where no match


# ----------------------------------------------------------
# 3. Left Join
# ----------------------------------------------------------

left <- merge(x = personal_details, y = courses,
              by = "Student_ID", all.x = TRUE)
print(left)
# Returns all rows from personal_details; NAs for unmatched courses


# ----------------------------------------------------------
# 4. Right Join
# ----------------------------------------------------------

right <- merge(x = personal_details, y = courses,
               by = "Student_ID", all.y = TRUE)
print(right)
# Returns all rows from courses; NAs for unmatched personal_details


# ----------------------------------------------------------
# 5. Cross Join
# ----------------------------------------------------------

df2 <- merge(x = personal_details, y = courses, by = NULL)
print(df2)
# Cartesian product: every row in personal_details × every row in courses


# ----------------------------------------------------------
# 6. Semi Join and Anti Join (using dplyr)
# ----------------------------------------------------------

library(dplyr)

# Employee and Department data frames
emp_df <- data.frame(
  emp_id         = c(1, 2, 3, 4, 5, 6),
  name           = c("Smith", "Rose", "Williams", "Jones", "Brown", "Brown"),
  superior_emp_id = c(-1, 1, 1, 2, 2, 2),
  dept_id        = c(10, 20, 10, 10, 40, 50)
)

dept_df <- data.frame(
  dept_id   = c(10, 20, 30, 40),
  dept_name = c("Finance", "Marketing", "Sales", "IT")
)

print(emp_df)
print(dept_df)

# Semi Join: employees whose dept_id exists in dept_df
semi_result <- emp_df %>% semi_join(dept_df, by = "dept_id")
print(semi_result)

# Anti Join: employees whose dept_id does NOT exist in dept_df
anti_result <- emp_df %>% anti_join(dept_df, by = "dept_id")
print(anti_result)


# ----------------------------------------------------------
# 7. Merging with NA Handling
# ----------------------------------------------------------

data1 <- data.frame(
  id    = c(1, 2, 3, 4, 5),
  age   = c(12, 23, 21, 23, 21),
  marks = c(100, 90, 98, 87, 80)
)

data2 <- data.frame(
  id    = c(3, 4, 5, 6, 7),
  age   = c(12, 23, 56, 67, 48),
  marks = c(60, 90, 91, 87, 80)
)

# Full merge
data <- merge(data1, data2, by = "id", all = TRUE)
print(data)

# Replace NA with 0
data[is.na(data)] <- 0
print(data)
