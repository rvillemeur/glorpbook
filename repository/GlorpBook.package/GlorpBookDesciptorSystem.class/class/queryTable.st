as yet unclassified
queryTable
| login session |
	login := Login new
		database: SQLite3Platform new;
		host: 'c:\devzone\';
		username: '';
		password: '';
		port: '';
		databaseName: 'glorpbook.db';
		yourself.
	session := GlorpBookDesciptorSystem sessionForLogin: login.
	session login.
	session
		 read: Person where: [ :each | each firstName = 'John' ].