Sub Taxcheck()
    Dim i as Long
    Dim price as Double
    Dim LastRow as Long
    
    LastRow = Range("A" & Rows.Count).End(xlUp).Row  ' Finds the last row with data in column A
    
    For i = 1 to LastRow
        price = Range("A" & i).Value 
        Range("B" & i).Value = (price * 23)/100 ' also price * 2,3 can be used

        if Range("B" & i).Value > 1000 Then
            Range("B" & i).Interior.Color = RGB(0,255,0) 'gree
        else
            Range("B" & i).Interior.Color = RGB(255,0,0) ' red
        End If
    Next i
    MsgBox "Its counted", vbInformation 'when its done, show notification
End Sub
