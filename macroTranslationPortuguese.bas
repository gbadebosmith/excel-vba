Attribute VB_Name = "macroTranslationPortuguese"
Sub macro_Translation_PortugueseFx()

Dim CELL As Variant

CELL = ActiveCell.Value

For Each CELL In Selection
On Error Resume Next

CELL.Value = Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(CELL.Value, "ç", "�"), "ú", "�"), "ã", "�"), "é", "�"), "í", "�"), "ê", "�"), "ô", "�"), "á", "�"), "ó", "�"), "â", "�"), "õ", "�")

Next

MsgBox ("finalizado!")

End Sub
