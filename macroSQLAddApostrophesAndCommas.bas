Attribute VB_Name = "macroSQLAddApostrophesAndCommas"
Sub macro_SQL_Add_Apostrophes_And_Commas()

Dim CELL As Variant

CELL = ActiveCell.Value

On Error Resume Next

For Each CELL In Selection

CELL.Value = "''" & CELL.Value & "',"

Next


End Sub
