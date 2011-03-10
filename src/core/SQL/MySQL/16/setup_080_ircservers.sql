CREATE TABLE ircserver (
    serverid bigint(20) unsigned NOT NULL auto_increment,
    userid bigint(20) unsigned NOT NULL,
    networkid bigint(20) unsigned NOT NULL,
    hostname varchar(128) NOT NULL,
    port integer NOT NULL DEFAULT 6667,
    password varchar(64) CHARACTER SET utf8 COLLATE utf8_bin,
    `ssl` boolean NOT NULL DEFAULT FALSE, -- bool
    sslversion integer NOT NULL DEFAULT 0,
    useproxy boolean NOT NULL DEFAULT FALSE, -- bool
    proxytype integer NOT NULL DEFAULT 0,
    proxyhost varchar(128) NOT NULL DEFAULT 'localhost',
    proxyport integer NOT NULL DEFAULT 8080,
    proxyuser varchar(64) CHARACTER SET utf8 COLLATE utf8_bin,
    proxypass varchar(64) CHARACTER SET utf8 COLLATE utf8_bin,
    PRIMARY KEY (serverid),
    KEY userid (userid),
    KEY networkid (networkid),
    CONSTRAINT ircserver_ibfk_1 FOREIGN KEY (userid) REFERENCES quasseluser (userid) ON DELETE CASCADE,
    CONSTRAINT ircserver_ibfk_2 FOREIGN KEY (networkid) REFERENCES network (networkid) ON DELETE CASCADE
) ENGINE=InnoDB
