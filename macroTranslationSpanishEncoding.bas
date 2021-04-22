Attribute VB_Name = "macroTranslationSpanishEncoding"
Sub macro_Translation_SpanishFx()

Dim CELL As Variant

CELL = ActiveCell.Value

For Each CELL In Selection
On Error Resume Next

CELL.Value = Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(CELL.Value, "Â¿", "¿"), "Ã¡", "á"), "Ã³", "ó"), "Ãº", "ú"), "fÃ­os", "fíos"), "Ã©", "é"), "fÃ­a", "fía"), "Ã­a", "ía"), "Ã±", "ñ"), "Ã­o", "ío"), "Ã­f", "íf"), "Ã­s", "ís")

Next

MsgBox ("terminado!")

End Sub
