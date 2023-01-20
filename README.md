# Portal 2 hide and seek

## Client
Copy everything in hideandseek into a directory in your cfg directory called hideandseek
### Requirements
- [SourceAutoRecord](https://github.com/p2sr/sourceautorecord)

## Server
Host on a ghost server (https://ghost.portal2.sr)

In the pre-launch options:
`svar_set seeker_one 0; svar_set seeker_two 0; svar_set seeker_three 0; svar_set seeker_four 0; exec hideandseek/hideandseek; svar_set countdown 60; map sp_a3_03`

Replace the seeker svars 0 with whoever you want the seekers to be

Replace map with whatever map you want it to be

Replace countdown with how long the seeker will wait at the start of the map (in seconds)
Note: must be at least 3 seconds

To play fair as a hider, if you're found, type "found" in console, or press Y (default bind), the bind can be changed in hider.cfg

Have fun!
