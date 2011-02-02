CREATE TABLE network (
       networkid serial NOT NULL PRIMARY KEY,
       userid integer NOT NULL REFERENCES quasseluser (userid) ON DELETE CASCADE,
       networkname varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
       identityid integer REFERENCES identity (identityid) ON DELETE SET NULL,
       encodingcodec varchar(32) NOT NULL DEFAULT 'ISO-8859-15',
       decodingcodec varchar(32) NOT NULL DEFAULT 'ISO-8859-15',
       servercodec varchar(32),
       userandomserver boolean NOT NULL DEFAULT FALSE,
       perform TEXT CHARACTER SET utf8 COLLATE utf8_bin,
       useautoidentify boolean NOT NULL DEFAULT FALSE,
       autoidentifyservice varchar(128) CHARACTER SET utf8 COLLATE utf8_bin,
       autoidentifypassword varchar(128) CHARACTER SET utf8 COLLATE utf8_bin,
       usesasl boolean NOT NULL DEFAULT FALSE,
       saslaccount varchar(128) CHARACTER SET utf8 COLLATE utf8_bin,
       saslpassword varchar(128) CHARACTER SET utf8 COLLATE utf8_bin,
       useautoreconnect boolean NOT NULL DEFAULT TRUE,
       autoreconnectinterval integer NOT NULL DEFAULT 0,
       autoreconnectretries integer NOT NULL DEFAULT 0,
       unlimitedconnectretries boolean NOT NULL DEFAULT FALSE,
       rejoinchannels boolean NOT NULL DEFAULT FALSE,
       connected boolean NOT NULL DEFAULT FALSE,
       usermode varchar(32), -- user mode to restore
       awaymessage varchar(256) CHARACTER SET utf8 COLLATE utf8_bin, -- away message to restore (empty if not away)
       attachperform text CHARACTER SET utf8 COLLATE utf8_bin, -- perform list for on attach
       detachperform text CHARACTER SET utf8 COLLATE utf8_bin, -- perform list for on detach
       UNIQUE (userid, networkname)
)
