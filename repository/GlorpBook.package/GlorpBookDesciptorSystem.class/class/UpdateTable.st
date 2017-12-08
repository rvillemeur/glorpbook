as yet unclassified
UpdateTable
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
		inUnitOfWorkDo: [ | person |
			person := session readOneOf: Person where: [ :each | each lastName = 'Locke' ].
			person birthDate: Date today ]