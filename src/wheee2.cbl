        IDENTIFICATION DIVISION.
        PROGRAM-ID. WHEEE2.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 AMOUNT PIC 9(3).
        01 AMOUNT-DOWN PIC 9(3).
        01 DRAWCHAR PIC X(1) VALUE '*'.
        01 STARS PIC A(80).
        01 STAR-POINTER PIC 99 VALUE 1.

        PROCEDURE DIVISION.
            DISPLAY 'Enter an amount: ' WITH NO ADVANCING.
            ACCEPT AMOUNT FROM CONSOLE.
            SET AMOUNT-DOWN TO AMOUNT.

            SUBTRACT 1 FROM AMOUNT-DOWN.
      *      DISPLAY 'AMOUNT-DOWN: ' AMOUNT-DOWN.

            PERFORM AMOUNT TIMES
                STRING DRAWCHAR DELIMITED BY SIZE
                    INTO STARS
                    WITH POINTER STAR-POINTER
                    ON OVERFLOW DISPLAY 'OVERFLOW!'
                END-STRING

                DISPLAY STARS
            END-PERFORM.

      * MOVE CURSOR 1 BACK
            SUBTRACT 1 FROM STAR-POINTER

            PERFORM AMOUNT-DOWN TIMES
                STRING ' ' DELIMITED BY SIZE
                    INTO STARS
                    WITH POINTER STAR-POINTER
                    ON OVERFLOW DISPLAY 'OVERFLOW!'
                END-STRING
      * move cursor back: the one concat advanced + 1 back
                SUBTRACT 2 FROM STAR-POINTER

                DISPLAY STARS
            END-PERFORM.

            STOP RUN.
