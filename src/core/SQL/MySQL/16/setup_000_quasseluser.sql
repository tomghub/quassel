CREATE TABLE quasseluser (
       userid bigint(20) unsigned NOT NULL auto_increment,
       username varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
       password char(40) NOT NULL, -- hex reppresentation of sha1 hashes
       PRIMARY KEY (userid),
       UNIQUE KEY username (username)
) ENGINE=InnoDB
