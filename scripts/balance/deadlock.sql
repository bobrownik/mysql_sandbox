-- #1: 2 transactions try to update balance of the same user
-- 1st transaction
START TRANSACTION;

UPDATE user_balance SET balance = balance + 1 WHERE id = 1;

UPDATE user_balance SET balance = balance - 1 WHERE id = 2;

COMMIT;

-- 2nd transaction
START TRANSACTION;

UPDATE user_balance SET balance = balance - 1 WHERE id = 2;

UPDATE user_balance SET balance = balance + 1 WHERE id = 1;

COMMIT;
