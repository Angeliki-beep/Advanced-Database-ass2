-- Create database users
CREATE USER 'crm_admin' IDENTIFIED BY 'StrongPassword123!';
CREATE USER 'sales_user' IDENTIFIED BY 'SalesPassword123!';

-- Grant permissions
GRANT ALL PRIVILEGES ON CRM_System.* TO 'crm_admin';

GRANT SELECT, INSERT, UPDATE
ON CRM_System.Customers TO 'sales_user';

GRANT SELECT, INSERT, UPDATE
ON CRM_System.Interactions TO 'sales_user';

-- Security Measures
-- 1. Use password hashing
-- 2. Enable SSL/TLS connections
-- 3. Apply least privilege principle
-- 4. Use backups and audit logging
-- 5. Protect against SQL injection using prepared statements