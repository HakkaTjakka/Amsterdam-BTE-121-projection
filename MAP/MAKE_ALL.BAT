@echo off

setlocal EnableDelayedExpansion

set /A offset_x = 6130
set /A offset_y = -10609

set /A offset_x2 = 6239
set /A offset_y2 = -10449


set /A number_y = !offset_y!

:X_IS_0

set /A number_x = !offset_x!

:NEXT_X

set /A number_y_move = !number_y! - !offset_y!
set /A number_x_move = !number_x! - !offset_x!

set filename=r.!number_x!.!number_y!.png
set filename_move=r.!number_x_move!.!number_y_move!.png

echo !filename! -- !filename_move!

if exist "..\..\!filename!" (
	copy "..\..\!filename!" "!filename_move!"
	rem xcopy "..\..\!filename!" "!filename_move!" /D /Y
) else (
	if not exist !filename_move! (
		copy ..\source.png !filename_move!
	)
)

set /a number_x = !number_x! + 1

if !number_x! GTR !offset_x2! (
rem -16610 (
	set /a number_y = !number_y! + 1
	if !number_y! equ !offset_y2! goto END
rem -11719 goto END
	goto X_IS_0
)

goto NEXT_X

:END

TIMEOUT 5