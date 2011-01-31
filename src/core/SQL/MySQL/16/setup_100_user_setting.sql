CREATE TABLE user_setting (
    userid integer NOT NULL REFERENCES quasseluser (userid) ON DELETE CASCADE,
    settingname VARCHAR(255) NOT NULL,
    settingvalue BLOB,
    PRIMARY KEY (userid, settingname)
)
