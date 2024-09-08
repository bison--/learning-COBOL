# LEARNING COBOL

Solving the [Coding101](https://github.com/chaosdorf/coding101) challenge in COBOL with a basic docker-setup so you don't have to worry about that.   
Initial Post: https://mastodon.social/@bison/113098785359121492

## use

Place your codes in the `src` directory with the `.cbl` file extension.

## run

You can use either a parameter to compile your file or use the hard-coded filenames in `container/scripts/compilerun.sh`.

With parameter:
```bash
docker-compose run --rm -e COMPILE=file_name_without_extension cobol_test
```

Alternatively change the file to compile in `container/scripts/compilerun.sh` then run:  
```bash
docker-compose run --rm cobol_test
```

## WARNING

I had to set the COBOL compiler to `cobc -fixed`, because in `cobc -free` mode I could not use comments.  
This also means, that the max number of characters per code-line is limited to 80 characters!

## Resources

* Tutorial: https://www.tutorialspoint.com/cobol/index.htm
* Manual: https://gnucobol.sourceforge.io/guides/OpenCOBOLProgrammersGuide-23Jan2010.pdf
* Manual: https://gnucobol.sourceforge.io/doc/gnucobol.html

### "INSPIRATIONS"

* Jetbrains IntelliJ COBOL Plugin:  https://plugins.jetbrains.com/plugin/24811-zowe-cobol-language-support
* Container: https://github.com/IBM/kubernetes-cobol/tree/master/docker
* 99BOTTLES: https://www.99-bottles-of-beer.net/language-cobol-1766.html
