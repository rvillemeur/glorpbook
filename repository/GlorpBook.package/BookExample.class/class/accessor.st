connection open/close
accessor
<sampleInstance>
	| accessor |
	accessor := DatabaseAccessor forLogin: self login.
	accessor login.
	^ accessor