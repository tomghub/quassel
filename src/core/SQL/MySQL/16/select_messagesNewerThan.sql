SELECT messageid, time,  type, flags, sender, message
FROM backlog
LEFT JOIN sender ON backlog.senderid = sender.senderid
WHERE backlog.messageid >= ? AND bufferid = ?
ORDER BY messageid DESC
LIMIT ?
