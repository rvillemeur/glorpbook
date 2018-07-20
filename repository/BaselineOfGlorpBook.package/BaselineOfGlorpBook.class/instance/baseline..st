baselines
baseline: spec
	<baseline>
	spec
		for: #common

		do: [
		spec preLoadDoIt: #DownloadSqlite3.
		spec postLoadDoIt: #ConfigureSqlite3. 
			spec
				baseline: 'GlorpSQLite' with: [ spec repository: 'github://pharo-rdbms/glorp-sqlite3' ];
				package: 'GlorpBook';
				with: [ spec requires: 'GlorpSQLite' ] ]