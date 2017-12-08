as yet unclassified
deleteRecordv2
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
		inUnitOfWorkDo: [ session delete: Person where: [ :each | each lastName = 'Locke' ] ]