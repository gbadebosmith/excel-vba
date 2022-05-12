Attribute VB_Name = "TrimSpacesFx"
Sub trimSpacesFx()
Dim CELL As Variant

CELL = ActiveCell.Value

For Each CELL In Selection
On Error Resume Next

CELL.Value = Windows.Application.WorksheetFunction.Trim(CELL.Value)

Next


MsgBox ("Completed!")

End Sub
