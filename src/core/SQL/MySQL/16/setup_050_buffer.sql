create TABLE buffer (
	bufferid serial PRIMARY KEY,
	userid integer NOT NULL REFERENCES quasseluser (userid) ON DELETE CASCADE,
	groupid integer,
	networkid integer NOT NULL REFERENCES network (networkid) ON DELETE CASCADE,
	buffername varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
	buffercname varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, -- CANONICAL BUFFER NAME (lowercase version)
	buffertype integer NOT NULL DEFAULT 0,
	lastseenmsgid integer NOT NULL DEFAULT 0,
	markerlinemsgid integer NOT NULL DEFAULT 0,
	`key` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin,
	joined boolean NOT NULL DEFAULT FALSE, -- BOOL
	UNIQUE(userid, networkid, buffercname)
)
