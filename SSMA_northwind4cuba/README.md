## SSMA migration project

This folder contains a [SQL Server Migration Assistant for Access](https://www.microsoft.com/en-us/download/details.aspx?id=54255) (SSMA) project that was used to migrate sample [northwind](../db/northwind.accdb) database prepared with [Acess2Cuba.bas](../vba/Access2Cuba.bas) script.

In general you won't need this project, since it's very easy to recreate it with SSMA.

Here are changes that need to be done before running a SSMA migration wizard:

1. Select **Tools -> Default Project Settings** menu item.
1. Set **Migration Target Version** to **SQL Server 2017** (or other appropriate version that you'll use for further conversions).
1. Go to **Type Mapping** section.
1. Change default type mapping for `byte` type from `tinyint` to `int`.
