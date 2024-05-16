BEGIN TRANSACTION;

INSERT INTO user_authentication_details (
    user_id,
    password,
    account_non_expired,
    account_non_locked,
    credentials_non_expired,
    enabled
) VALUES (
    'f57f49b9-ca47-43ab-b310-68cc4c6cc836',
    '{bcrypt}$2a$10$0oQGe9mCwWaWwLEes.oYP.rCA9DP9VNChq9j7nE2h0hTaUZnWq9BG',
    TRUE,
    TRUE,
    TRUE,
    TRUE
);

INSERT INTO user_authentication_details (
    user_id,
    password,
    account_non_expired,
    account_non_locked,
    credentials_non_expired,
    enabled
) VALUES (
    'e02acbc4-2e43-4dfe-8637-467d6b3b1074',
    '{bcrypt}$2a$10$3ypI1XDt6y0gmOTqZHUeMOAZzLo5JNU5ZurS0r9/2GwXIf1qUucEq',
    TRUE,
    TRUE,
    TRUE,
    TRUE
);

INSERT INTO user_authentication_details (
    user_id,
    password,
    account_non_expired,
    account_non_locked,
    credentials_non_expired,
    enabled
) VALUES (
    '1075de58-5fa4-439e-8da0-59cdc6927618',
    '{bcrypt}$2a$10$neuGvtnUuL0dl6EV7JFuFOuMC3Xdb3YGA/frhp/rVoeOckNC..x2e',
    TRUE,
    TRUE,
    TRUE,
    TRUE
);

INSERT INTO user_authentication_details (
    user_id,
    password,
    account_non_expired,
    account_non_locked,
    credentials_non_expired,
    enabled
) VALUES (
    'ead598f0-7a55-4266-a5d5-40e56ec19b88',
    '{bcrypt}$2a$10$CX6Lj/7zkEeaLDz9xZTlTOgd8Kz2vYxjxoMSCKjpnv4HMUR/rCgau',
    TRUE,
    TRUE,
    TRUE,
    TRUE
);

INSERT INTO user_authentication_details (
    user_id,
    password,
    account_non_expired,
    account_non_locked,
    credentials_non_expired,
    enabled
) VALUES (
    '2b147a04-64b1-4cc9-9522-596c3e459917',
    '{bcrypt}$2a$10$8hxqrRHYwUAMkFhr.oAnLeELSdD5mIIihLhlkgh37k38gAeakRoSi',
    TRUE,
    TRUE,
    TRUE,
    TRUE
);

COMMIT;
