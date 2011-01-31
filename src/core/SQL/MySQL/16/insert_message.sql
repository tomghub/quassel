INSERT INTO backlog (time, bufferid, type, flags, senderid, message)
VALUES (?, ?, ?, ?, (SELECT senderid FROM sender WHERE sender = ?), ?)
