# 🔐 Data Audit & Provenance System (PostgreSQL)

## 📌 Project Overview
The **Data Audit & Provenance System** is a PostgreSQL-based database project designed to **track, monitor, and preserve the history of data changes** in a secure and structured way.  
It records **who performed an action, what action was performed, on which record, and when**, ensuring transparency and accountability.

This type of system is widely used in **fintech, healthcare, SaaS, and compliance-driven applications** where auditability and data integrity are critical.

---

## 🎯 Objectives
- Implement **role-based users** (admin, editor, viewer)
- Store flexible business data using **JSONB**
- Maintain a complete **audit trail** for data operations
- Support reporting and visualization using BI tools (Tableau / Power BI)

---

## 🧱 Database Design

### Tables Used
1. **users**
   - Stores user details and roles
   - Roles: `admin`, `editor`, `viewer`

2. **records**
   - Stores business data in `JSONB` format
   - Each record is owned by a user

3. **audit**
   - Logs all actions performed on records
   - Tracks `insert`, `update`, `delete`, and `view` actions
   - Stores old and new data for full traceability

---

## 🔄 Relationships
- `records.owner_id` → `users.user_id`
- `audit.user_id` → `users.user_id`
- `audit.record_id` → `records.record_id`

These relationships ensure **referential integrity** and accurate tracking of actions.

---

## 📊 Key Features
- Role-based access modeling
- Full audit logging with timestamps
- Old vs new data comparison using JSONB
- SQL reporting queries for insights
- Ready for visualization in Tableau or Power BI

---

## 🧪 Sample Reports
- Users grouped by role
- Top users by number of actions
- Count of insert/update/delete/view operations
- Records updated multiple times
- Complete audit timeline (who did what, when)

---

## 🛠 Tech Stack
- **Database**: PostgreSQL  
- **Query Tool**: pgAdmin 4  
- **Visualization**: Tableau / Power BI  
- **Language**: SQL  

---

## 🚀 How to Run
1. Create tables using SQL scripts (`users`, `records`, `audit`)
2. Insert sample data
3. Execute report queries (`reports.sql`)
4. Connect database to Tableau or Power BI for visualization

---

## 👨‍💻 Skills Demonstrated
- Relational database design
- Foreign keys & constraints
- JSONB data handling
- Audit & compliance concepts
- Intermediate SQL querying
- Real-world data modeling

---

## 📌 Use Cases
- Financial transaction auditing
- Healthcare data compliance
- Change tracking in enterprise systems
- Activity monitoring in SaaS platforms

---

## 📎 Conclusion
This project demonstrates how **PostgreSQL** can be used to build a **robust audit and provenance system**, showcasing practical SQL skills aligned with real-world industry requirements.

## 🧑‍💻Author
### SAKTHIVEL R
### B.TECH/IT
