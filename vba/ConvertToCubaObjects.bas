Attribute VB_Name = "ConvertToCubaObjects"
Option Compare Database
Option Explicit

Dim re As Object


Public Function convert()
  On Error GoTo ErrorHandler
    Dim tdf As TableDef
    Dim field As field
    Dim index As index
    Dim tablesRenamed As Integer: tablesRenamed = 0
    Dim fieldsRenamed As Integer: fieldsRenamed = 0
    Dim indexesRenamed As Integer: indexesRenamed = 0
    
    
    For Each tdf In CurrentDb.TableDefs
        If Left(tdf.Name, 4) <> "MSys" Then
          tdf.Name = convertDbObjectName(tdf.Name)
          tablesRenamed = tablesRenamed + 1
          
          For Each field In tdf.Fields
            field.Name = convertDbObjectName(field.Name)
            fieldsRenamed = fieldsRenamed + 1
          Next
          
          For Each index In tdf.Indexes
            If Not index.Foreign Then
                index.Name = convertDbObjectName(index.Name)
                indexesRenamed = indexesRenamed + 1
            End If
          Next
        End If
    Next
    
    Dim msgText As String
    msgText = "Preparation for CUBA platform import was finished" & _
        vbCrLf & "Tables renamed: " + CStr(tablesRenamed) & _
        vbCrLf & "Fields renamed: " & CStr(fieldsRenamed) & _
        vbCrLf & "Indexes renamed: " + CStr(indexesRenamed) & _
        vbCrLf & vbCrLf & _
        "DO NOT FORGET to change DB table names from PLURAL TO SINGULAR form!"
    
    MsgBox msgText, vbOKOnly, "Conversion is completed"
    
Done:
    Exit Function
ErrorHandler:
    Dim errStr As String
    errStr = Err.Description
    If Not tdf Is Nothing Then
      errStr = errStr & vbCrLf & "Table: " & tdf.Name
    End If
    If Not field Is Nothing Then
      errStr = errStr & vbCrLf & "Field: " & field.Name
    End If
    If Not index Is Nothing Then
      errStr = errStr & vbCrLf & "Index: " & index.Name
    End If
    MsgBox errStr, vbOKOnly, "Error"
    Resume Done
End Function


Private Function convertDbObjectName(text As String) As String
    If re Is Nothing Then
        Set re = CreateObject("VBScript.RegExp")
        re.Global = True
        re.pattern = "[^a-zA-Z0-9_]"
    End If

    Dim matches As Object
    Dim m As Object
    

    Set matches = re.Execute(text)
    
    For Each m In matches
        text = Replace(text, m, "_")
    Next
    
    convertDbObjectName = checkForReservedKeyword(UCase(text))
End Function

Private Function checkForReservedKeyword(text As String) As String
    Dim msSqlReservedWords As Variant
    msSqlReservedWords = Array( _
        "ABSOLUTE", "ACTION", "ADA", "ADD", "ALL", "ALLOCATE", _
        "ALTER", "AND", "ANY", "ARE", "AS", "ASC", "ASSERTION", "AT", "AUTHORIZATION", "AVG", "BEGIN", "BETWEEN", _
        "BIT", "BIT_LENGTH", "BOTH", "BY", "CASCADE", "CASCADED", "CASE", "CAST", "CATALOG", "CHAR", "CHAR_LENGTH", _
        "CHARACTER", "CHARACTER_LENGTH", "CHECK", "CLOSE", "COALESCE", "COLLATE", "COLLATION", "COLUMN", "COMMIT", _
        "CONNECT", "CONNECTION", "CONSTRAINT", "CONSTRAINTS", "CONTINUE", "CONVERT", "CORRESPONDING", "COUNT", _
        "CREATE", "CROSS", "CURRENT", "CURRENT_DATE", "CURRENT_TIME", "CURRENT_TIMESTAMP", "CURRENT_USER", "CURSOR", _
        "DATE", "DAY", "DEALLOCATE", "DEC", "DECIMAL", "DECLARE", "DEFAULT", "DEFERRABLE", "DEFERRED", "DELETE", _
        "DESC", "DESCRIBE", "DESCRIPTOR", "DIAGNOSTICS", "DISCONNECT", "DISTINCT", "DOMAIN", "DOUBLE", "DROP", _
        "ELSE", "END", "END-EXEC", "ESCAPE", "EXCEPT", "EXCEPTION", "EXEC", "EXECUTE", "EXISTS", "EXTERNAL", _
        "EXTRACT", "FALSE", "FETCH", "FIRST", "FLOAT", "FOR", "FOREIGN", "FORTRAN", "FOUND", "FROM", "FULL", "GET", _
        "GLOBAL", "GO", "GOTO", "GRANT", "GROUP", "HAVING", "HOUR", "IDENTITY", "IMMEDIATE", "IN", "INCLUDE", _
        "INDEX", "INDICATOR", "INITIALLY", "INNER", "INPUT", "INSENSITIVE", "INSERT", "INT", "INTEGER", "INTERSECT", _
        "INTERVAL", "INTO", "IS", "ISOLATION", "JOIN", "KEY", "LANGUAGE", "LAST", "LEADING", "LEFT", "LEVEL", _
        "LIKE", "LOCAL", "LOWER", "MATCH", "MAX", "MIN", "MINUTE", "MODULE", "MONTH", "NAMES", "NATIONAL", _
        "NATURAL", "NCHAR", "NEXT", "NO", "NONE", "NOT", "NULL", "NULLIF", "NUMERIC", "OCTET_LENGTH", "OF", "ON", _
        "ONLY", "OPEN", "OPTION", "OR", "ORDER", "OUTER", "OUTPUT", "OVERLAPS", "PAD", "PARTIAL", "PASCAL", _
        "POSITION", "PRECISION", "PREPARE", "PRESERVE", "PRIMARY", "PRIOR", "PRIVILEGES", "PROCEDURE", "PUBLIC", _
        "READ", "REAL", "REFERENCES", "RELATIVE", "RESTRICT", "REVOKE", "RIGHT", "ROLLBACK", "ROWS", "SCHEMA", _
        "SCROLL", "SECOND", "SECTION", "SELECT", "SESSION", "SESSION_USER", "SET", "SIZE", "SMALLINT", "SOME", _
        "SPACE", "SQL", "SQLCA", "SQLCODE", "SQLERROR", "SQLSTATE", "SQLWARNING", "SUBSTRING", "SUM", "SYSTEM_USER", _
        "TABLE", "TEMPORARY", "THEN", "TIME", "TIMESTAMP", "TIMEZONE_HOUR", "TIMEZONE_MINUTE", "TO", "TRAILING", _
        "TRANSACTION", "TRANSLATE", "TRANSLATION", "TRIM", "TRUE", "UNION", "UNIQUE", "UNKNOWN", "UPDATE", "UPPER", _
        "USAGE", "USER", "USING", "VALUE", "VALUES", "VARCHAR", "VARYING", "VIEW", "WHEN", "WHENEVER", "WHERE", _
        "WITH", "WORK", "WRITE", "YEAR", "ZONE")

    Dim i As Integer
    
    checkForReservedKeyword = text
    For i = LBound(msSqlReservedWords) To UBound(msSqlReservedWords)
      If StrComp(text, msSqlReservedWords(i), vbTextCompare) = 0 Then
        checkForReservedKeyword = text & "_"
      End If
    Next
End Function

Private Function IsArrayAllocated(arr As Variant) As Boolean
        On Error Resume Next
        IsArrayAllocated = IsArray(arr) And _
                           Not IsError(LBound(arr, 1)) And _
                           LBound(arr, 1) <= UBound(arr, 1)
End Function



