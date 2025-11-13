CREATE TABLE Book (
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(200) NOT NULL,
  author VARCHAR(150),
  publisher VARCHAR(150),
  year_published YEAR,
  isbn VARCHAR(20) UNIQUE,
  available_copies INT NOT NULL DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- 3. Members table
CREATE TABLE Member (
  member_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100),
  email VARCHAR(150) UNIQUE,
  phone VARCHAR(20),
  address VARCHAR(255),
  membership_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- 4. Loans table
CREATE TABLE Loan (
  loan_id INT AUTO_INCREMENT PRIMARY KEY,
  book_id INT NOT NULL,
  member_id INT NOT NULL,
  loan_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- corrected
  due_date DATE NOT NULL,
  return_date DATE,
  status ENUM('BORROWED','RETURNED','OVERDUE') DEFAULT 'BORROWED',
  FOREIGN KEY (book_id) REFERENCES Book(book_id)
    ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (member_id) REFERENCES Member(member_id)
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

-- 5. Staff table
CREATE TABLE Staff (
  staff_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL,
  email VARCHAR(150) UNIQUE,
  role ENUM('ADMIN','LIBRARIAN') DEFAULT 'LIBRARIAN',
  hired_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- corrected
) ENGINE=InnoDB;

-- 6. Fines table
CREATE TABLE Fine (
  fine_id INT AUTO_INCREMENT PRIMARY KEY,
  loan_id INT UNIQUE,
  amount DECIMAL(8,2) NOT NULL CHECK (amount >= 0),
  paid BOOLEAN DEFAULT FALSE,
  FOREIGN KEY (loan_id) REFERENCES Loan(loan_id)
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

-- 7. Sample Data Inserts
-- Books
INSERT INTO Book (title, author, publisher, year_published, isbn, available_copies) VALUES
('Clean Code','Robert C. Martin','Prentice Hall',2008,'9780132350884',5),
('The Pragmatic Programmer','Andrew Hunt','Addison-Wesley',1999,'9780201616224',3),
('Introduction to Algorithms','Thomas H. Cormen','MIT Press',2009,'9780262033848',2);

SELECT * FROM Book;

-- Members
INSERT INTO Member (first_name,last_name,email,phone,address) VALUES
('Tanuja','Patil','tanuja@example.com','9876543210','Pune, Maharashtra'),
('Rahul','K','rahul.k@example.com','9123456789','Mumbai, Maharashtra');

SELECT * FROM Member;

-- Loans
INSERT INTO Loan (book_id,member_id,due_date) VALUES
(1,1,DATE_ADD(CURRENT_DATE, INTERVAL 14 DAY)),
(2,2,DATE_ADD(CURRENT_DATE, INTERVAL 7 DAY));

SELECT * FROM Loan;

-- Staff
INSERT INTO Staff (name,email,role) VALUES
('Priya S','priya.s@example.com','ADMIN'),
('Amit J','amit.j@example.com','LIBRARIAN');

SELECT * FROM Staff;

-- Fines
INSERT INTO Fine (loan_id,amount,paid) VALUES
(2,50.00,FALSE);

SELECT * FROM Fine;

-- Show databases
SHOW DATABASES;