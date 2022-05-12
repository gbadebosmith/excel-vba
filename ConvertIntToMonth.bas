Attribute VB_Name = "ConvertIntToMonth"
Sub ConvertIntToMonthFx()

Dim CELL As Variant

CELL = ActiveCell.Value

For Each CELL In Selection

On Error Resume Next

If CELL.Value = 1 Then
CELL.Value = "January"

ElseIf CELL.Value = 2 Then
CELL.Value = "February"

ElseIf CELL.Value = 3 Then
CELL.Value = "March"

ElseIf CELL.Value = 4 Then
CELL.Value = "April"

ElseIf CELL.Value = 5 Then
CELL.Value = "May"

ElseIf CELL.Value = 6 Then
CELL.Value = "June"

ElseIf CELL.Value = 7 Then
CELL.Value = "July"

ElseIf CELL.Value = 8 Then
CELL.Value = "August"

ElseIf CELL.Value = 9 Then
CELL.Value = "September"

ElseIf CELL.Value = 10 Then
CELL.Value = "October"

ElseIf CELL.Value = 11 Then
CELL.Value = "November"

ElseIf CELL.Value = 12 Then
CELL.Value = "December"

Else: CELL.Value

End If

Next

MsgBox ("Completed!")

End Sub

