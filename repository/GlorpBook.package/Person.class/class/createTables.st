setting up - database
createTables
	| login session |
	" workingDir := SmalltalkImage current imagePath asFileReference parent fullName 
                                , FileSystem disk delimiter asString. 
        dbName := 'glorpbook.db'. "
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
	session createTables.
	session logout