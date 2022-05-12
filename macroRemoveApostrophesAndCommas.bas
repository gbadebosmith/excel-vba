Attribute VB_Name = "macroRemoveApostrophesAndCommas"
Sub macro_Remove_Apostrophes_And_Commas()

Dim CELL As Variant

CELL = ActiveCell.Value

On Error Resume Next

For Each CELL In Selection

CELL.Value = Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(CELL.Value, Chr(39), ""), Chr(44), "")

Next


End Sub
