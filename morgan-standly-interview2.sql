Sample: 1

package com.java;

import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class SingletonLazyAndThreadSafe {

	private static final SingletonLazyAndThreadSafe INSTANCE1 = new SingletonLazyAndThreadSafe();

	private SingletonLazyAndThreadSafe () {
	}

	public static SingletonLazyAndThreadSafe getInstance() {
		//Thread.sleep(1000);
		return Inner.INSTANCE;
	}
	
	public int division(int i, int j) throws InterruptedException{
		if(Objects.nonNull(j)) {
			return i/j;
		} else {
			throw new NullPointerException();
		}
		
	}

	static class Inner {
		private static final SingletonLazyAndThreadSafe INSTANCE = new SingletonLazyAndThreadSafe();//Bill plough
	}

	public static void main(String[] args) {
		
//		SingletonLazyAndThreadSafe.getInstance().division(1, 0);
		
//		ExecutorService es = Executors.newFixedThreadPool(5);
//		for(int i=0; i<4; i++) {
//			es.submit(()-> {
//				try {
//					System.out.println(SingletonLazyAndThreadSafe.getInstance().hashCode());
//				} catch (InterruptedException e) {
//					e.printStackTrace();
//				}
//			});
//		}
//		es.shutdown();
	}
}



package com.java;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class Student {
	
	private final int sId;
	private final List<Integer> ints;
	
	public Student(int sId, List<Integer> ints) {
		super();
		this.sId = sId;
		this.ints = ints;
		
	}

	public int getsId() {
		return sId;
	}

	public List<Integer> getInts() {
		List<Integer> listCopy = new ArrayList<>();
		for(int i: ints) {
			listCopy.add(i);
		}
//		return Collections.unmodifiableList(listCopy);
		return listCopy;
	}
}
___________________________________________________________________________________________________________
Sample: 2
class B implements A
{

}


a. A a = new A(); // invalid
b. A a = new B(); // valid
c. B b = new A(); // not valid
d. B b = new A(){};// valid
e. A a = new A(){};// valid


String args[]

public static void main(String...args)
{
 
}

public static void main(String[] args){
}



class Something{
add(int a, int b, int c) {
    //stmt1
}

add(int a, int b)
{
//stmt2
}  
add(int... a) {
}  //stmt3
}
a. add(1,2,3,4)
b. add(1,2,3)
c. add(1,2)
d. add(1,2,3,4,5)
e. add()








add(int a, int..b)

add(1)


add(int..a, int b) invalid



class Student
{
   int rollNo;
   


}

class StudentComparator<Student> implements Comparator
{

   int compare(Student obj1,Student obj2)
{
     return obj1.getRollNo()-obj2.getRollNo();

}
   

}

 5 1 6 4

StudentComparator comp=new StudentComparator();

Map<Student,Object> map=new TreeMap(comp)

Inorder Traversal  Left root right
              5
         1        6
            4

 
1 4 5 6

_____________________________________________________________________________________________________
Sample 3:
Class Student {

Int roll_num;

//constructor
}

TreeMap<Integer, Student> map = new TreeMap<>();
map.put(1, new Student(1));
map.put(4, new Student(4));
map.put(3, new Student(3));

Enum Car implements Runnable{

Ciaz;
Creta;
Swift;





}


Class Car
{
  
  enum

 }

Market
Producer  -1..n  – 
Consumer - 1..n –
Class Producer implement Runnable
{
  BlockingQueue sharedQueue;
  Int n;

   Producer(BlockingQueue sharedQueue, int n)
    {
	 this.sharedQueue= sharedQueue;
	this.n=n;
   }
  
Public void run()
{
    Try{

	for(int i=0;i<n;i++)
  		{
			sharedQueue.put(i);
System.out.println(“placed”);
		}
   }

catch(Exception e)
{
System.out.println(“exception”);

}
}



Class Consumer implement Runnable
{
  BlockingQueue sharedQueue;

   Consumer(BlockingQueue sharedQueue)
    {
	 this.sharedQueue= sharedQueue;
    }
  
Public void run()
{
    Try{

		sharedQueue.taken(i);
System.out.println(“placed”);
   }
catch(Exception e)
{
System.out.println(“exception”);

}
}




Class Demo 
{

Public static void main(String [] args)
{

   BlockingQueue sharedQueue = new LinkedBlockingQueue();
   Thread t1 = new Thread ( new Producer (sharedQueue));
  Thread t2 = new Thread ( new Consumer(sharedQueue));
t1.start();
t2.start();
t2.join();
System.out.
}

}

