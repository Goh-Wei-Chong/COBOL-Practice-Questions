       IDENTIFICATION DIVISION.
       PROGRAM-ID. IterCalc.
       
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-CNT PIC 9(9) VALUE 0.
           01 WS-CALC PIC 9(9).
           01 WS-FIRSTNUMBER PIC S9(9).
           01 WS-SECONDNUMBER PIC S9(9).
           01 WS-OPERATOR PIC X(1).
           01 WS-RESULT PIC S9(9).
       
       PROCEDURE DIVISION.
           A-PARA.
           DISPLAY 'Enter the number of calcs required : 'ACCEPT WS-CALC.
           PERFORM B-PARA WITH TEST BEFORE UNTIL WS-CNT=WS-CALC.
           STOP RUN.

           B-PARA.
           DISPLAY 'Enter First Number : 'ACCEPT WS-FIRSTNUMBER.
           DISPLAY 'Enter Second Number : 'ACCEPT WS-SECONDNUMBER.
           DISPLAY 'Enter Operator : 'ACCEPT WS-OPERATOR.
           
           IF WS-OPERATOR = '+' THEN
           ADD WS-FIRSTNUMBER TO WS-SECONDNUMBER GIVING WS-RESULT.
           
           IF WS-OPERATOR = '-' THEN
           SUBTRACT WS-SECONDNUMBER FROM WS-FIRSTNUMBER GIVING WS-RESULT.

           IF WS-OPERATOR = '*' THEN
           MULTIPLY WS-FIRSTNUMBER BY WS-SECONDNUMBER GIVING WS-RESULT.

           IF WS-OPERATOR = '/' THEN
           DIVIDE WS-FIRSTNUMBER BY WS-SECONDNUMBER GIVING WS-RESULT.

           DISPLAY 'Result is 'WS-RESULT.
           ADD 1 TO WS-CNT.