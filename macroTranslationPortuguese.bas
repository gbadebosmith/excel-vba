Attribute VB_Name = "macroTranslationPortuguese"
Sub macro_Translation_PortugueseFx()

Dim CELL As Variant

CELL = ActiveCell.Value

For Each CELL In Selection
On Error Resume Next

CELL.Value = Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(Windows.Application.WorksheetFunction.Substitute(CELL.Value, "Ã§", "ç"), "Ãº", "ú"), "Ã£", "ã"), "Ã©", "é"), "Ã­", "í"), "Ãª", "ê"), "Ã´", "ô"), "Ã¡", "á"), "Ã³", "ó"), "Ã¢", "â"), "Ãµ", "õ")

Next

MsgBox ("finalizado!")

End Sub
