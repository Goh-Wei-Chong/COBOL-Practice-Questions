       IDENTIFICATION DIVISION.
       PROGRAM-ID. Countdown.
       
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-NAME PIC X(100).
           01 WS-START PIC 9.

       PROCEDURE DIVISION.
           A-PARA.
           DISPLAY 'Enter your name : 'ACCEPT WS-NAME.
           DISPLAY 'Enter the count-down start value'ACCEPT WS-START.
           DISPLAY 'Getting ready to display your name.'.
           PERFORM B-PARA VARYING WS-START 
           FROM WS-START BY -1 UNTIL WS-START = 0.
           DISPLAY 'Your name is 'WS-NAME.
           STOP RUN.

           B-PARA.
           DISPLAY WS-START.

