' Part 1: Count the number of times Cat Token appears
' Part 2: Each time you find a Cat Token replace it with Dogecoin
' Part 3: You have a max amount of Shiba Inu and Dogecoin, utilize no more than what's provided.
'           If there are still instances of Cat Token left, provide the user with a message stating: "Oh no! We still have some Cat Token..."

Sub CryptoKennel()

  ' PART 3
  ' ------------------------------------------------
  ' Create a variable to hold the number of Cat Token
  Dim CatCount As Integer

  ' Create a variable to hold the number of Shiba Inu and Dogecoin
  Dim ShibaCount As Integer
  Dim DogeCount As Integer

  ' Set the value of Shiba Inu and Dogecoin counters
  ShibaCount = Range("I2").Value
  DogeCount = Range("I5").Value

  ' Set the initial value for the CatCount to 0
  CatCount = 0

  ' Loop through all rows
  For i = 1 To 6

    ' Loop through all columns
    For j = 1 To 7

      ' If the value of a cell is equal to Cat Token
      If Cells(i, j).Value = "Cat Token" Then

        ' Add to the CatCounter
        CatCount = CatCount + 1

        ' Check if we have Shiba Inu available
        If (ShibaCount > 0) Then

          ' Replace the Cat Token with Shiba Inu
          Cells(i, j).Value = "Shiba Inu"

          ' Subtract from the Shiba Inu Count
          ShibaCount = ShibaCount - 1

        ' Check if we have Dogecoin available
        ElseIf (DogeCount > 0) Then

          ' Replace the Cat Token with Dogecoin
          Cells(i, j).Value = "Dogecoin"

          ' Subtract from the Dogecoin Count
          DogeCount = DogeCount - 1

        End If

      End If

    Next j

  Next i

  ' Show the number of Cat Token found
  MsgBox (CatCount & " Cat Token Found")

  ' Create the final message if we still have Cat Token
  If (Range("I2").Value + Range("I5").Value < CatCount) Then

    MsgBox ("Oh no! We still have some Cat Token... ")

  End If

End Sub