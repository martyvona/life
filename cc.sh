# Closure Compiler
#
# To compile, get the script from http://closure-compiler.googlecode.com/files/compiler-latest.zip
# And set CLOSURE_COMPILER_JAR to point to its jarfile

FILENAME="life-min.js"

ls -l $FILENAME

java -jar $CLOSURE_COMPILER_JAR \
    --compilation_level ADVANCED_OPTIMIZATIONS\
    --language_in ECMASCRIPT6_STRICT\
    --js_output_file $FILENAME\
    --warning_level VERBOSE\
    --js draw.js life.js formats.js macrocell.js main.js

ls -l $FILENAME
