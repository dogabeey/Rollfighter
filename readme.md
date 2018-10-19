# ROLLFIGHTER

## WoW RP Addon for easier Roll fights.

Rollfighter is World of Warcraft Roleplay Add-On aimed for RPers who use /roll in their fights. It 
uses a configurable system to let players use complex calculations in their fights and automatically
calculates result of an attack according to player class, race, zone or anything you wish so.

Players can configure default roll value, a certain race's attack power etc. using the chat frame(refer **Chat Commands** section). Their **party leader's** configuration is used while calculating.

### Chat Commands

Command prefix of Rollfighter addon is either "/rollfighter" "/rft". For now, Two simple sub-command is used in addon.

#### /rft attack

Simply select a target (player or NPC) and "attack". The game will calculate rolls for both of you and return the result. It can be a critical strike, which is determined by addon configuration. **You can't target a player who is not in your realm, due WoW's addon communication restrictions.** (Well... You actually *can*, but It will be meaningless since other player won't be able to see results)

#### /rft config

Syntax: rft config <config_string> \[<new_value>\]

Rollfighter hasn't got any kind of UI (YET!!) so addon configuration is made from the Chat. You can find config strings under <addonFolder>/definitions.lua (Type without RFT_GLOB. part). Example: **/rft config advantages.race.tauren.defense 50** changes Defense value of all Taurens in your party from 0 to 50, which makes them roll 150 instead of 100 while defending (Well, they're big guys, after all!)

Once changed, configurations persist through game sessions.

### Changelog

None. This is a fresh addon. Yey.

### Help & Feedback

This is my first ever World of Warcraft addon. A lot of features on their way and a lot of codes will be cleansed! Any feedback regarding bugs, new ideas or criticism is greatly appreciated. You can contact me via my personal e-mail: **dogabeey@gmail.com**. Feel free to fork this project(good luck with reading that code, heh1), or you can contact me to be a contrubitor. As a fresh programmer with no freakin' clue, I could use any kind of help. Thank you.
