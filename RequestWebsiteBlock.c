#include <jni.h>
#include <stdio.h>
#include <string.h>
#include "RequestWebsiteBlock.h"

int writeToFile(char *);
char *filename = "/etc/hosts";


JNIEXPORT void JNICALL Java_RequestWebsiteBlock_requestWebsiteBlock(JNIEnv *env, jobject thisObj, jstring inJNIStr) {
   // Step 1: Convert the JNI String (jstring) into C-String (char*)
   const char *inCStr = (*env)->GetStringUTFChars(env, inJNIStr, NULL);
   if (NULL == inCStr) return;

   // Step 2: Perform its intended operations
   printf("In C, the received string is: %s\n", inCStr);
   (*env)->ReleaseStringUTFChars(env, inJNIStr, inCStr);  // release resources

   writeToFile((char *) inCStr);

}


int writeToFile(char *url) {
    FILE *fp = fopen(filename, "a");
    char s[200] = "\n127.0.0.1\t";
    strcat(s, url);
    fputs(s, fp);
    fclose(fp);
    return 0;
}
