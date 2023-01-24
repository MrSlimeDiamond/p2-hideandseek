# Portal 2 hide and seek

## Client

Copy everything in hideandseek into a directory in your cfg directory called hideandseek, i.e. `Portal 2/portal2/cfg/hideandseek/hider.cfg`

Copy everything in vscripts directory into `Portal 2/portal2/scripts/vscripts`

### Requirements

- [SourceAutoRecord](https://github.com/p2sr/sourceautorecord)

### IMPORTANT

Remove the added vscripts before speedrunning! If you don't, your run will be rejected.

## Server

Host on a [ghost server](https://ghost.portal2.sr).

In the pre-launch options:
`svar_set seekers "<seeker one>" "<seeker two>" "<etc>"; svar_set countdown <seconds>; svar_set collisions 0; exec hideandseek/hideandseek; map sp_a3_03`

You can have as many seekers as you like, but if you enable automatic collisions with `svar_set collisions 1`, it is currently only possible to have one (1) seeker.

Replace map with whatever map you want it to be

Replace `<seconds>` with how long the seeker will wait at the start of the map

To play fair as a hider, if you're found, type `found` in console. This can be bound to a key with `bind <key> found`. This is not necessary if you are playing with automatic collisions.

Have fun!
