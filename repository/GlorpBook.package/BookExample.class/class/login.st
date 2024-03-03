connection open/close
login

	<sampleInstance>
	| login |
	login := Login new
		         database: UDBCSQLite3Platform new;
		         host: SmalltalkImage current imageDirectory fullName;
		         databaseName: 'glorpbook.db';
		         password: '';
		         yourself.
	login secure: true.
	^ login