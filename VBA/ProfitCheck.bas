Sub ProfitCheck()
    Dim i as Integer
    Dim tprofit as Long
    
    Dim lastRow As Long
    lastRow = Range("A" & Rows.Count).End(xlUp).Row
 
    For i = 1 to lastRow
        tprofit = Range("A" & i).Value
        
        If tprofit <= 1000 Then
            Range("B" & i).Value = "Loss"
            Range("B" & i).Interior.Color=RGB(255, 0, 0)
        Else
            Range("B" & i).Value = "Profit "
            Range("B" & i).Interior.Color=RGB(0, 255, 0)
        End If
    Next i
    msgbox "Done", vbInformation

End Sub
