      *> ***************************************************************
      *>****p* samples/logger
      *> Author:
      *>   Brian Tiffin
      *> Date started:
      *>   20150725
      *> Modified: 2017-02-20/02:25-0500 btiffin
      *> License:
      *>   Copyright 2015 Brian Tiffin
      *>   GNU Library General Public License, LGPL, 3.0 (or greater)
      *> Purpose:
      *>   Test subprogram logging
      *> Tectonics:
      *>   cobc -xj logger.cob
      *> SOURCE
      *> ***************************************************************
       identification division.
       program-id. logger.

       environment division.
       configuration section.
       repository.
           function all intrinsic.

       input-output section.
       file-control.
           select testfile
           assign to "loggerfile.txt"
           organization is sequential
           file status is testfile-status
           .

       data division.
       file section.
       fd testfile
          record is varying in size from 0 to 40 characters
             depending on actual.
       01 testline.
          05 databytes pic x occurs 1 to 40 times depending on actual.

       working-storage section.
       01 actual pic 999 value 40.
       01 testfile-real pic xx.
       01 testfile-status redefines testfile-real pic 99.

      *> *****************
       procedure division.
       open output testfile
       display "open output: " testfile-status

       write testline from "this is a log test"
       display "write output: " testfile-status

       close testfile
       display "close output: " testfile-status

       call "appender"

       goback.
       end program logger.
      *> ***************************************************************

       identification division.
       program-id. appender.

       environment division.
       configuration section.
       repository.
           function all intrinsic.

       input-output section.
       file-control.
           select testfile
           assign to log-name  *> variable, not a literal this time
           organization is sequential
           file status is testfile-status
           .

       data division.
       file section.
       fd testfile
          record is varying in size from 0 to 40 characters
             depending on actual.
       01 testline.
          05 databytes pic x occurs 1 to 40 times depending on actual.

       working-storage section.
       01 log-name pic x(14).
       01 actual pic 999 value 40.
       01 testfile-real pic xx.
       01 testfile-status redefines testfile-real pic 99.

      *> *****************
       procedure division.
       move "loggerfile.txt" to log-name
       open extend testfile
       display "open extend: " testfile-status

       write testline from "this is an extend test"
       display "write extend: " testfile-status

       close testfile
       display "close extend: " testfile-status

       goback.
       end program appender.
      *>****