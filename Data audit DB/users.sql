--creation:-

create table users (user_id serial primary key, username varchar(50) unique not null,
role varchar(20) not null check (role in ('admin', 'editor', 'viewer')),
created_at timestamp default current_timestamp);

--insertion:-

insert into users (username, role, created_at) values
('akash', 'editor', '2025-09-15 18:59:14'),
('bharath', 'viewer', '2025-09-15 19:04:18'),
('david', 'viewer', '2025-09-15 19:06:17'),
('elakiya', 'editor', '2025-09-15 19:06:53'),
('gokul', 'viewer', '2025-09-15 19:07:18'),
('geeta', 'admin', '2025-09-15 19:08:36'),
('harini', 'editor', '2025-09-15 19:09:32'),
('jack', 'editor', '2025-09-15 19:09:47'),
('kaviya', 'viewer', '2025-09-15 19:10:05'),
('madhavan', 'admin', '2025-09-15 19:10:26'),
('nivetha', 'editor', '2025-09-15 19:10:50'),
('prakash', 'viewer', '2025-09-15 19:11:10'),
('radha', 'admin', '2025-09-15 19:11:16'),
('raghul', 'viewer', '2025-09-15 19:11:34'),
('sakthi', 'admin', '2025-09-15 19:11:49'),
('thara', 'editor', '2025-09-15 19:12:10'),
('vishwa', 'editor', '2025-09-15 19:12:19'),
('yuvaraj', 'viewer', '2025-09-15 19:12:43');

--selection:-

select * from users;