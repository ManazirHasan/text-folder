import java.util.*;
import java.lang.*;
public class MyClass {
    public static void main(String args[]) {
      int x=10;
      int y=25;
      int z=x+y;
      System.out.println("Sum of x+y = " + z);
      //1,3,5,7,9,7,5,3,1
      
      for(int i=0;i<9;i++){
          
          int k=i*2+1;
         if(i < 4){
             
          for(int j=0;j<k;j++){
              
              System.out.print("*");
              
          }
              System.out.println("");
        }
    
          if(i>=4 ){
              int m=9-i;
          int p=m*2-1;
          for(int j=0;j<p ;j++){
              
              System.out.print("*");
              
          }
          System.out.println("");
          }
          
          
          
          
      }
      

/*    Print the below pattern:
    *
   ***
  *****
 *******
*********
*******
  *****
   ***
    *
*/

/*


*
***
*****
*******
*********
*******
*****
***
*

*/

/*

Write a program to count the occurrences of each character for the string 
"Pneumonoultramicroscopicsilicovolcanoconiosis"


*/

Character[] str = {'P','n','e','u','m','o','n','o','u','l','t','r','a','m','i','c','r','o','s','c','o','p','i','c','s','i','l','i','c','o','v','o','l','c','a','n','o','c','o','n','i','o','s','i','s'};
System.out.println("[string ]"+str);

frequency(str);

    }
    
    private static void frequency(Character[] str) {
          
          //Charector[] charStr= str.toArray();
          int i=0;
          Map<Character,Integer> frequeecyOfChar = new HashMap<Character,Integer>();
          while(i<str.length){
              if(frequeecyOfChar.containsKey(str[i])){
                  int count = frequeecyOfChar.get(str[i]);
                  count=count+     1;
                  frequeecyOfChar.put(str[i],count);
                  
              }else {
                  
                  frequeecyOfChar.put(str[i],1);
              }
              i++;
              
              
          }
        
        System.out.println("frequeecyOfChar"+frequeecyOfChar);
        
    }
}