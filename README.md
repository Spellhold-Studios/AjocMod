[![Release](https://img.shields.io/github/v/release/Spellhold-Studios/AjocMod?include_prereleases&color=%2392403a)](https://github.com/Spellhold-Studios/AjocMod/releases/latest)
[![Published](https://img.shields.io/github/release-date-pre/Spellhold-Studios/AjocMod?display_date=published_at&label=published&color=%2392403a)](https://github.com/Spellhold-Studios/AjocMod/releases/latest)
[![Downloads](https://img.shields.io/github/downloads/Spellhold-Studios/AjocMod/total?color=%2392403a)](https://github.com/Spellhold-Studios/AjocMod/releases)
[![Platform](https://img.shields.io/badge/platform-Windows%20%a0%20macOS%20%a0%20Linux-%2392403a)](https://github.com/Spellhold-Studios/AjocMod/releases)
[![Games](https://img.shields.io/badge/games-BG2%20%a0%20BGT-%2392403a)](https://github.com/Spellhold-Studios/AjocMod/releases)
[![Language](https://img.shields.io/badge/language-en%20%a0%20de%20%a0%20es%20%a0%20it%20%a0%20ru-%2392403a)](https://github.com/Spellhold-Studios/AjocMod/releases)

<!--
Badges white space separator: %20%a0%20
Badges ":" (colon) symbol: %3A
Badges "-" (hyphen) symbol: --
Games full list: BG1 BG2 BGT BG%3AEE SoD BG2%3AEE EET IWD1 IWD2 IWD%3AEE PST PST%3AEE
IETF language tags: https://spellhold-studios.github.io/assets/docs/ietf-lang-tags.pdf
Common language tags: en cs de es fr it ja ko pl pt--BR ru zh--CN zh--TW
Why some badges update slowly: https://github.com/pujux/badge-it/issues/78
-->

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/Spellhold-Studios/Spellhold-Studios.github.io/main/assets/images/shs-corner-logo.svg" />
  <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/Spellhold-Studios/Spellhold-Studios.github.io/main/assets/images/shs-corner-logo.svg" />
  <img alt="SHS logo" src="https://raw.githubusercontent.com/Spellhold-Studios/Spellhold-Studios.github.io/main/assets/images/shs-corner-logo.svg" width="212" height="132">
</picture>

# Ajoc's Minimod

*A Spellhold Studios mod for Baldur's Gate&nbsp;II*

<br>

[<img alt="Download" src="https://raw.githubusercontent.com/Spellhold-Studios/Spellhold-Studios.github.io/main/assets/buttons/download.svg" height="28">](https://github.com/Spellhold-Studios/AjocMod/releases/latest)&nbsp;
[<img alt="Readme" src="https://raw.githubusercontent.com/Spellhold-Studios/Spellhold-Studios.github.io/main/assets/buttons/readme.svg" height="28">](https://spellhold-studios.github.io/readmes/ajocmod/ajocmod-readme.txt)&nbsp;
[<img alt="Webpage" src="https://raw.githubusercontent.com/Spellhold-Studios/Spellhold-Studios.github.io/main/assets/buttons/webpage.svg" height="28">](https://spellhold-studios.github.io/)&nbsp;
[<img alt="Discord" src="https://raw.githubusercontent.com/Spellhold-Studios/Spellhold-Studios.github.io/main/assets/buttons/discord-blue.svg" height="28">](https://discord.gg/pE2Njbdb2a)

## Introduction

This is an old mod that adds a medium-sized quest to Shadows of Amn, along with new areas, monsters, and items. The quest starts in Athkatla, where you are asked to escort a rich man who is being hunted by mages.

While Ajoc's Minimod originally required The Darkest Day mega-mod, this version can be installed separately.

*Please check the complete [Readme](https://spellhold-studios.github.io/readmes/ajocmod/ajocmod-readme.txt) to learn more about this mod before installation.*

## Key features

- A medium-sized quest
- Brand-new areas
- New monsters
- New items
- A couple of mini quests

## Credits

<!-- double space after each credits **Heading** if you don't need lists -->

**Author**  

- Ajoc

**Contributors**  

- hlidskialf &nbsp;&ndash;&nbsp; mod resurrection (up to version 1.6.3)
- Leomar &nbsp;&ndash;&nbsp; maintenance (versions 1.6.4&ndash;1.6.5)
- 11jo &nbsp;&ndash;&nbsp; maintenance (version 1.7)
- Lollorian &nbsp;&ndash;&nbsp; bug fixes
- Miloch &nbsp;&ndash;&nbsp; script fixes
- Ikki &nbsp;&ndash;&nbsp; EE compatibility

**Translators**  

- **German**:&nbsp; Rumpelstilz
- **Italian**:&nbsp; Ilot
- **Russian**:&nbsp; Brodiaga, Alex, AERIE.RU
- **Spanish**:&nbsp; Clan REO

**Special thanks**  

- PO AND MINTO, obviously.
- LimE, for the free area graphics.
- People who gave me ideas on the TDD boards and emailed me.
- Kai, for an item submission.
- TeamBG, for being the centre of it all.
- KenTeamBG, for starting it all.
- TheoTeamBG, for IETME.
- Oarsome, for being the best tester ever.
- Jaysyn, for several submissions.
- Death, for an item submission.
- Deano, for the adverts and interview.
- Grand-Pas, for starting this off with me.
- Lee Watts who did some base mod and weidu tweaks to improve the mod.

## Version History

v1.7 (February 2026)
- Regular journal entries to quests
- Cre corrections
- Autotra/Designated/Label/WeiduAutoPackager/Requirepredicate/Metadata
- ReallyForceSpell instead of Spell and ForceSpell
- PVRZ for EE and argent77 index to avoid duplicates.
- BWP fix included
- Item fixes (I had to find a workaround to make companions' rings work properly, you may want to take a look at it to see if you have better ideas).
- Reorganization of script actions (Destroyself(), EscapeArea(), etc.)
- Freddy_Gwendo function for EE item restrictions
- Implementation of spells with prefixes and only as resources
- Corpae spells work as expected
- AG0042 uses the AR0042 asset without duplicating everything.
- Making some dialogues a little more reliable
- Making quest starts a little more reliable
- Preliminary implementation of worldmap addition, but commented out

v1.6.6 (22 December 2016 by Ikki)
- the batch file are deprecated thanks to HANDLE_TILESETS
- the tiz file and tisunpack have been moved to a TIZ folder
- ( you can delete the tiz and tisunpack in the are folder in the original mod)
- HANDLE_CHARSETS is added for the translation
- iconv is added in the languages folder
- the readme was commented to streamline the installation
- no chapter check so it's EET compatible
- you need a new weidu (i have put a new one)

v1.6.5 (05 April 2010 by Leomar)
- Lollorian's fixed typo in PlaySound() - FF_M09 -> EFF_M09 in AGCAVAR2.BAF
- Reordered the version history

v1.6.4 (01 April 2010 by Leomar)
- Lollorian's lightning and demons typo fixes - AGCOOLCO.BAF, AGDEMDIE.BAF
  (http://www.shsforums.net/topic/42220-fixes-for-the-big-fixpack/page__view__findpost__p__482735)
- Moved TP2 into the mod folder
- Updated to WeiDU v215

v1.6.3
- Fixed Loron's Encounter with Renfeld
- Deleted corrupted ar0042.are and added AG0042.are for compatibility
- Moved tisunpack.exe into the folder are
- Corrected Uninstaller.bat
- Added README-command
- Updated to WeiDU v211

v1.6.2
- Added Italian translation (Thanks Ilot)
- Small fixes in cre-files
- Added VERSION-flag
- Added WeiDU v210

V1.6.1
- Added Russian translation (Thanks Brodiaga, Alex & AERIE.RU)
- Added German translation (Thanks Rumpelstilz)

V1.6.0
- With Spanish translation. Much thanks to Clan REO!
  (Sorry for the delay on this gang, but I hate working with .tra files)

## Spoiler

OK, if you want to get straight into te action, go to the City Gates.
- Go into the small inn.
- Go upstairs.
- Speak to the guy named Ademoth.
Good luck!

