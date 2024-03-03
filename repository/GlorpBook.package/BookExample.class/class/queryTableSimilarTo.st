accessing - data
queryTableSimilarTo
	<sampleInstance>
	| session |
	
	" look at FunctionExpression class >> createBasicFunctionsFor: for all selector helper"
	session := self session.
	^ session
		  read: Person
		  where: [ :each | each lastName similarTo: 'Gol%' ]