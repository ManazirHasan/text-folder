Core java  
  Checked exception and custome exception implementation
  Try with resouces-Autocloseable or closeable Inerface and supperesed exception  
  Test cases example
  Implementation of TreeMap and Priority Queue works 
  What is ThreadLocal segnificant.
  
Custome Checked Exception  
	All the Sub classes of java.lang.Exception except subclasses of RuntimeException are checked exception.

Custome UnChecked or Runtime Exception
	All the subclasses of RunTimeException or subclass of Error are RuntimeException

Implement Autoclosable for try with resouces

Give examples of Immutable classes provided by Java.
 Which design pattern is used when you delegate the exception handling responsibility to the caller.[Class Loader, Bootstrap, Extention, ext-folder -applcation file ]

Loading sequence of static and non static members of a class

java 8(SOFT Date):     Stream API:
			Sequences of elements: 
			It support(on classes) functional-style operations on streams of elements e.g filter,map,			
			Optional class,		
			Functional Interface,, Lambda exp,				
			interface default/static and private(java9)-: 
			(It was not possible to add new functionality to the exsiting interface Without forcing all of its exsting implementation classes to create of implementation of the new methods.
			
			New Date Time API
			
java 9 		Interface private method , Module system, Flow API ,RxJava,
			List.of(a, b,c),StackWalker,StreamApi(takeWhile,dropWhile,ofNullable)
			new methods in CompletableFuture API (delay, timeout)

java 11:   var type allowed in Lambda Parameters:(@NonNull var x) -> process(x),
			New String 	methods(repeat,isBlank,strip, lines)
			
java 12:   New String methods (indent, transform)
			if (obj instanceof String s) {
				int length = s.length();
			}
			Teeing Collector
			File::mismatch
			
java 14/16- 	1.Good way to handle null pointer exception , what exactly was null in given code
			2.public record User(int id, String password) { };
			3.Pattern Matching at language level for instanceof 
			if (obj instanceof String str) {
				int len = str.length();
				// ...
			}
			Static members in inner classes (part of Record type JEP)
			new Object() {
			static record MyData(String data) {};
			public static final int CONSTANT = 1;
			};
			
Java 17 : Sealed Classes and permit,FloatVector.fromArray,SPECIES

java 18 : Simple Web Server
			SimpleFileServer.createFileServer(new InetSocketAddress(9000), path, logLevel).start();
			Cmd Line: jwebserver -p 9000

java 19 : 	Project loom,Virtual Threads(and Structure concurrency) : 
			OS thread not blocked when java threads blocked,
			Virtual threads solve this by having multiple Java threads map to a single OS thread. As a result, OS threads can now be used efficiently to service Java threads that need to do work, and an application can support literally millions of simultaneous connections.
			
			structured concurrency API is for I/O-intensive tasks,where as ForkJoinPool is designed to handle compute-	intensive tasks
			
			Access Foreign Programming language in java - Java new Panama project
			(Foreign Function and Memory APIs)
			language level pattern matching 
				if (o instance record Point (x,y)) {}
			
			Map<String, Integer> map = HashMap.newHashMap(120);
						

1) Jre vs JVM
2) Memory model, Young to Eden
\ynamic vs static binding - Exception in and access modifier rule in overriding 
Serialization-SerializationID 
Array List vs LinkedList (2^3 max int size in array)
Concurrent vs Synchrosed HAshMap
Concurrent hashMap default segment size
fail fat - how to handle (while iterating iternally check modcount() if something modified it throws)
Java 8 feature
what is Funtional interface
consistent hashing, how it works in HashMap

**************************************MULTITHREDIN*****************************************


***********************************************PATTERN************************************

Solid (open/close) - ** example or how it works
Aggregation vs Composition example

Creational- How objects are create
Structe- how objects relate to each others
Behaviou-How objects are communicate with each others




******************************************Spring************************************************
BeanFactory vs Applicationcontext
Spring Interceptors and Filters -- ??
AOP concept - 
cglib vs jdk proxy implementation in spring


scopes - singlton vs prototypes (A->B  with different scopes testing)



******************************************************************************
Rest api:
	Get vs Post in security
	Post vs PUT vs PATCH
		https://www.baeldung.com/cs/http-put-vs-patch		
		POST - Create NEW record
		PUT - If the record exists, update else, create a new record
		PATCH - update
		GET - read
		DELETE - delete
	https vs http

spring scurity- two api is public not not toekn based
Server side load balance  vs client side (Ribon ) load balance --
	
******************************************SpringBoot************************************************

Spring BootStarter
SpringBoot common exception handle	
@SpringBoot, @Service, @Component, @Repository
@Conguration vs @EnableAutoconfiguration
@NoRepositoryBean
Pessimistic vs Optimist -- interview

@Bean vs @Component --



@Composite key in JPA : 

circuit break,and Ribon for many instances in services

How to call Once service to Other service- RestTemplate vs Webclient
two algorith online test- 



*****************************************************HIBERNATE************************************
Hibernate  - Persistance Context(),Managed, Detaced, n+1 issue, lazy and eager loading 


Propagation level vs Isolation LEVEL
Dynamic Query 

Employee table remove all duplicate

types of index in db- primary key, foriegn key, 





java+sponsorship offered -keyword for LinkedIn

