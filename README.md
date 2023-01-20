# Portal 2 hide and seek

## Client
Copy everything in hideandseek into a directory in your cfg directory called hideandseek

## Server
Host on a ghost server (https://ghost.portal2.sr)

In the pre-launch options:
`svar_set seeker SeekerNameHere; exec hideandseek/hideandseek; svar_set countdown 60; map sp_a3_03`

Replace seeker with whatever you want the seeker to be

Replace map with whatever map you want it to be

Replace countdown with how long the seeker will wait at the start of the map (in seconds)

Note: must be at least 3 seconds

Have fun!
