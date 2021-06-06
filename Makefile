# start at src/myjni
javac -h . HelloJNI.java
gcc -I"$JAVA_HOME/include" -I"$JAVA_HOME/include/darwin" -dynamiclib -o libhello.dylib HelloJNI.c
cd ..
gcc -I"$JAVA_HOME/include" -I"$JAVA_HOME/include/darwin" -dynamiclib -o libhello.dylib myjni/HelloJNI.c
java -Djava.library.path=. myjni/HelloJNI
