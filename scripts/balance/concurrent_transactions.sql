-- 1st transaction
START TRANSACTION;

SET @prev_balance = SELECT id, balance FROM user_balance WHERE id = 2 FOR UPDATE;

UPDATE user_balance SET balance = @prev_balance + 1 WHERE id = 2;

COMMIT;

-- 2nd transaction
START TRANSACTION;

SET @prev_balance = SELECT id, balance FROM user_balance WHERE id = 2 FOR UPDATE;

UPDATE user_balance SET balance = @prev_balance + 1 WHERE id = 2;

COMMIT;
