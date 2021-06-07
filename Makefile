export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-16.0.1.jdk/Contents/Home
gcc -I"$JAVA_HOME/include" -I"$JAVA_HOME/include/darwin" -dynamiclib -o libmyjni.dylib TestJNIPrimitive.c
java -Djava.library.path=. TestJNIPrimitive
