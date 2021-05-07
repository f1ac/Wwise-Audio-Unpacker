FOR %%a IN ("Game Files\*.pck") DO ("Tools\quickbms.exe" -k "Tools\wavescan.bms" "Game Files" "Tools\Decoding")
FOR %%a IN ("Game Files\*.wsp") DO ("Tools\quickbms.exe" -k "Tools\wavescan.bms" "Game Files" "Tools\Decoding")
FOR %%b IN ("Game Files\*.BNK") DO ("Tools\bnkextr.exe" "%%b" & MOVE *.wav "Tools\Decoding")
FOR %%c IN (Tools\Decoding\*.WAV) DO ("Tools\ww2ogg.exe" "%%c" --pcb Tools\packed_codebooks_aoTuV_603.bin & DEL "%%c")
FOR %%d IN (Tools\Decoding\*.OGG) DO ("Tools\revorb.exe" "%%d" & MOVE "%%d" "OGG")

@echo off

echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ((  '####@@!!$$    ))
echo        `#####@@!$$`  ))
echo     ((  '####@!!$:
echo    ((  ,####@!!$:   ))
echo        .###@!!$:
echo        `##@@!$:
echo         `#@!!$
echo   !@#    `#@!$:       @#$
echo    #$     `#@!$:       !@!
echo             '@!$:
echo         '`\   '!$: /`'
echo            '\  '!: /'
echo              '\ : /'
echo   -.'-/\\\-.'//.-'/:'\.'-.JrS'.'-=_\\
echo ' -.'-.\\'-.'//.-'.`-.'_\\-.'.-\'.-//
echo      Watch out, it's the tornado!
                                                                 
echo.
echo -------------------------------------------------------------

echo Unpack finished, files should be in the 'OGG' folder

echo -------------------------------------------------------------
echo.

:choice

set /P c=Should I delete game archive files from the 'Game Files' folder [Y/N]?
if /I "%c%" EQU "Y" goto :yes
if /I "%c%" EQU "N" goto :hella_no
goto :choice

:yes

FOR %%e IN ("Game Files\*.pck") DO (DEL "%%e")
FOR %%e IN ("Game Files\*.wsp") DO (DEL "%%e")
FOR %%f IN ("Game Files\*.BNK") DO (DEL "%%f")

echo Game archives deleted, enjoy your unpacked audio!
pause 
exit

:hella_no

echo Game archives kept, enjoy your unpacked audio!

pause 
exit

pause
