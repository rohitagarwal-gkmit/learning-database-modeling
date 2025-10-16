INSERT INTO Address VALUES (1, '123 Main St', 'Apt 1', 'Springfield', 'IL', '62701', '555-1234', 39.7817, -89.6501);
INSERT INTO Address VALUES (2, '456 Elm St', NULL, 'Springfield', 'IL', '62702', '555-5678', 39.7990, -89.6436);
INSERT INTO Address VALUES (3, '789 Oak Ave', 'Suite 200', 'Chicago', 'IL', '60616', '555-9012', 41.8500, -87.6500);

INSERT INTO Subscription_Model VALUES (1, 'Basic', 2, 10);
INSERT INTO Subscription_Model VALUES (2, 'Premium', 5, 25);
INSERT INTO Subscription_Model VALUES (3, 'Student', 3, 15);

INSERT INTO Person VALUES (1, 'Alice Smith', 'alice@example.com', 1, 1);
INSERT INTO Person VALUES (2, 'Bob Johnson', 'bob@example.com', 2, 2);
INSERT INTO Person VALUES (3, 'Charlie Lee', 'charlie@example.com', 3, 3);
INSERT INTO Person VALUES (4, 'Diana King', 'diana@example.com', 3, 3);
INSERT INTO Person VALUES (5, 'Evan Wright', 'evan@example.com', 2, 1);

INSERT INTO Roles VALUES (1, 'Member');
INSERT INTO Roles VALUES (2, 'Librarian');
INSERT INTO Roles VALUES (3, 'Admin');

INSERT INTO person_role VALUES (1, 1); -- Alice is Member
INSERT INTO person_role VALUES (2, 2); -- Bob is Librarian
INSERT INTO person_role VALUES (3, 3); -- Charlie is Admin
INSERT INTO person_role VALUES (4, 1); -- Diana is Volunteer
INSERT INTO person_role VALUES (5, 1); -- Evan is Guest

INSERT INTO Library VALUES (1, 'Central Library', 1);
INSERT INTO Library VALUES (2, 'West Branch', 2);
INSERT INTO Library VALUES (3, 'East Branch', 3);

INSERT INTO library_person VALUES (1, 1);
INSERT INTO library_person VALUES (2, 2);
INSERT INTO library_person VALUES (3, 3);
INSERT INTO library_person VALUES (1, 4);
INSERT INTO library_person VALUES (2, 5);

INSERT INTO Book VALUES (1, 'The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', 'Fiction', 1, '1925-04-10', 4.5, 'available');
INSERT INTO Book VALUES (2, '1984', 'George Orwell', '9780451524935', 'Dystopian', 2, '1949-06-08', 4.7, 'checked_out');
INSERT INTO Book VALUES (3, 'To Kill a Mockingbird', 'Harper Lee', '9780061120084', 'Classic', 3, '1960-07-11', 4.8, 'reserved');
INSERT INTO Book VALUES (4, 'Moby Dick', 'Herman Melville', '9781503280786', 'Adventure', 4, '1851-10-18', 4.2, 'lost');
INSERT INTO Book VALUES (5, 'Pride and Prejudice', 'Jane Austen', '9780141439518', 'Romance', 5, '1813-01-28', 4.9, 'available');

INSERT INTO Issue_Records VALUES (1, 2, 1, '2025-10-01', 2, '2025-10-15');
INSERT INTO Issue_Records VALUES (2, 3, 2, '2025-09-01', 1, '2025-09-15');
INSERT INTO Issue_Records VALUES (3, 4, 3, '2025-08-01', 3, '2025-08-15');
INSERT INTO Issue_Records VALUES (4, 5, 4, '2025-07-01', 4, '2025-07-15');
INSERT INTO Issue_Records VALUES (5, 1, 5, '2025-06-01', 5, '2025-06-15');