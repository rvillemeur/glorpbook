as yet unclassified
queryTableSimilarTo
| login session |
	login := Login new
		database: SQLite3Platform new;
		host: 'c:\devzone\';
		username: '';
		password: '';
		port: '';
		databaseName: 'glorpbook.db';
		yourself.
	session := GlorpBookDescriptorSystem sessionForLogin: login.
	session login.
	session
		 read: Person where: [ :each | each lastName similarTo: 'Malk%' ].