CREATE TABLE quasseluser (
       userid serial NOT NULL PRIMARY KEY,
       username varchar(64) CHARACTER SET utf8 COLLATE utf8_bin UNIQUE NOT NULL,
       password char(40) NOT NULL -- hex reppresentation of sha1 hashes
)
