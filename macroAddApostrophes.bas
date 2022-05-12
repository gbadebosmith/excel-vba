Attribute VB_Name = "macroAddApostrophes"
Sub macro_SQL_Add_Apostrophes()

Dim CELL As Variant

CELL = ActiveCell.Value

On Error Resume Next

For Each CELL In Selection

CELL.Value = "''" & CELL.Value & "'"

Next


End Sub
