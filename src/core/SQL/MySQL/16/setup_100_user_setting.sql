CREATE TABLE user_setting (
    userid bigint(20) unsigned NOT NULL,
    settingname VARCHAR(255) NOT NULL,
    settingvalue BLOB,
    PRIMARY KEY (userid, settingname),
    CONSTRAINT user_setting_ibfk_1 FOREIGN KEY (userid) REFERENCES quasseluser (userid) ON DELETE CASCADE
) ENGINE=InnoDB
