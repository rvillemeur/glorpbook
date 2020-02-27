accessing
DownloadSqlite3
	| client libDir dllZipName dllName dllDefName tmpFile |
	Win32Platform isActivePlatform
		ifFalse: [ ^ self ].
	libDir := SmalltalkImage current vmDirectory
		, FileSystem disk delimiter asString.
	dllZipName := 'sqlite-dll-win64-x64-3310100.zip'.
	dllDefName := 'sqlite3.def'.
	dllName := 'sqlite3.dll'.
	{dllZipName.
	dllDefName.
	dllName}
		do: [ :each | 
			tmpFile := File named: libDir , each.
			tmpFile exists
				ifTrue: [ tmpFile delete ] ].
	client := ZnClient new timeout: 10.
	client get: 'https://sqlite.org/2020/' , dllZipName.
	client isSuccess
		ifTrue: [ client downloadTo: libDir ].
	tmpFile := ZipArchive new readFrom: libDir , dllZipName.
	tmpFile extractAllTo: libDir asFileReference.
	tmpFile close.
	{dllZipName.
	dllDefName}
		do: [ :each | 
			tmpFile := File named: libDir , each.
			tmpFile exists
				ifTrue: [ tmpFile delete ] ]