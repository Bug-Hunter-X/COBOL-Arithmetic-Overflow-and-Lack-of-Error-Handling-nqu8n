01  WS-DATA PIC 9(5) VALUE 12345.
01  WS-DATA-OVERFLOW PIC 9 VALUE 0.

     * Some COBOL statements here

     IF WS-DATA >= 99999 THEN
         MOVE 1 TO WS-DATA-OVERFLOW
         DISPLAY "Warning: WS-DATA approaching maximum value!" 
     ELSE
         ADD 1 TO WS-DATA
     END-IF.
     IF WS-DATA-OVERFLOW = 1 THEN
         DISPLAY "Error: WS-DATA exceeded maximum value!" 
         STOP RUN.
     END-IF.