connection open/close
testAccessor

	<sampleInstance>
	| accessor |
	accessor := self accessor.
	^(accessor  basicExecuteSQLString: 'SELECT 3+4') rows first first "should return 7"