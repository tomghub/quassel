create TABLE buffer (
	bufferid bigint(20) unsigned NOT NULL auto_increment,
	userid bigint(20) unsigned NOT NULL,
	groupid int(11),
	networkid bigint(20) unsigned NOT NULL,
	buffername varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	buffercname varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, -- CANONICAL BUFFER NAME (lowercase version)
	buffertype int(11) NOT NULL DEFAULT 0,
	lastseenmsgid int(11) NOT NULL DEFAULT 0,
	markerlinemsgid int(11) NOT NULL DEFAULT 0,
	`key` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin,
	joined boolean NOT NULL DEFAULT FALSE, -- BOOL
	PRIMARY KEY (bufferid),
	UNIQUE KEY userid (userid, networkid, buffercname),
	KEY networkid (networkid),
	CONSTRAINT buffer_ibfk_1 FOREIGN KEY (userid) REFERENCES quasseluser (userid) ON DELETE CASCADE,
	CONSTRAINT buffer_ibfk_2 FOREIGN KEY (networkid) REFERENCES network (networkid) ON DELETE CASCADE
) ENGINE=InnoDB
