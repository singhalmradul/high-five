BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS user_authentication_details (
    user_id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    password VARCHAR(68) NOT NULL,
    account_non_expired BOOLEAN DEFAULT TRUE NOT NULL,
    account_non_locked BOOLEAN DEFAULT TRUE NOT NULL,
    credentials_non_expired BOOLEAN DEFAULT TRUE NOT NULL,
    enabled BOOLEAN DEFAULT TRUE NOT NULL
);

COMMIT;
