Check 075279D1
Auto 1
  10 REM BEEP
  20 REM (c)2015 deKay
  30 REM dekay.co.uk
  40 REM CSSCGC 2015
  50 REM No aardvarks were harmed creating this game
  90 CLS
 100 PAPER 1: INK 7: BORDER 1: CLS
 110 BEEP 1,0
 120 PRINT AT 1,7; INVERSE 1; FLASH 1;"Welcome to BEEP"
 130 PRINT : PRINT "  by deKay for the CSSCGC 2015"
 140 PRINT "visit him on'tweb at dekay.co.uk"
 150 PRINT : PRINT AT 6,9; FLASH 1;"INSTRUCTIONS"
 160 PRINT : PRINT " Each letter on your keyboard   corresponds to a different BEEP.Except, they're all the same andnot different at all. Except oneof them is."
 170 PRINT " You have four keypresses, then have to choose the letter which is different to the others."
 180 PRINT : PRINT " Press the letter 5 to start"
 200 REM Wait for button press
 210 PAUSE 0
 220 IF INKEY$<>"5" THEN GO TO 220
 900 PAUSE 0
1000 REM Lets set up the BEEPs
1010 LET b=INT (RND*26)+1
1020 REM PRINT b
1030 REM IF INKEY$<>CHR$ (b+96) THEN GO TO 1030
1050 CLS
1060 PRINT "Let us begin!"
1100 REM Loop
1110 FOR l=1 TO 4
1120 PRINT "Press letter key number ";l
1125 PAUSE 0
1130 IF INKEY$<CHR$ (97) OR INKEY$>CHR$ (122) THEN GO TO 1130
1140 IF  CODE (INKEY$)-96=b THEN BEEP 1,1: GO TO 1200
1150 BEEP 1,0
1200 NEXT l
1300 REM You've had your chances!
1310 PRINT : PRINT FLASH 1;"That's all folks!"
1320 PRINT : PRINT "Time to guess. Which letter?"
1330 PRINT
1350 INPUT k$
1400 IF  CODE (k$)-96=b THEN PRINT "Correct!"
1450 IF  CODE (k$)-96<>b THEN PRINT "Wrong! The correct answer was ";CHR$ (b+96)
1500 PRINT : PRINT "(press a key to play again)"
9000 PAUSE 0
9100 GO TO 10
