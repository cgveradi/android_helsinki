# Mobile App Market Research Project

---

# Day 1 – Project Initiation & Data Selection

## 1. Project Kickoff

Our team is launching a new startup focused on creating mobile applications. As part of our initial market research, we aim to analyze the Google Play Store ecosystem to understand:

- Which app categories are the most popular
- What monetization models work best (free vs. paid)
- Which genres are more profitable
- What audiences are most active
- Whether a new game idea has market potential

This project will combine **data analytics, Python, and SQL** to extract meaningful insights.

---

## 2. Dataset Selection

### 📊 Google Play Store Apps

Dataset: _lava18/google-play-store-apps_

This dataset provides detailed information about thousands of Android apps, including:

- App name
- Category
- Rating
- Reviews
- Installs
- Type (Free or Paid)
- Price
- Content Rating
- Genres

This dataset is ideal for performing market research and validating our business hypotheses.

---

## 3. Business Framing

### Business Questions:

1. **Will our mobile game be profitable?**
2. **Is there market space for the type of game we want to build?**
3. **Which game genre should we develop?**
4. **Which category or genre is the most profitable?**
5. **Who is the target audience?**
6. **Is there a correlation between Installs and Reviews?**

These questions guide the rest of the analysis.

---

# Day 2 – Data Examination & Schema Design

## 1. Database Design & Creation

On Day 2, we focused on understanding the dataset and designing a database that reflects its internal structure.

Key steps included:

- **Data Exploration:** analyzing column meanings, data types, and potential analytical value.
- **ERD Modeling:** designing a relational schema with primary keys, foreign keys, and correct relationships.
- **Database Creation:** implementing the ERD using DrawDB with proper datatypes and constraints.

---

## 2. Data Transformation

Before loading the data, we cleaned and prepared it:

- Removed characters like `$`, `+`, and commas
- Converted columns to consistent numeric or categorical formats
- Standardized text fields
- Handled missing or null values

This ensured cleaner and more reliable data.

---

## 3. Data Loading

We then imported the transformed dataset into MySQL while ensuring:

- Structural integrity
- Accurate mapping of each field
- Correct referential integrity

This completed the ETL process.

---

# Day 3 – SQL Queries & Analysis

## 1. Objective

On Day 3, we used SQL to extract insights and answer the business questions defined earlier.

---

## 2. SQL Techniques Used

- **JOINs**
- **GROUP BY**
- **ORDER BY**
- **CASE**
- **Subqueries**
- **Aggregation Functions** (`AVG`, `MAX`, `MIN`, `COUNT`, `STD`)

---

## Major Obstacles During MySQL Transition

During the SQL phase, we encountered significant challenges:

- **Data Corruption & Schema Mismatches:**  
  Imports caused missing or malformed data because CSV structure didn’t perfectly match the database schema.

- **ERD Redesigns:**  
  We had to rebuild the schema multiple times due to mismatched relationships, missing fields, and inconsistencies.

- **Complex Data Cleaning:**  
  Required extensive normalization, deduplication, formatting fixes, and dealing with inconsistent values.

These issues made MySQL integration slow and unstable.

---

# Day 4 - Contingency Plan — Switching to Python

Due to persistent MySQL problems, we adopted a contingency plan:  
➡️ perform the analytical work entirely in **Python (pandas)**.

Python allowed us to:

- Load data reliably
- Clean and transform without schema conflicts
- Perform SQL-equivalent operations
- Avoid delays caused by repeated schema rebuilding

### Examples of analyses performed in Python:

- Most popular categories
- Free vs. paid monetization analysis
- Correlation (installs vs. reviews)
- Content rating insights
- Category-level statistics (mean, max, min, std)

---

# Outcome — Strategic Direction for Our Startup

### Key Findings

- **Focus on developing Android games** — strong demand.
- **Free-to-play model with in-app purchases** — best revenue potential.
- **Target broad audiences** (Everyone 10+ and Teen).
- **Develop an educational game** supported by learning tools.
- **Prioritize user acquisition, retention, and engagement.**

---
