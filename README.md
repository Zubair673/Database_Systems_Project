# Database_Systems_Project
A comprehensive Library Information System implemented in Oracle SQL, featuring normalized schema (3NF), automated fine calculation via triggers, and sequence management for efficient library operations.
# Library Information System

## Project Overview
This project is a database solution developed for the Database Systems course at IIUI. It is designed to automate and streamline core library operations, including book tracking, member records, borrowing transactions, and late-return fine management.

## Key Features
- **Normalized Design:** Database schema normalized up to the Third Normal Form (3NF).
- **Automation:** Uses Database Triggers (`Generate_Fine`) to automatically calculate and insert fines for late book returns.
- **Data Integrity:** Efficient management of relationships between Books, Members, Categories, and Borrowing records.
- **Oracle SQL:** Implemented using advanced SQL objects including Sequences, Foreign Keys, and DML operations.

## Database Objects
- **Tables:** MEMBER, CATEGORY, BOOK, LIBRARIAN, BORROW_RECORD, FINE.
- **Automation:** - `Fine_Seq`: Sequence for unique fine ID generation.
    - `Generate_Fine`: Trigger to handle penalty logic automatically.

## Contents
- `schema.sql`: Contains the DDL scripts to create the entire database structure.
- `data.sql`: Contains the DML scripts to populate the database with initial records.
- `IDS_Final_Project_Report.pdf`: The complete project documentation, including EER diagram and relational schema.

## Authors
Developed by:
- M Zubair Rauf
- Syed Muhammad Taha
- Sherjeel Zafar
- Kaleem ullah Shah
