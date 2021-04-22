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
Windows.Application.WorksheetFunction.Substitute(CELL.Value, "Ã©", "é"), " Ã  ", " à "), "Ã¨", "è"), "Ãª", "ê"), "Ã¢", "â"), "â€™", "'") _
, "Ã€", "À"), "Ã»", "û"), "jÃ", "jà"), "Ã§", "ç"), "ÃŠ", "Ê")

Next

MsgBox ("finir!")

End Sub
