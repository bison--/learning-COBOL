# LEARNING COBOL

Solving the [Coding101](https://github.com/chaosdorf/coding101) challenge in COBOL with a basic docker-setup so you don't have to worry about that.   
Initial Post: https://mastodon.social/@bison/113098785359121492  

## run

YOu can use either a parameter to compile your file or the hard-coded filenames in the `container/scripts/compilerun.sh`.

With parameter:
```bash
docker-compose run --rm -e COMPILE=file_name_without_extension cobol_test
```

Alternatively change the file to compile in `container/scripts/compilerun.sh` then run:  
```bash
docker-compose run --rm cobol_test
```

## Resources

* Tutorial: https://www.tutorialspoint.com/cobol/index.htm
* Manual: https://gnucobol.sourceforge.io/guides/OpenCOBOLProgrammersGuide-23Jan2010.pdf
* Manual: https://gnucobol.sourceforge.io/doc/gnucobol.html

### "INSPIRATIONS"

* Container: https://github.com/IBM/kubernetes-cobol/tree/master/docker
* 00BOTTLES: https://www.99-bottles-of-beer.net/language-cobol-1766.html
* Jetbrains IntelliJ COBOL Plugin:  https://plugins.jetbrains.com/plugin/24811-zowe-cobol-language-support

