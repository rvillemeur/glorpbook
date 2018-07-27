as yet unclassified
DownloadSqlite3
	| client libDir dllZipName dllName dllDefName tmpFile |
	Win32Platform isActivePlatform
		ifTrue: [ libDir := SmalltalkImage current vmDirectory , FileSystem disk delimiter asString.
			dllZipName := 'sqlite-dll-win32-x86-3240000.zip'.
			dllDefName := 'sqlite3.def'.
			dllName := 'sqlite3.dll'.

			"clean up before"
			{dllZipName.
			dllDefName.
			dllName}
				do: [ :each | 
					tmpFile := File named: libDir , each.
					tmpFile exists
						ifTrue: [ tmpFile delete ] ].
			client := ZnClient new timeout: 10.
			client get: 'https://sqlite.org/2018/' , dllZipName.
			client isSuccess
				ifTrue: [ client downloadTo: libDir ].
			tmpFile := ZipArchive new readFrom: libDir , dllZipName.
			tmpFile extractAllTo: libDir asFileReference.
			tmpFile close.

			"clean up after"
			{dllZipName.
			dllDefName}
				do: [ :each | 
					tmpFile := File named: libDir , each.
					tmpFile exists
						ifTrue: [ tmpFile delete ] ] ]