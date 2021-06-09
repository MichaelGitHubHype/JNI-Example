public class RequestWebsiteBlock {
   static {
      System.loadLibrary("myjni"); // myjni.dll (Windows) or libmyjni.so (Unixes)
   }
   // Native method that receives a Java String and calls C to block it
   private native void requestWebsiteBlock(String msg);
 
   public static void main(String args[]) {
      new RequestWebsiteBlock().requestWebsiteBlock("jetbrains.com");
   }
}
