CREATE TABLE identity_nick (
       nickid bigint(20) unsigned NOT NULL auto_increment,
       identityid bigint(20) unsigned NOT NULL,
       nick varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
       PRIMARY KEY (nickid),
       UNIQUE KEY identityid (identityid, nick),
       CONSTRAINT identity_nick_ibfk_1 FOREIGN KEY (identityid) REFERENCES identity (identityid) ON DELETE CASCADE
) ENGINE=InnoDB
