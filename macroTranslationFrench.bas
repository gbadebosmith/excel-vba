Attribute VB_Name = "macroTranslationFrench"
Sub macro_Translation_FrenchFx()

Dim CELL As Variant

CELL = ActiveCell.Value

For Each CELL In Selection
On Error Resume Next

CELL.Value = Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute( _
Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute( _
Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute( _
Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute( _
Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute( _
Substitute(CELL.Value, "é", "�"), " à ", " � "), "è", "�"), "ê", "�"), "â", "�"), "’", "'") _
, "À", "�"), "û", "�"), "j�", "j�"), "ç", "�"), "Ê", "�")

Next

MsgBox ("finir!")

End Sub
