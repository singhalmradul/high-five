BEGIN TRANSACTION;

INSERT INTO oidc_client (
    id,
    client_id,
    client_secret,
    client_name,
    client_authentication_methods,
    authorization_grant_types,
    redirect_uris,
    scopes,
    client_settings,
    token_settings
) VALUES (
    -- id
    'aacc0e83-3ad9-4e0d-b7b2-bbf185e9e6da',
    -- client_id
    'high-five',
    -- client_secret
    'none',
    -- client_name
    'high-five',
    -- client_authentication_methods
    'none',
    -- authorization_grant_types
    'authorization_code',
    -- redirect_uris
    'http://localhost:3000/callback',
    -- scopes
    'openid,profile',
    -- client_settings
    '{
        "@class":"java.util.HashMap",
        "settings.client.require-proof-key":true,
        "settings.client.require-authorization-consent":true
    }',
    -- token_settings
    '{
        "@class":"java.util.HashMap",
        "settings.token.refresh-token-time-to-live":["java.time.Duration",3600.000000000],
        "settings.token.access-token-format":{
            "@class":"org.springframework.security.oauth2.server.authorization.settings.OAuth2TokenFormat","value":"self-contained"
        },
        "settings.token.authorization-code-time-to-live":["java.time.Duration",300.000000000],
        "settings.token.reuse-refresh-tokens":true,"settings.token.access-token-time-to-live":["java.time.Duration",300.000000000],
        "settings.token.device-code-time-to-live":["java.time.Duration",300.000000000],
        "settings.token.id-token-signature-algorithm":["org.springframework.security.oauth2.jose.jws.SignatureAlgorithm","RS256"]
    }'
);

COMMIT;
