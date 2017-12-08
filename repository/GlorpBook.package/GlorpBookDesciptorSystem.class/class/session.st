accessing
session
| session| 
	session := GlorpBookDesciptorSystem sessionForLogin: self login.
	^session login.