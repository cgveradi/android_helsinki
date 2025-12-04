# Mobile App Market Research Project

---

# 🟦 Day 1 – Project Initiation & Data Selection

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

We selected the following dataset from Kaggle:

### 📊 Google Play Store Apps

https://www.kaggle.com/datasets/lava18/google-play-store-apps

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

Before jumping into the analysis, we defined the main business questions and hypotheses.

### ⭐ Business Questions:

1. **Will our mobile game be profitable?**  
   Should it be free with in-app purchases, or paid?

2. **Is there market space for the type of game we want to build?**

3. **Which game genre should we develop?**  
   (Action, Sports, RPG, Casual, etc.)

4. **Which gender/category is the most profitable?**

5. **Who is the target audience?**  
   (Based on Content Rating: Everyone, Teen, Mature, etc.)

6. **Is there a correlation between Installs and Reviews?**  
   (More reviews → more installs?)

These questions guide the rest of the analysis.

---

# 🟩 Day 2 – Data Examination & Schema Design

## 1. Database Design & Creation

On Day 2, our focus shifted to **understanding the dataset in depth** and designing a database that reflects the relationships between the different fields.

Key steps included:

- **Data Exploration:**  
  We carefully examined each column in the dataset to understand its meaning, type, and potential role in analysis.

- **Entity-Relationship Modeling (ERD):**  
  Using tools like **Miro** ([Miro Board](https://miro.com/app/board/uXjVJh0vKFQ=/)), we sketched a **visual ERD**, identifying:

  - Primary keys for each table
  - Foreign key relationships between tables
  - Logical connections and dependencies between different data entities

- **Database Creation:**  
  The ERD was translated into a **functional relational database** using **DrawDB** ([DrawDB Editor](https://www.drawdb.app/editor)).  
  We ensured that:
  - Each column had the proper **data type** (e.g., `VARCHAR`, `INT`, `DECIMAL`)
  - Keys and constraints were correctly defined to **maintain data integrity**

---

## 2. Data Transformation

Before loading the data into the database, we performed **data wrangling** to prepare it for analysis:

- Cleaned inconsistent values (e.g., `$` signs in prices, commas in installs)
- Converted columns to proper data types (numeric, categorical, text)
- Standardized textual data for consistency (e.g., app categories, content ratings)
- Handled missing or null values where necessary

This ensured that the database would be **consistent, reliable, and ready for querying**.

---

## 3. Data Loading

Once transformed, the sanitized data was **imported into the database**, taking care to:

- Uphold structural integrity (matching the ERD schema)
- Maintain **data accuracy**
- Ensure referential integrity between related tables

This completed the initial **Extract-Transform-Load (ETL) cycle**, setting the foundation for in-depth analysis in subsequent days.

---

# 🟨 Day 3 – SQL Queries & Analysis

## 1. Objective

On Day 3, our focus was on **deriving insights from the database** using SQL.  
The goal was to explore patterns, identify trends, and answer the business questions we defined in **Day 1**.

---

## 2. SQL Techniques Used

To analyze the data effectively, we leveraged a variety of SQL functionalities:

- **JOINs:**  
  Combined multiple tables to gather all relevant information in a single query (e.g., linking apps to categories, installs, and reviews).

- **GROUP BY:**  
  Aggregated data by categories such as `App Category`, `Content Rating`, or `Type` to calculate metrics like total installs, average ratings, or average reviews.

- **ORDER BY:**  
  Ranked apps or categories based on specific metrics (e.g., most popular apps, highest-rated genres).

- **CASE Statements:**  
  Created conditional logic to categorize data (e.g., grouping apps as "Free" vs "Paid" or rating tiers).

- **Subqueries:**  
  Extracted insights from nested queries, such as comparing category averages to overall averages.

- **Aggregations & Statistics:**  
  Used functions like:
  - `AVG()` → average ratings or installs
  - `MAX()` / `MIN()` → highest and lowest performing apps
  - `COUNT()` → number of apps per category
  - `STD()` → variability of installs or reviews

---

## 3. Key Queries and Insights

Some examples of queries executed:

- **Most Popular Categories:**  
  Identified categories with the **highest number of installs** and reviews to detect market demand.

- **Monetization Analysis:**  
  Compared **free vs paid apps** and analyzed the distribution of prices to assess profitability potential.

- **Correlation Analysis:**  
  Investigated the relationship between **number of installs and reviews**, helping predict app success.

- **Content Rating Insights:**  
  Analyzed target audiences based on **Content Rating** to understand which age groups are most engaged with different app genres.

- **Category-Level Statistics:**  
  Calculated **mean, max, min, and standard deviation** for installs, ratings, and reviews across categories to identify high-performing segments.

---

## 4. Outcome

The SQL analysis provided **actionable insights** to guide our mobile game development strategy:

- The most popular categories and genres
- The optimal monetization model (free with in-app purchases or paid)
- The target audience and content rating for our game
- How installs, reviews, and ratings correlate to predict app success

These results form the foundation for further analysis using **Python** and data visualization in the next phase of the project.
