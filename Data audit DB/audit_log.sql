--creation:-
create table audit_log (audit_id serial primary key,record_id int references records(record_id) on delete set null,
user_id int references users(user_id)on delete set null,action varchar(10) not null check(action in ('insert','update','delete','view')),
old_data jsonb,new_data json,action_time timestamp default current_timestamp);
--inserion:-
-- 1. Editor (akash, user_id=1) inserted record_id=1
insert into audit_log (record_id, user_id, action, new_data)
values (1, 1, 'insert',
        '{"customer_name": "ramesh", "purchase": "Gaming Laptop", "amount": 95000, "status": "completed"}');

-- 2. Admin (geeta, user_id=6) updated record_id=2
insert into audit_log (record_id, user_id, action, old_data, new_data)
values (2, 6, 'update',
        '{"customer_name": "savitha", "purchase": "Smartphone", "amount": 32000, "status": "pending"}',
        '{"customer_name": "savitha", "purchase": "Smartphone", "amount": 32000, "status": "completed"}');

-- 3. Viewer (bharath, user_id=2) viewed record_id=3
insert into audit_log (record_id, user_id, action)
values (3, 2, 'view');

-- 4. Admin (sakthi, user_id=15) deleted record_id=4
insert into audit_log (record_id, user_id, action, old_data)
values (4, 15, 'delete',
        '{"customer_name": "suresh", "purchase": "Tablet", "amount": 22000, "status": "cancelled"}');

-- 5. Editor (elakiya, user_id=4) inserted record_id=5
insert into audit_log (record_id, user_id, action, new_data)
values (5, 4, 'insert',
        '{"customer_name": "krishna", "purchase": "Smartwatch", "amount": 12000, "status": "completed"}');

-- 6. Viewer (david, user_id=3) viewed record_id=6
insert into audit_log (record_id, user_id, action)
values (6, 3, 'view');

-- 7. Admin (radha, user_id=13) updated record_id=7
insert into audit_log (record_id, user_id, action, old_data, new_data)
values (7, 13, 'update',
        '{"customer_name": "hindu mathi", "purchase": "Refrigerator", "amount": 55000, "status": "completed"}',
        '{"customer_name": "hindu mathi", "purchase": "Refrigerator", "amount": 55000, "status": "cancelled"}');

-- 8. Editor (jack, user_id=8) inserted record_id=8
insert into audit_log (record_id, user_id, action, new_data)
values (8, 8, 'insert',
        '{"customer_name": "akash kumar", "purchase": "Air Conditioner", "amount": 42000, "status": "completed"}');

-- 9. Viewer (prakash, user_id=12) viewed record_id=9
insert into audit_log (record_id, user_id, action)
values (9, 12, 'view');

-- 10. Admin (madhavan, user_id=10) deleted record_id=10
insert into audit_log (record_id, user_id, action, old_data)
values (10, 10, 'delete',
        '{"customer_name": "baskar", "purchase": "Monitor", "amount": 15000, "status": "cancelled"}');
--selection:-
select * from audit_log;
