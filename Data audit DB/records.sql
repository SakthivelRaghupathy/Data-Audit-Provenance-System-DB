--creation:-
create table records (record_id serial primary key,data jsonb not null,
owner_id int references users(user_id),created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp);
--insertion:-
insert into records (data, owner_id) values
-- Admins
('{"customer_name": "Anita Rao", "purchase": "Gaming Laptop", "amount": 95000, "status": "completed"}', 6),   -- geetha
('{"customer_name": "Karthik Menon", "purchase": "Smartphone", "amount": 45000, "status": "pending"}', 10),   -- madhavan
('{"customer_name": "Preethi Nair", "purchase": "Camera", "amount": 60000, "status": "completed"}', 13),      -- radha
('{"customer_name": "Vikram Singh", "purchase": "Monitor", "amount": 15000, "status": "cancelled"}', 15),     -- sakthi

-- Editors
('{"customer_name": "Ramesh Kumar", "purchase": "Keyboard", "amount": 2000, "status": "completed"}', 1),     -- akash
('{"customer_name": "Sara John", "purchase": "Microwave Oven", "amount": 18000, "status": "pending"}', 4),   -- elakiya
('{"customer_name": "James Bond", "purchase": "Refrigerator", "amount": 55000, "status": "completed"}', 7),  -- harini
('{"customer_name": "Chris Evans", "purchase": "Air Conditioner", "amount": 42000, "status": "completed"}', 8), -- jack
('{"customer_name": "Nisha Patel", "purchase": "Washing Machine", "amount": 37000, "status": "pending"}', 11), -- nivetha
('{"customer_name": "Arjun Reddy", "purchase": "Vacuum Cleaner", "amount": 9000, "status": "completed"}', 16), -- thara
('{"customer_name": "Kevin Hart", "purchase": "Speaker", "amount": 8000, "status": "completed"}', 17),         -- vishwa

-- Viewers
('{"customer_name": "Olivia White", "purchase": "Bluetooth Earbuds", "amount": 3000, "status": "completed"}', 2),  -- bharath
('{"customer_name": "John Doe", "purchase": "Smart TV", "amount": 48000, "status": "pending"}', 3),                -- david
('{"customer_name": "Priya Sharma", "purchase": "Dishwasher", "amount": 40000, "status": "completed"}', 5),        -- gokul
('{"customer_name": "George Miller", "purchase": "Projector", "amount": 25000, "status": "cancelled"}', 9),        -- kaviya
('{"customer_name": "Rahul Verma", "purchase": "Printer", "amount": 15000, "status": "completed"}', 12),           -- prakash
('{"customer_name": "Emily Davis", "purchase": "Router", "amount": 6000, "status": "pending"}', 14),               -- raghul
('{"customer_name": "Sophia Grace", "purchase": "Power Bank", "amount": 2500, "status": "completed"}', 18),        -- yuvaraj

-- Mix some repeated admins & editors for balance
('{"customer_name": "Liam Johnson", "purchase": "Drone", "amount": 120000, "status": "completed"}', 6),            -- geeta
('{"customer_name": "Isabella Brown", "purchase": "Smart Lock", "amount": 15000, "status": "pending"}', 1);        -- akash
--selection:-
select * from records;