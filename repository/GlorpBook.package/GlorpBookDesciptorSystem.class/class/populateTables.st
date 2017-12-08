as yet unclassified
populateTables
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
		inUnitOfWorkDo: [ {(Person new
				firstName: 'John';
				lastName: 'Locke';
				birthDate: '1704-08-29' asDate).
			(Person new
				firstName: 'John';
				lastName: 'Malkovich';
				birthDate: '1953-12-09' asDate).
			(Person new
				firstName: 'George';
				lastName: 'Lucas';
				birthDate: '1944-05-14' asDate)} do: [ :each | session register: each ] ].
	session logout