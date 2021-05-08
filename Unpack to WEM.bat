"Tools\quickbms.exe" "Tools\wavescan.bms" "Game Files" "Tools\Decoding" & MOVE Tools\Decoding\*.wem "Result"
FOR %%b IN ("Game Files\*.BNK") DO ("Tools\bnkextr.exe" "%%b" & MOVE *.wav "Result")

echo -------------------------------------------------------------
echo Unpack finished! Files should be in the 'Result' folder
echo -------------------------------------------------------------
pause