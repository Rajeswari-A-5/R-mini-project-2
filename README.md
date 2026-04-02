# 🎯 R Mini Project 2
## 📊 Data Frames • 🔗 Merging • ⚙️ Apply Functions

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:4B79A1,100:283E51&height=200&section=header&text=R%20Mini%20Project%202&fontSize=35&fontColor=ffffff"/>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/R-Programming-blue?style=for-the-badge&logo=r"/>
  <img src="https://img.shields.io/badge/Level-Beginner--Intermediate-orange?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Project-Academic-purple?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge"/>
</p>

---

## ✨ About the Project

💡 This project is a **beginner-to-intermediate R programming lab** covering:

- 📊 Data Frame operations  
- 🔗 Data merging techniques  
- ⚙️ Apply family functions  

🎯 Designed for:
- 🎓 Students  
- 📊 Data Science beginners  
- 💻 R programming learners  

---

## 🗂️ Project Structure
R_mini_project2/
── main.R 🚀 Run everything
── R/
│ ── 01_dataframes.R 📊 Data handling
│ ── 02_merging_dataframes.R 🔗 Joins & merging
│ ── 03_apply_functions.R ⚙️ Apply functions
── data/ 📁 Dataset storage (optional)
── outputs/ 📈 Results / plots (optional)
── README.md 📄 Documentation

---

## 📚 Concepts Covered

### 📊 Data Frames
- Create → `data.frame()`
- View structure → `str()`
- Summary statistics → `summary()`
- Access columns → `$`, `[[]]`, `[]`
- Count columns → `length()`
- Dimensions → `dim()`
- Add column → `cbind()`
- Remove row → `subset()`

---

### 🔗 Merging Data Frames
- Inner Join → `merge(x, y, by=...)`
- Full Outer Join → `merge(x, y, by=..., all=TRUE)`
- Left Join → `merge(x, y, by=..., all.x=TRUE)`
- Right Join → `merge(x, y, by=..., all.y=TRUE)`
- Cross Join → `merge(x, y, by=NULL)`
- Semi Join → `dplyr::semi_join()`
- Anti Join → `dplyr::anti_join()`
- Replace NA → `data[is.na(data)] <- 0`

---

### ⚙️ Apply Functions
- Row-wise → `apply(df, 1, fn)`
- Column-wise → `apply(df, 2, fn)`
- Fast aggregation → `rowMeans()`, `rowSums()`
- Apply to columns → `lapply(df, fn)`
- Return as data frame → `data.frame(lapply(...))`

---

## 🚀 How to Run

### ▶️ Run Full Project
```r
source("main.R")
```

###👩‍💻 Author
```
Rajeswari A
🎓 Academic Mini Project
