@echo off
for /f "tokens=*" %%G in ('dir /b /a:d ".\*"') do (
	dir %%G\*.bmp /s/b > png_and_bmp.txt 2>NUL
	dir %%G\*.png /s/b >> png_and_bmp.txt 2>NUL

	for %%a in (png_and_bmp.txt) do (
		if not %%~za == 0 (
			echo Converting to .jpg %%G
			"C:\Program Files\IrfanView\i_view64.exe" /filelist=png_and_bmp.txt /convert=%%G\$d\$N.jpg
			del %%G\*.png /s >NUL 2>NUL 
			del %%G\*.bmp /s >NUL 2>NUL
		) else (
			echo No .bmp or .png files %%G
		)
	)
)

pause

