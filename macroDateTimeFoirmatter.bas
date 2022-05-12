Attribute VB_Name = "macroDateTimeFoirmatter"
Sub macro_date_time_formatter()

Dim CELL As Variant

CELL = ActiveCell.Value

'On Error Resume Next

For Each CELL In Selection

CELL.Value = (CStr(Year(CELL.Value)) & IIf(CInt(Month(CELL.Value)) < 10, "0" & CStr(Month(CELL.Value)), CStr(Month(CELL.Value))) & IIf(CInt(Day(CELL.Value)) < 10, "0" & CStr(Day(CELL.Value)), CStr(Day(CELL.Value))))

Next


End Sub
