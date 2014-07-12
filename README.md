#Weapon Mod 1.0.0

This addon lets players remove weapon mods from their weapons and apply them to other weapons. 

For example, you can take an ACOG scope off of an M4A1 and put it on a SA58, or add Gold Paint to a revolver, etc.

For an example, check out this [video on twitch.tv](http://www.twitch.tv/mudzereli/c/4645866 "video"):

-----

##Features:
- configurable so you set your own combinations
- easy to use, just right click and remove or add the part
- admin list for adding modifications without the item

**note**: Due to the way saving data works, unattached weapon modifications do not save across logouts or server restarts, so the player must attach the part to a weapon again before it will save. Players are notified of this whenever they remove a modification from a weapon.

-----

##Installation
 1. [download the files](https://github.com/mudzereli/DayZEpochWeaponMods/archive/master.zip "download files")
 2. extract the **addons** and **overwrites** folder from the downloaded zip file into your **mission file root**
 3. add this line to the end of your mission file init.sqf.
   * ```call compile preprocessFileLineNumbers "addons\wmod\init.sqf";```
 4. edit **addons\wmod\config.sqf** to configure some options such as what guns it works with etc.

-----

##Change Log

version|change
-------|-------
1.0.0  | first release 

-----

##Configuration
**DZE_WEAPON_MODS FORMAT**
```
DZE_WEAPON_MODS = [
     [_attachment,_base,_upgrade],
     [_attachment,_base,_upgrade],
     [... more info here ...]
];
```

 parameter    | description                                                         |  type  | example
--------------|---------------------------------------------------------------------|--------|--------
_attachment   | the name of the weapon attachment                                   | string | "GP25 GL"
_base         | the classname that the attachment is put on to                      | string | "AK_74"
_upgrade      | the classname the item becomes after the attachment is put on       | string | "AK_74_GL"