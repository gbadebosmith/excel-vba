Attribute VB_Name = "macroTranslationSpanishEncoding"
Sub macro_Translation_SpanishFx()

Dim CELL As Variant

CELL = ActiveCell.Value

For Each CELL In Selection
On Error Resume Next

CELL.Value = Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(CELL.Value, "¿", "�"), "á", "�"), "ó", "�"), "ú", "�"), "fíos", "f�os"), "é", "�"), "fía", "f�a"), "ía", "�a"), "ñ", "�"), "ío", "�o"), "íf", "�f"), "ís", "�s")

Next

MsgBox ("terminado!")

End Sub
