connection open/close
session

	| session |
	session := GlorpBookDescriptorSystem sessionForLogin: self login.
	session login.
	^session.