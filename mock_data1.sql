INSERT INTO Users (full_name, email, role, password_hash)
VALUES
('Angeliki Vourlioti', 'angie@crm.com', 'Admin', 'hashed_pw_1'),
('Katerina Papadopoulou', 'katerina@crm.com', 'Sales', 'hashed_pw_2');

INSERT INTO Customers (first_name, last_name, email, phone, company)
VALUES
('Angeliki', 'Doe', 'angie@example.com', '6999999999', 'Angie Inc'),
('Katerina', 'Brown', 'katerina@example.com', '6988888888', 'Kate Corp');

INSERT INTO Contacts (customer_id, contact_type, contact_value)
VALUES
(1, 'Mobile', '6977777777'),
(2, 'Office', '2106666666');

INSERT INTO Leads (customer_id, lead_source, status, assigned_to)
VALUES
(1, 'Website', 'Open', 2),
(2, 'LinkedIn', 'Qualified', 2);

INSERT INTO Interactions (customer_id, user_id, interaction_type, notes)
VALUES
(1, 2, 'Call', 'Discussed pricing options'),
(2, 2, 'Email', 'Sent follow-up proposal');