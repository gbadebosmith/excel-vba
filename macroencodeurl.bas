Attribute VB_Name = "macroencodeurl"
Sub macro_encode_url()

'keep fressing F8 to debug macro

Dim CELLS As Variant

For Each CELLS In Selection

CELLS.Value = ActiveCell.FormulaR1C1.EncodeURL(CELLS)


Next

End Sub
