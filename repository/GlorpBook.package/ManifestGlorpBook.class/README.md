To find sqlite under linux, 2 possibilities:
- ensure `SQLite3Library >> unix64LibraryName` reference ^ '/usr/lib/libsqlite3.so.0'
- in the VM folder, create a symbolic link
	//ln -s /usr/lib/libsqlite3.so.0 libsqlite3//
	ln -s /usr/lib64/libsqlite3.so.0 sqlite3 si le module s'appelle sqlite3