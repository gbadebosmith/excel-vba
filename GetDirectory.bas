Attribute VB_Name = "GetDirectory"
Sub get_directory()

' hi viewers
' we are going to list files in a folder by looping through it
'firstly declare variables

Dim CELL As Variant
Dim folderx As Variant

folderx = Dir("C:\Users\Gbadebo\Documents\2021\youtube\", vbDirectory)

While folderx <> ""

For Each CELL In Selection

CELL.Value = folderx

On Error GoTo TheEnd

folderx = Dir

Next

Wend


TheEnd: End Sub
