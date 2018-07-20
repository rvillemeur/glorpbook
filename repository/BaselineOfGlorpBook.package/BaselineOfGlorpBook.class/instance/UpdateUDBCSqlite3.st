as yet unclassified
UpdateUDBCSqlite3
"this is a short way to prevent UDBCSQLite3Connection(Object)>>doesNotUnderstand: #queryEncoding :
see for detail http://forum.world.st/Glorp-SQLite3-issue-td4899792.html#a4899999> "
UDBCSQLite3BaseConnection compile: 'queryEncoding ^ #''utf-8'''. 
