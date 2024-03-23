BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS user_authority (
    user_id UUID NOT NULL,
    authority_id UUID NOT NULL,
    PRIMARY KEY (user_id, authority_id),
    FOREIGN KEY (user_id) REFERENCES user_authentication_details(user_id),
    FOREIGN KEY (authority_id) REFERENCES authority(id)
);

COMMIT;
