      * this is NOT how its done in COBOL!
      * there is a function for it
      * this is only for the challenge
        IDENTIFICATION DIVISION.
        PROGRAM-ID. REVERSE.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 AMOUNT PIC 9(3).
        01 USER-TEXT PIC A(80).
        01 FINAL-TEXT PIC A(80).
        01 POS-SOURCE-POINTER PIC 99 VALUE 1.
        01 POS-TARGET-POINTER PIC 99 VALUE 1.

        PROCEDURE DIVISION.
            DISPLAY 'Enter Text: ' WITH NO ADVANCING.
            ACCEPT USER-TEXT FROM CONSOLE.

            SET AMOUNT TO LENGTH USER-TEXT.
            SET POS-TARGET-POINTER TO AMOUNT.

            PERFORM AMOUNT TIMES
                STRING USER-TEXT(POS-SOURCE-POINTER:1) DELIMITED BY SIZE
                    INTO FINAL-TEXT
                    WITH POINTER POS-TARGET-POINTER
                    ON OVERFLOW DISPLAY 'OVERFLOW!'
                END-STRING

                ADD 1 TO POS-SOURCE-POINTER
                SUBTRACT 2 FROM POS-TARGET-POINTER
            END-PERFORM.

            DISPLAY FINAL-TEXT

            STOP RUN.
