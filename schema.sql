-- Category Table
CREATE TABLE Category (
    Category_ID NUMBER PRIMARY KEY,
    Category_Name VARCHAR2(50)
);
/

-- Member Table
CREATE TABLE Member (
    Member_ID NUMBER PRIMARY KEY,
    Name VARCHAR2(50),
    Email VARCHAR2(50),
    Phone VARCHAR2(20),
    Membership_Date DATE
);
/

-- Book Table
CREATE TABLE Book (
    Book_ID NUMBER PRIMARY KEY,
    Title VARCHAR2(100),
    Author VARCHAR2(100),
    ISBN VARCHAR2(50),
    Category_ID NUMBER,
    CONSTRAINT fk_category FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID)
);
/

-- Librarian Table
CREATE TABLE Librarian (
    Librarian_ID NUMBER PRIMARY KEY,
    Name VARCHAR2(50),
    Contact_Info VARCHAR2(50)
);
/

-- Borrow_Record Table
CREATE TABLE Borrow_Record (
    Borrow_ID NUMBER PRIMARY KEY,
    Member_ID NUMBER,
    Book_ID NUMBER,
    Issue_Date DATE,
    Due_Date DATE,
    Return_Date DATE,
    CONSTRAINT fk_member FOREIGN KEY (Member_ID) REFERENCES Member(Member_ID),
    CONSTRAINT fk_book FOREIGN KEY (Book_ID) REFERENCES Book(Book_ID)
);
/

-- Fine Table
CREATE TABLE Fine (
    Fine_ID NUMBER PRIMARY KEY,
    Borrow_ID NUMBER,
    Amount NUMBER,
    Status VARCHAR2(20),
    CONSTRAINT fk_borrow FOREIGN KEY (Borrow_ID) REFERENCES Borrow_Record(Borrow_ID)
);
/

-- Sequence for Fine
CREATE SEQUENCE Fine_Seq 
START WITH 11 
INCREMENT BY 1;
/

-- Trigger for Fine Calculation
CREATE OR REPLACE TRIGGER Generate_Fine
AFTER UPDATE OF Return_Date ON Borrow_Record
FOR EACH ROW
BEGIN
    IF :NEW.Return_Date > :NEW.Due_Date THEN
        INSERT INTO Fine VALUES(Fine_Seq.NEXTVAL, :NEW.Borrow_ID, 500, 'Unpaid');
    END IF;
END;
/