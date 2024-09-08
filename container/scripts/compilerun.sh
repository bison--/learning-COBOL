#!/bin/sh

FILE_NAME=helloworld
FILE_NAME=logger
FILE_NAME=bottles
FILE_NAME=wheee1
FILE_NAME=wheee2
FILE_NAME=wheee2b

echo "Compiling and running ${FILE_NAME}.cbl"

cd /src && cobc -fixed -fdebugging-line -x -o /build/${FILE_NAME}-exe /src_cobol/${FILE_NAME}.cbl
#/src/cobc -free -x -o /build/${FILE_NAME}-exe /src_cobol/${FILE_NAME}.cbl
chmod +x /build/${FILE_NAME}-exe
cd /build
/build/${FILE_NAME}-exe
