CREATE TABLE backlog (
	messageid bigint(20) unsigned NOT NULL auto_increment,
	time timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
	bufferid bigint(20) unsigned NOT NULL,
	type int(11) NOT NULL,
	flags int(11) NOT NULL,
	senderid bigint(20) unsigned NOT NULL,
	message TEXT CHARACTER SET utf8 COLLATE utf8_bin,
	PRIMARY KEY (messageid),
	CONSTRAINT backlog_ibfk_1 FOREIGN KEY (bufferid) REFERENCES buffer (bufferid) ON DELETE CASCADE
) ENGINE=InnoDB
