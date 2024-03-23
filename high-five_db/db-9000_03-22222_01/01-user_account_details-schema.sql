BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS user_account_details (
    user_id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    username VARCHAR(15) UNIQUE NOT NULL,
    email VARCHAR(63) UNIQUE NOT NULL
);

COMMIT;
