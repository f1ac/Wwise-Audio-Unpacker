# Wwise Audio Unpacker
Unpack game audio Wwise files (pck, wsp, bnk) From NieR Automata, NieR Replicant ver.1.22474487139 and others

Here's the archive structure:

* Wwise Unpacker
  * OGG (Unpacked OGGs)
  * Game Files (pck, wsp, bnk files)
  * Tools (Tools used for the unpacking process)
  * Unpack to OGG.bat
  
You have to find pck, wsp, bnk files containing game music, sfx, dialogues etc. and put them to 'Game Files' folder. Keep in mind these are containers, inside each there could be either one or hundreds of audio files.

Find any containers you want to decode and copy them to the "Game Files" folder inside Wwise Unpacker, then simply run "Unpack to OGG.bat" and it will do all the work for you. 
Once finished you can find all decoded files inside the "OGG" folder.

**Things you should know about the decoder:**

* Depending on the number and size of the files it can take a while, let it run until you see the ASCII tornado.
* The decoder will offer to delete files in "Game Files" so you don't accidentally decode the same files again.
* Sometimes there can be filename conflicts while decoding (multiple files with the same name), just type "r" and hit enter on the command window when prompted. This will rename the files so you can keep all of them.
* The unpacker can be used for any game that uses Wwise audio.
