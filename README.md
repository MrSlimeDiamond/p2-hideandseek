# Portal 2 hide and seek

## Client
Copy everything in hideandseek into a directory in your cfg directory called hideandseek

Copy everything in vscripts directory into `Portal 2/portal2/scripts/vscripts`
### Requirements
- [SourceAutoRecord](https://github.com/p2sr/sourceautorecord)

### !!! IMPORTANT !!!
Remove the added vscripts before speedrunning! If you don't your run will get a vscript infraction and your runn will get denied.

## Server
Host on a ghost server (https://ghost.portal2.sr)

In the pre-launch options:
`svar_set seeker_one 0; svar_set seeker_two 0; svar_set seeker_three 0; svar_set seeker_four 0; exec hideandseek/hideandseek; svar_set countdown 60; svar_set collisions 1; map sp_a3_03`

Replace the seeker svars 0 with whoever you want the seekers to be

Replace map with whatever map you want it to be

Replace countdown with how long the seeker will wait at the start of the map (in seconds)
Note: must be at least 3 seconds

To play fair as a hider, if you're found, type "found" in console.

### !!! IMPORTANT !!!

All of the `seeker_` svars must be either 0, or a ghost name of someone.

If you enable automatic collisions with `svar_set collisions 1`, there can only be one seeker.

Have fun!
