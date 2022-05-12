Attribute VB_Name = "GetDirectoryFx2"
Sub get_directory_2()

' hi viewers
' we are going to list files in a folder by looping through it
'firstly declare variables

Dim CELL As Variant
Dim folderx As Variant

folderx = Dir(Dir("C:\"), vbDirectory)

While folderx <> ""

For Each CELL In Selection

CELL.Value = folderx

On Error GoTo TheEnd

folderx = Dir

Next

Wend


TheEnd: End Sub

