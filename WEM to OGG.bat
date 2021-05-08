FOR %%c IN ("Game Files\*.wem") DO ("Tools\ww2ogg.exe" "%%c" --pcb Tools\packed_codebooks_aoTuV_603.bin)
FOR %%d IN ("Game Files\*.OGG") DO ("Tools\revorb.exe" "%%d" & MOVE "%%d" "Result")

echo -------------------------------------------------------------
echo Unpack finished! Files should be in the 'Result' folder
echo -------------------------------------------------------------
pause