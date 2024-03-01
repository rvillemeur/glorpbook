examples
simpleResultRows

	<sampleInstance>
	| cursor |
	cursor := self simpleResult.
	
	"you can check if the cursor has more rows with
	cursor hasNext. 
	and ask for it
	cursor next."

	^ cursor rows