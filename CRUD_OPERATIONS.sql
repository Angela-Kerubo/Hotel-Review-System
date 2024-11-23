
-- Insert into Users
INSERT INTO Users (name, email, password, registration_date)
VALUES ('John Doe', 'john.doe@example.com', 'encrypted_password', NOW());

-- Read all Users
SELECT * FROM Users;

-- Read specific User by ID
SELECT * FROM Users WHERE user_id = 1;

-- Update User Email
UPDATE Users
SET email = 'new.email@example.com'
WHERE user_id = 1;


-- Delete User
DELETE FROM users WHERE user_id = 1;

-- Insert into Hotels
INSERT INTO hotel (name, location, description)
VALUES ('Grand Hotel', 'New York, USA', 'A luxury hotel with modern amenities.');

-- Read all Hotels
SELECT * FROM hotel;

-- Read specific Hotel by ID
SELECT * FROM hotel WHERE hotel_id = 1;

-- Update Hotel Description
UPDATE hotel
SET description = 'An updated description for the hotel.'
WHERE hotel_id = 1;

-- Delete Hotel
DELETE FROM hotel WHERE hotel_id = 1;