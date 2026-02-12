// creator  : C:\ARCHIV~1\BLACKI~1\BGII-S~1\WEIDU.EXE (version 125)
// argument : AGBRUS.DLG
// game     : .
// source   : ./override/AGBRUS.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~AGBRUS~

IF ~True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hey! Gaelan said I was to give you some help raising money, and I've got just the job.~ #62790 */
  IF ~~ THEN REPLY @2 /* ~Ah, what job might this be?~ #62791 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Get lost child!~ #62792 */ /* DO ~SetGlobal("AGBrusNo","GLOBAL",1)~ */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~An elder has been staying here and needs and needs escort back to his village.~ #62793 */
  IF ~~ THEN /* DO ~SetGlobal("AGBrusYes","GLOBAL",1)~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5 /* ~You can find him in the Government District, in the main building. His name is Loron. He's incredibly rich and a hot target to bandits, and your protection would be welcome.~ #62794 */
  IF ~~ THEN REPLY @6 /* ~Sounds interesting, I'll take a look in a bit. Thankyou.~ #62795 */ GOTO 3
  IF ~~ THEN REPLY @7 /* ~Haha! I think I'll go and mug this poor fool and use his money to pay for Gaelan's fees.~ #62796 */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8 /* ~No problem.~ #62797 */
  IF ~~ THEN DO ~AddJournalEntry(@1004,QUEST)
SetGlobal("AG_Loron_Quest","GLOBAL",1)
EscapeArea()
~ /* JOURNAL @9 ~Escorting Loron

Brus, a small boy in the slums, told me if I wanted work and money, I should go and visit Loron in the Government District. He is apparentley in need of some adventurers to escort him safely back to his village. He is allegedly very rich, and may pay well...~ #62798 */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @10 /* ~Urr, sure.~ #62799 */
  IF ~~ THEN DO ~AddJournalEntry(@1005,QUEST)
SetGlobal("AG_Loron_Quest","GLOBAL",1)
EscapeArea()
~  /* JOURNAL @11 ~Escorting Loron

Brus, a small boy in the slums, told me there is a rich man named Loron in the Government District. He says that the man needs an escort back to his village, but I am considering killing him for his cash. Less work, more pay.~ #62800 */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1
  SAY @12 /* ~Fine...~ #62801 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
