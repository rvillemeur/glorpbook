baselines
baseline: spec

	<baseline>
	spec for: #common do: [
		spec description:
			'All components necessary to use code from Glorp book'.
		spec author: 'RdeV'.
		spec baseline: 'SQLite3' with: [
			spec
				repository: 'github://pharo-rdbms/Pharo-SQLite3/src';
				loads: 'glorp' ].

		spec preLoadDoIt: #DownloadSqlite3.
		spec package: 'GlorpBook' with: [ spec requires: 'SQLite3' ].
		spec postLoadDoIt: #ConfigureSqlite3 ]