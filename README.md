# Wwise Audio Unpacker
Unpack Wwise game audio files (pck, wsp, bnk) From NieR Automata, NieR Replicant ver.1.22474487139, Life is Strange and others

File structure:

* Wwise-Audio-Unpacker
  * OGG (Unpacked OGGs)
  * Game Files (put pck, wsp, bnk files here)
  * Tools (Tools used for the unpacking process and temporary files)
  * Unpack to OGG.bat (run this after adding Wwise archives)
  
You have to find pck, wsp, bnk files containing game music, sfx, dialogues etc. and put them to 'Game Files' folder. Keep in mind these are containers, inside each there could be either one or hundreds of audio files.

Find any containers you want to decode and copy them to the "Game Files" folder inside Wwise Unpacker, then simply run "Unpack to OGG.bat" and it will do all the work for you. 
Once finished you can find all decoded files inside the "OGG" folder.

**Things you should know about the decoder:**

* Depending on the number and size of the files it can take a while, let it run until you see the ASCII tornado.
* The decoder will offer to delete files in "Game Files" so you don't accidentally decode the same files again.
* Sometimes there can be filename conflicts while decoding (multiple files with the same name), these will be skipped as they usually are exactly the same files. If you want to be asked what to do with duplicate names instead, remove "-k" parameter from quickbms.exe commandline inside the .bat file (it appears several times there).
* The unpacker can be used for any game that uses Wwise audio, though it is tested with NieR games only.
