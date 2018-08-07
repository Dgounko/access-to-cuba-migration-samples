## VBA scripts

[Access2Cuba.bas](Access2Cuba.bas) - is a small VBA script that helps to rename DB objects in Access database to make them following standards of [CUBA platform](https://www.cuba-platform.com/) applications.

What it does:

1. Changes names of all tables, fields and indexes to uppercase.
1. Replace all symbols except of [a-zA-Z0-9_] in that names with underscore.
1. Adds underscore symbol to the object name if its name is an SQL reserved word (like ORDER, CASE, LANGUAGE etc.)

To migrate the Access db to Cuba-platform standards:

1. Download [Access2Cuba.bas](Access2Cuba.bas) to local folder.
1. Open VBA script editor in MS Access `ribbon "Database Tools" -> button "Visual Basic"`
1. In VBA editors' menu click `File -> Import File` or press `Ctrl-M` to import the [Access2Cuba.bas](Access2Cuba.bas) script
1. Open Immediate Window by selecting `View -> Immediate Window` in main menu or by clicking `Ctrl-G`.
1. Run conversion by typing `? convert()` in this Immediate window or run `convert()` function of `Access2Cuba` module manually.

Don't forget to manually rename your future entity tables in the Access DB from plural noun form to singular one after script completed its job.
