PROC makeDbf:(f$)
	REM Makes a standard *.DBF data file
	REM with Labels as at end of file
	REM set filename as desired
	LOCAL H%, b$(200)
	REM hex code for standard data file with labels
	b$="OPLDatabaseFile" + CHR$(0) + CHR$($F) + CHR$($10) + CHR$($16) + CHR$(0) + CHR$($F) + CHR$($10) + "  "
	
	https://www.fogma.co.uk/prosoft/oplzone/s3/makedbf.txt
