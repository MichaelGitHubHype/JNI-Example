
run:
	export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-16.0.1.jdk/Contents/Home
	sleep 1
	gcc -I$$JAVA_HOME/include -I$$JAVA_HOME/include/darwin -dynamiclib -o libhello.dylib HelloJNI.c
	sleep 1
	java -Djava.library.path=. HelloJNI

