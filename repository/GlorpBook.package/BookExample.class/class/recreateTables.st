setting up - database
recreateTables
<sampleInstance>
	| session |
	" workingDir := SmalltalkImage current imagePath asFileReference parent fullName 
                                , FileSystem disk delimiter asString. 
        dbName := 'glorpbook.db'. "
	session := self session.
	session recreateTables.
	session logout.
	^session.