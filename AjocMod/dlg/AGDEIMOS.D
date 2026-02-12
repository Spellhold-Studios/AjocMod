// creator  : C:\ARCHIV~1\BLACKI~1\BGII-S~1\WEIDU.EXE (version 125)
// argument : AGDEIMOS.DLG
// game     : .
// source   : ./override/AGDEIMOS.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~AGDEIMOS~

IF ~Global("deimos2Authorities","MYAREA",0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hi, I'm Deimos. I have lived in this cave ever since my old home banished me.~ #62804 */
  IF ~~ THEN REPLY @2 /* ~Greetings, why were you exiled?~ #62805 */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3 /* ~I was accused of stealing. Stealing someone's work.~ #62806 */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4 /* ~But I didn't.~ #62807 */
  IF ~~ THEN DO ~SetGlobal("deimos2Authorities","MYAREA",1)
SetGlobal("AG_8000FirstVisit","MYAREA",2)
StartCutSceneMode()
StartCutScene("agthief")
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6 /* ~Give what back?~ #62809 */
  IF ~~ THEN REPLY @7 /* ~The gold you just took!~ #62810 */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @8 /* ~I didn't take any gold. I am a generous person, so have 1000 free gold.~ #62811 */
  IF ~~ THEN REPLY @9 /* ~You liar!~ #62812 */ DO ~GivePartyGold(1000)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @10 /* ~Ok it was an accident. Like the thing in my home town!~ #62813 */
  IF ~~ THEN REPLY @11 /* ~Just give it back, or else the authorities will get you if I don't!~ #62814 */ GOTO 6
END

IF ~Global("deimos2Authorities","MYAREA",2)
!GlobalGT("deimos2","MYAREA",0)~ THEN BEGIN 6 // from: 5.0
  SAY @12 /* ~Authorities...uh oh!~ #62815 */
  IF ~~ THEN DO ~SetGlobal("deimos2Authorities","MYAREA",2)~ EXIT
END

IF ~False()
~ THEN BEGIN 7 // from:
  SAY @13 /* ~Deano...noooo...it was an accident....I never meant too...!!~ #62816 */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("agdemdie")
~ EXIT
END

IF ~Global("deimos2","MYAREA",2)
~ THEN BEGIN 8 // from:
  SAY @14 /* ~I'm back. I had to change my name, for legal reasons. You will never be rid of me!~ #62817 */
  IF ~~ THEN DO ~SetGlobal("deimos2","AG8000",3)
~ EXTERN ~AGDEANO~ 2
END

IF ~Global("deimos2Authorities","MYAREA",1)~ THEN BEGIN 2.5 // from: 1.0
  SAY ~...~
  IF ~~ THEN REPLY @5 /* ~Hey! I saw that! Give it back right now!~ #62808 */ GOTO 3
END
