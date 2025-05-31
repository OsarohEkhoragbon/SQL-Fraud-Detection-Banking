
# SQL-Based Fraud Detection in Banking 🏦🔐

This repository contains a capstone project focused on fraud detection in the banking sector using PostgreSQL. By querying transactional data from a fictional financial institution—**PioneerTrust Bank**—the project uncovers suspicious patterns and provides actionable fraud prevention recommendations.

---

## 📊 Project Overview

**Business Case**  
PioneerTrust Bank was facing an increasing volume of flagged transactions resulting in financial loss and reduced customer trust. This project uses SQL to analyze transaction patterns and support real-time fraud detection.

**Tools Used**  
- PostgreSQL    
- SQL

---

## 🔍 Key Analysis Areas

1. **High-Value Transactions**  
   - Top 5 highest transactions (₦15,000)  
   - Average transaction amount (₦6,650.00)  
   - Outliers exceeding average flagged for review

2. **Repeat Offenders**  
   - Identified customers with multiple flagged transactions  
   - Notable: A user with 5 fraud alerts  
   - Fraud spikes on March 2nd

3. **Location-Based Anomalies**  
   - Customers transacting from 3+ locations in one day  
   - High-risk locations: San Francisco & New York

4. **Transaction Type Analysis**  
   - Flagged deposits exceeded withdrawals  
   - Indicates vulnerabilities in deposit systems

5. **Account Risk Profiling**  
   - Individual accounts flagged more than business accounts  
   - Recommendation: tighten KYC for individual accounts

---

## 📈 Strategic Outcomes

- Behavior-based fraud detection triggers  
- Automated alerts for high-risk transactions  
- Geo-location alerts and time-based fraud insights  
- Improved account monitoring policies

---

## 📂 Files in This Repo

- `PioneerTrust_db case study.sql` – Core SQL queries used for analysis  
- `SQL question screenshots/` – Screenshots of pgAdmin4 results and outputs  
- `SQL_Fraud_Detection_Capstone_Presentation.pdf` – Summary of insights and management recommendations  
- `README.md` – Project overview and documentation

---

## 👤 Author
 
SQL & Data Analytics Enthusiast | Fraud Risk Analyst  
📫 [osarohekhoragbon@gmail.com]  
🔗 [LinkedIn Profile](https://www.linkedin.com/in/osaroh-ekhoragbon/)
📌 [Linkedin Project Link](https://www.linkedin.com/posts/osaroh-ekhoragbon_90daysofconsistency-osarohdataanalyticsjourneywith10alytics-activity-7330250389864316928-hPjG?utm_source=share&utm_medium=member_desktop&rcm=ACoAAAkcTOMBH04A-GBT9XWCy_GRBdwnuvWM7qY)

---

## 📌 License

This project is open for learning and educational purposes. Attribution is appreciated.
