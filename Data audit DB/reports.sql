-- 1. Show all records with owner details
select r.record_id,r.data,u.username,u.role,r.created_at
from records r
join users u on r.owner_id = u.user_id
order by r.record_id;

-- 2. Count of users by role (admin/editor/viewer)
select role, count(*) as user_count
from users
group by role
order by user_count desc;

-- 3. Top 5 users by number of audit actions
select u.username, u.role, count(*) as total_actions
from audit_log a
join users u on a.user_id = u.user_id
group by u.username, u.role
order by total_actions desc
limit 5;

-- 4. Count actions by type (insert/update/delete/view)
select action,count(*) as action_count
from audit_log
group by action
order by action_count desc;

-- 5. Show all updates with old vs new values
select a.audit_id, u.username, a.record_id, a.old_data, a.new_data, a.action_time
from audit_log a
join users u on a.user_id = u.user_id
where a.action = 'update'
order by a.action_time desc;

-- 6. Find records that were deleted (from audit logs)
select a.audit_id, a.record_id, u.username, a.old_data, a.action_time
from audit_log a
join users u on a.user_id = u.user_id
where a.action = 'delete'
order by a.action_time desc;

-- 7. List users who performed at least one 'view' action
select distinct u.username, u.role
from audit_log a
join users u on a.user_id = u.user_id
where a.action = 'view'
order by u.username;

-- 8. Show most active role (admins vs editors vs viewers)
select u.role, count(*) as total_actions
from audit_log a
join users u on a.user_id = u.user_id
group by u.role
order by total_actions desc;
-- 9. Records that were updated more than once
select record_id, count(*) as update_count
from audit_log
where action = 'update'
group by record_id
having count(*) > 1
order by update_count desc;

-- 10. Timeline of actions (who did what at what time)
select a.action_time, u.username, u.role, a.action, a.record_id
from audit_log a
join users u on a.user_id = u.user_id
order by a.action_time;