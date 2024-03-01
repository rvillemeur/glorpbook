examples
simpleQuery

	<sampleInstance>
	| connection |
	connection := self fileConnection.
	
	connection execute: ' BEGIN TRANSACTION;
							   DROP TABLE person; 
								CREATE TABLE person(
  									id INTEGER PRIMARY KEY AUTOINCREMENT,
  									name TEXT NOT NULL,
  									age INTEGER NOT NULL
									);
								COMMIT'.
	^ connection