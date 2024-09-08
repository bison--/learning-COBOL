        IDENTIFICATION DIVISION.
        PROGRAM-ID. WHEEE1.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 AMOUNT PIC 9(3).
        01 DRAWCHAR PIC X(1) VALUE '*'.
        01 STARS PIC A(80).
        01 STAR-POINTER PIC 99 VALUE 1.

        PROCEDURE DIVISION.
            DISPLAY 'Enter an amount: ' WITH NO ADVANCING.
            ACCEPT AMOUNT FROM CONSOLE.

            PERFORM AMOUNT TIMES
                STRING DRAWCHAR DELIMITED BY SIZE
                    INTO STARS
                    WITH POINTER STAR-POINTER
                    ON OVERFLOW DISPLAY 'OVERFLOW!'
                END-STRING

                DISPLAY STARS
            END-PERFORM.

            STOP RUN.
