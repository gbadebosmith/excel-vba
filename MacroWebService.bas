Attribute VB_Name = "MacroWebService"
Sub macro_webservice()

Dim CELLS As Variant

CELLS = ActiveCell.Value

For Each CELLS In Selection

On Error Resume Next

CELLS.Value = Windows.Application.WorksheetFunction.WebService(CELLS.Value)


Next

MsgBox ("Completed!")

End Sub
