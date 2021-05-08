# Wwise Audio Unpacker
Unpack Wwise game audio files (pck, wsp, bnk) From NieR Automata, NieR Replicant ver.1.22474487139, Bioshock Infinite and others

File structure:

* Wwise-Audio-Unpacker
  * Result (Unpacked OGGs or WEMs)
  * Game Files (put pck, wsp, bnk files here)
  * Tools (Tools used for the unpacking process and temporary files)
  * Unpack to OGG.bat (run this after adding Wwise archives to get ogg files)
  * Unpack to WEM.bat (run this after adding Wwise archives to get wem files)
  
You have to find pck, wsp, bnk etc. files containing game music, sfx, dialogues etc. and put them to 'Game Files' folder. Keep in mind these are containers, inside each there could be either one or hundreds of audio files.

Find any containers you want to decode and copy them to the "Game Files" folder inside Wwise Unpacker, then simply run "Unpack to OGG.bat" and it will do all the work for you. You can also run "Unpack to WEM.bat" to get the files in encoded wem format, which you can play for example with foobar2000 using vgmstream plugin.
Once finished you can find all decoded files inside the "Result" folder.

**Things you should know about the decoder:**

* Depending on the number and size of the files it can take a while.
* Sometimes there can be filename conflicts while decoding (multiple files with the same name), you will be asked what to do with duplicated names if this happens.
* The unpacker can be used for any game that uses Wwise audio, though it is tested with NieR and Bioshock games only.
