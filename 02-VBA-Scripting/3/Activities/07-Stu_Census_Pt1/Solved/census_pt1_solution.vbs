' Steps:
' ----------------------------------------------------------------------------

' Part I:

' 1. Extract the number before the phrase "_census_data" to figure out the year.
' 2. Add the year to the first column of each spreadsheet.
' 3. Split the "Place" column into "County" and "State".
' 4. Convert the household and per capita income columns to currency values for all cells.


Sub Census_pt1()

    ' --------------------------------------------
    ' LOOP THROUGH ALL SHEETS
    ' --------------------------------------------
    For Each ws In Worksheets

        ' --------------------------------------------
        ' INSERT THE YEAR
        ' --------------------------------------------

        ' Create a Variable to Hold File Name, Last Row, and Year
        Dim WorksheetName As String

        ' Determine the Last Row
        LastRow = ws.Cells(Rows.Count, 1).End(xlUp).Row

        ' Grabbed the WorksheetName
        WorksheetName = ws.Name
        'MsgBox WorksheetName

        ' Split the WorksheetName
        CensusYear = Split(WorksheetName, "_")
        'MsgBox CensusYear(0)

        ' Add a Column for the Year
        ws.Range("A1").EntireColumn.Insert

        ' Add the word Year to the First Column Header
        ws.Cells(1, 1).Value = "Year"

        ' Add the Year to all rows
        ws.Range("A2:A" & LastRow) = CensusYear(0)

        ' --------------------------------------------
        ' SPLIT COUNTY AND STATE
        ' --------------------------------------------

        ' Add the State Column after County
        ws.Range("C1").EntireColumn.Insert
        
        ' Rename Place to County
        ws.Cells(1, 2).Value = "County"
        
        ' Label State Column
        ws.Cells(1, 3).Value = "State"

        ' Split County and State and store values in appropriate
        ' column by looping through and renaming each
        For i = 2 To LastRow
            CountyState = ws.Cells(i, 2).Value
            CSSplit = Split(CountyState, ", ")
            'MsgBox CSSplit(1)
            ws.Cells(i, 2).Value = CSSplit(0)
            ws.Cells(i, 3).Value = CSSplit(1)
            ' MsgBox Cells(i, 2)
            ' MsgBox CSSplit(0)

        Next i

        ' --------------------------------------------
        ' CORRECT THE CURRENCY FORMAT
        ' --------------------------------------------

        ' Add the currency
        For i = 2 To LastRow

            ' For columns Household and Per Capita Income only
            For j = 6 To 7

                ws.Cells(i, j).Style = "Currency"

            Next j

        Next i

    ' --------------------------------------------
    ' FIXES COMPLETE
    ' --------------------------------------------
    Next ws

    MsgBox ("Fixes Complete")

End Sub