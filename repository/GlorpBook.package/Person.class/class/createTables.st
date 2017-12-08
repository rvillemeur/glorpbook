setting up - database
createTables
	| login session |
	login := Login new
		host: '';
		databaseName: 'c:\devzone\glorpbook.db';
		database: SQLite3Platform new.
	session := GlorpBookDesciptorSystem sessionForLogin: login.
	session accessor login.
	session createTables