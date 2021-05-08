# Wwise Audio Unpacker
Unpack Wwise game audio files (pck, wsp, bnk) From NieR Automata, NieR Replicant ver.1.22474487139, Bioshock Infinite and others

File structure:

* Wwise-Audio-Unpacker
  * Result (Unpacked OGGs or WEMs)
  * Game Files (put pck, wsp, bnk, wem files here)
  * Tools (Tools used for the unpacking process and temporary files)
  * Unpack to OGG.bat (run this after adding Wwise archives to get ogg files)
  * Unpack to WEM.bat (run this after adding Wwise archives to get wem files)
  * WEM to OGG.bat (run this after adding Wwise WEMs to get ogg files)
  
You have to find pck, wsp, bnk etc. files containing game music, sfx, dialogues etc. and put them to 'Game Files' folder. Keep in mind these are containers, inside each there could be either one or hundreds of audio files.

Find any containers you want to decode and copy them to the "Game Files" folder inside Wwise Unpacker, then simply run "Unpack to OGG.bat" and it will do all the work for you. You can also run "Unpack to WEM.bat" to get the files in encoded wem format, which you can play for example with foobar2000 using vgmstream plugin.
Once finished you can find all decoded files inside the "Result" folder.

**Where to find game music**
Look for pck, wsp, bnk etc. files inside game folders. Look for large files, potentially with 'BGM', 'Music' in paths/names.
For Bioshock Infinite: 
* BioShock Infinite\XGame\Content\Audio\Packed\Windows\Packs\CombinedStreaming_SFX.pck

For NieR Automata: 
* NieRAutomata\data\sound\stream\BGM*.wsp
* NieRAutomata\data\sound\stream\708845993.wem (this one is already extracted and only needs to be converted to ogg)

For NieR Replicant:
* NieR Replicant ver.1.22474487139\data\sound\stream.pck
* NieR Replicant ver.1.22474487139\data\sound\stream2.pck

**Things you should know about the decoder:**

* Depending on the number and size of the files it can take a while.
* Sometimes there can be filename conflicts while decoding (multiple files with the same name), you will be asked what to do with duplicated names if this happens.
* The unpacker can be used for any game that uses Wwise audio, though it is tested with NieR and Bioshock games only.
