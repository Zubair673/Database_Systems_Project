-- Categories
INSERT INTO Category VALUES (1, 'Computer Science');
INSERT INTO Category VALUES (2, 'Mathematics');
INSERT INTO Category VALUES (3, 'Physics');
INSERT INTO Category VALUES (4, 'History');
/

-- Members
INSERT INTO Member VALUES (101, 'Ali Khan', 'ali@example.com', '03001234567', SYSDATE);
INSERT INTO Member VALUES (102, 'Sara Ahmed', 'sara@example.com', '03007654321', SYSDATE);
INSERT INTO Member VALUES (103, 'Zubair Ahmad', 'zubair@example.com', '03331112233', SYSDATE);
INSERT INTO Member VALUES (104, 'Fatima Noor', 'fatima@example.com', '03445556677', SYSDATE);
/

-- Books
INSERT INTO Book VALUES (1, 'Database Systems', 'Silberschatz', 'ISBN001', 1);
INSERT INTO Book VALUES (2, 'Calculus', 'Stewart', 'ISBN002', 2);
INSERT INTO Book VALUES (3, 'Quantum Mechanics', 'Griffiths', 'ISBN003', 3);
INSERT INTO Book VALUES (4, 'World War II', 'Churchill', 'ISBN004', 4);
INSERT INTO Book VALUES (5, 'Data Structures', 'Cormen', 'ISBN005', 1);
/

-- Librarian
INSERT INTO Librarian VALUES (1, 'Admin', 'admin@library.com');
/

-- Borrow Records
INSERT INTO Borrow_Record VALUES (10, 101, 1, SYSDATE, SYSDATE + 7, NULL);
INSERT INTO Borrow_Record VALUES (11, 102, 3, SYSDATE - 10, SYSDATE - 3, SYSDATE - 2);
INSERT INTO Borrow_Record VALUES (12, 103, 4, SYSDATE - 5, SYSDATE + 2, NULL);
/