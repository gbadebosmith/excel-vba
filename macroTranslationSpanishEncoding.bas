Attribute VB_Name = "macroTranslationSpanishEncoding"
Sub macro_Translation_SpanishFx()

Dim CELL As Variant

CELL = ActiveCell.Value

For Each CELL In Selection
On Error Resume Next

CELL.Value = Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(CELL.Value, "Â¿", "¿"), "Ã¡", "á"), "Ã³", "ó"), "Ãº", "ú"), "Ã­", "í"), "Ã©", "é"), "Ã±", "ñ")

Next

MsgBox ("terminado!")

End Sub
