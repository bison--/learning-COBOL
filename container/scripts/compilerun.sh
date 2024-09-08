#!/bin/sh

# get environment variable COMPILE to local variable

COMPILE_FILE=${COMPILE}

# Check if COMPILE_FILE is set to not_set
if [ "$COMPILE_FILE" = "not_set" ]; then
    # i use these because I am lazy and don't want to type the file name every time
    FILE_NAME=helloworld
    FILE_NAME=logger
    FILE_NAME=bottles
    FILE_NAME=wheee1
    FILE_NAME=wheee2
    FILE_NAME=wheee2b
    echo "No file specified, using default file ${FILE_NAME}.cbl"
else
    FILE_NAME=$COMPILE_FILE
fi


echo "Compiling and running ${FILE_NAME}.cbl"

#/src/cobc -free -x -o /build/${FILE_NAME}-exe /src_cobol/${FILE_NAME}.cbl
cd /src && cobc -fixed -fdebugging-line -x -o /build/${FILE_NAME}-exe /src_cobol/${FILE_NAME}.cbl
chmod +x /build/${FILE_NAME}-exe

cd /build
/build/${FILE_NAME}-exe
