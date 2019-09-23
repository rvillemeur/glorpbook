as yet unclassified
rollBackUnitOfWork
	| login session person |
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
		inUnitOfWorkDo: [ person := session readOneOf: Person where: [ :each | each lastName = 'Lucas' ].
			person lastName: 'Wayne'.
			Error signal: 'This error will abort the Unit Of Work.' ]