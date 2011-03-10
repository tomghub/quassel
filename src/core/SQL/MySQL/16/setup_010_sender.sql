CREATE TABLE sender ( -- THE SENDER OF IRC MESSAGES
       senderid bigint(20) unsigned NOT NULL auto_increment,
       sender varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
       PRIMARY KEY (senderid),
       UNIQUE KEY sender (sender)
) ENGINE=InnoDB
