#Weapon Mod 1.1.0

This addon lets players remove weapon mods from their weapons and apply them to other weapons. 

For example, you can take an ACOG scope off of an M4A1 and put it on a SA58, or add Gold Paint to a revolver, etc.

**note**:It only works with existing weapons, so you can't put a suppressor on a DMR or anything like that.

If you want to see some visual footage, check out this [imgur gallery](http://imgur.com/a/BmyqK "imgur gallery") or this [video on twitch.tv](http://www.twitch.tv/mudzereli/c/4656501 "video"):

-----

##Features:
- configurable so you set your own combinations
- easy to use, just right click and remove or add the part
- admin list for adding modifications without the item

**note**: Due to the way saving data works, unattached weapon modifications do not save across server restarts, so the player must attach the part to a weapon again before it will save. Players are notified of this whenever they remove a modification from a weapon or whenever they have their weapon mod inventory open.

-----

##Installation
 1. [download the files](https://github.com/mudzereli/DayZEpochWeaponMods/archive/master.zip "download files")
 2. extract the **addons** and **overwrites** folder from the downloaded zip file into your **mission file root**
 3. add this line to the end of your mission file init.sqf.
   * ```call compile preprocessFileLineNumbers "addons\wmod\init.sqf";```
 4. edit **addons\wmod\config.sqf** to configure some options such as what guns it works with etc.

-----

##Configuration

To edit the configuration options, open **addons\wmod\conifg.sqf**

Some of the more complex configuration options are shown below (others are in the config.sqf)

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

**DZE_WEAPON_MOD_COMBINE FORMAT**

```
DZE_WEAPON_MOD_COMBINE = [
    [_combined,_attachments],
    [_combined,_attachments],
    [... more info here ...]
];
```

 parameter    | description                                                         |  type  | example
--------------|---------------------------------------------------------------------|--------|--------
_combined     | the name of the attachment to combine the other attachments into    | string | "CCO Sight"
_attachments  | array of attachments to combine into the combined attachment        | array  | ["Kobra Sight"]

-----

##Issues/FAQ

**Users get kicked for publicvariable restriction #0**

1. find your battleye filter directory
2. open publicvariable.txt
3. the first line should say 5 "" (... other stuff ...)
4. change it to 5 "" !"DZE_WMOD_INVENTORY" (... other stuff ...)

-----
##Change Log

version|change
-------|-------
1.1.0  | unused mods now persist after logout (but not server restart) <br> better inventory management system <br> more configurable options
1.0.1  | bug fix for attachment removal
1.0.0  | first release 
