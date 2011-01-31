CREATE TABLE sender ( -- THE SENDER OF IRC MESSAGES
       senderid serial NOT NULL PRIMARY KEY,
       sender varchar(128) COLLATE utf8_bin UNIQUE NOT NULL
)
