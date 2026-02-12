// creator  : C:\ARCHIV~1\BLACKI~1\BGII-S~1\WEIDU.EXE (version 125)
// argument : AGLORON.DLG
// game     : .
// source   : ./override/AGLORON.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~AGLORON~

IF ~Global("AG_Loron_Quest","GLOBAL",2)
//!Global("AG_Loron_Quest","GLOBAL",2)
//!GlobalGT("AGLoronJourney","GLOBAL",0)
//!Global("AGBanditsDead","GLOBAL",7)
//!Global("AGLoronVillage","GLOBAL",1)
//!Global("AGLoronArrived","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Ah, finally some adventures. Will you escort old Loron back to my village?~ #62825 */
  IF ~~ THEN REPLY @2 /* ~I'll gladly escort you to your village, if the payment is right.~ #62826 */ GOTO 3
  IF ~~ THEN REPLY @3 /* ~Of course, lets get going.~ #62827 */ GOTO 3
  IF ~~ THEN REPLY @4 /* ~Ah! Die! I need your money!~ #62828 */ DO ~SetGlobal("AGLoronAttack","LOCALS",1)
																		SetGlobal("AG_Loron_Quest","GLOBAL",99)~ GOTO 1 // SetGlobal("AGBrusYes","GLOBAL",0)  (unused)
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY @5 /* ~Oh no, not MORE bandits!~ #62829 */
  IF ~~ THEN DO ~AddJournalEntry(@1006,QUEST_DONE)
EscapeArea()
~ /* JOURNAL @6 ~Escorting Loron

I tried to kill Loron, but he did a runner. I guess if I still want his money I'll have to pay a visit to his village, which Brus pointed out to me. c~ #62830 */ EXIT
END

/*
  (unused)
IF ~~ THEN BEGIN 2 // from:
  SAY @7 /* ~<NO TEXT>~ #2419 */
  IF ~~ THEN REPLY @2 /* ~I'll gladly escort you to your village, if the payment is right.~ #62826 */ GOTO 3
END
*/

IF ~~ THEN BEGIN 3 // from: 2.0 0.1 0.0
  SAY @8 /* ~Thank you, I appreciate it very much. As gold is not a problem for me, your payment will be sufficient.~ #62831 */
  IF ~~ THEN REPLY @9 /* ~When do we set off?~ #62832 */ DO ~SetGlobal("AG_Loron_Quest","GLOBAL",3)~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @10 /* ~Meet me at the City Gates. Buy any supplies you may need first and we can be off. Once again, I thank you.~ #62833 */
  IF ~~ THEN DO ~AddJournalEntry(@1002,QUEST)
					EscapeArea()~ /* JOURNAL @11 ~Escorting Loron

I accepted to take Loron back to his village, and he offered a decent reward, which will help me pay for Gaelan's fee. He said to meet him at the City Gates.  ~ #62834 */ EXIT
END // SetGlobal("AGBrusYes","GLOBAL",0) (unused)

IF ~Global("AG_Loron_Quest","GLOBAL",3)
~ THEN BEGIN 5 // from:
  SAY @12 /* ~Good to see you made it! I was getting nervous on my own.~ #62835 */
  IF ~~ THEN REPLY @13 /* ~Sorry for any wait you had.~ #62836 */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @14 /* ~Ok, lets begin our journey. I can't wait to leave this city.~ #62837 */
  IF ~~ THEN REPLY @15 /* ~Ok, sounds good to me...~ #62838 */ DO ~SetGlobal("AG_Loron_Quest","GLOBAL",4)
																	StartCutSceneMode()
																	StartCutScene("AGLeave")~ EXIT
  IF ~~ THEN REPLY @16 /* ~Actually, | need a few more supplies. Wait here for a second while I get them.~ #62839 */ EXIT
END

IF ~Global("AG_Loron_Quest","GLOBAL",5)
~ THEN BEGIN 7 // from:
  SAY @17 /* ~Oh no! I knew it! We've been ambushed...protect me!~ #62840 */
  IF ~~ THEN REPLY @19 /* ~Right! Let's take these guys out!~ #62841 */ DO ~SetGlobal("AG_Loron_Quest","GLOBAL",6)~ JOURNAL @18 /* ~<No Text>~ #62176 */ EXIT
  IF ~~ THEN REPLY @20 /* ~Erm...these guys look tough, sort yourself out mate!~ #62842 */ DO ~AddJournalEntry(@1007,QUEST_DONE)
																								SetGlobal("AGLoronAttack","LOCALS",1)
																								SetGlobal("AG_Loron_Quest","GLOBAL",99)
																								EscapeArea()~ EXIT
END

IF ~Global("AG_Loron_Quest","GLOBAL",8)
~ THEN BEGIN 8 // from:
  SAY @21 /* ~Thank you very much, I would have been killed if it wasn't for you. Let's just hurry to Adilthora and I'll give you your reward for such an honorable deed.~ #62843 */
  IF ~~ THEN REPLY @22 /* ~No problem, it was easy.~ #62844 */ DO ~SetGlobal("AG_Loron_Quest","GLOBAL",9)~ GOTO 9
  IF ~~ THEN REPLY @23 /* ~I'm fed up with you...DIE!~ #62845 */ DO ~AddJournalEntry(@1006,QUEST_DONE)
																		SetGlobal("AGLoronAttack","LOCALS",1)
																		SetGlobal("AG_Loron_Quest","GLOBAL",99)
																		EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @24 /* ~Tell me when your ready to move on. I don't want to have to hang around here for more than necessary. Don't leave without me, or else I'll be lost here and I'll make certain you get no reward.~ #62846 */
  IF ~~ THEN EXIT
END

IF ~Global("AG_Loron_Quest","GLOBAL",9)
~ THEN BEGIN 10 // from:
  SAY @25 /* ~You ready to go to Adilthora yet?~ #62847 */
  IF ~~ THEN REPLY @26 /* ~Let me just finish with these bandit corpses.~ #62848 */ EXIT
  IF ~~ THEN REPLY @28 /* ~Ok, let's go.~ #62849 */ DO ~AddJournalEntry(@1003,QUEST_DONE)
														RevealAreaOnMap("AG1000")
														SetGlobal("AG_Loron_Quest","GLOBAL",10)
														StartCutSceneMode()
														StartCutScene("AGVill")~ /* JOURNAL @27 ~Escorting Loron

We had a little trouble with bandits, but they were not too hard to deal with. R~ #62850 */ EXIT
END

// UNUSED AT THE MOMENT

IF ~Global("AGLoronArrived","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY @29 /* ~Ah, we finally made it. I thank you greatly. May we meet again.~ #62851 */
  IF ~~ THEN REPLY @30 /* ~No problem, bye.~ #62852 */ DO ~SetGlobal("AGLoronArrived","GLOBAL",0)
															EscapeArea()~ EXIT
END
