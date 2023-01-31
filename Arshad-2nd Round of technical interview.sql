1-	What is distributed Transaction ?
2-	Does it apply to only database(s) ? [Database, Message MQ]

3-	What is ACID property , explain?
4-	What is durability and how to achieve it?
	[I discussed about Primary and Backup DB servers...may be not correct]

5-	What are Transaction logs in database ?
6-	What are they used for ? [For data replication to new DB]

7-	What are the isolation levels in database transaction ?
		[I explained Dirty Read, Repeatable Read and Phantom read and then isolation levels....READ_UNCOMMITED, READ_COMMITED, SERIALIZABLE AND REPEATABLE_READ]

8-	When we may use Isolation level READ_UNCOMMITED?
9-	What is the relation between Isolation level and Locking in database ?
		[I mentioned Higher the level of Isolation needed, higher level of database locking]

10-	What are the Propogation levels in Transaction ?
		[I mentioned REQUIRED, REQUIRED_NEW, SUPPORTED, NOT_SUPPORTED, NEVER....etc]

11-	When we may require Propogation level REQUIRED_NEW?
		[I explained with one scenario]

12-	Have you worked on any Messaging system like Rabit-MQ ?
		[I mentioned, worked on Rabit MQ, Active MQ and now working on GCP Pub/Sub]

13-	What type of subscriptions you have used?.... 
	Subscriber created using what technologies ....Spring Boot, Apache Camel ...etc ?
		[I mentioned, mostly I have created subscriers using Spring Boot and in some cases created using Spring Integration as well,...which is alternative to Apache Camel]

14-	What all modules from Spring You have used ?
		[I mentioned, Spring Boot, SpringMVC, Spring Data, Spring Cloud.....]

15-	What module from Spring Cloud used ?
		[I mentioned, Spring Config Server, Discovery Service (Eureka Server and Client)]

16-	What is Discovery Service and why we need it ?
		[I explained, what it is, how it works and why we need it ]

18-	Is it not same as DNS...where it is resolving service based on domain name ?

19-	What is API Gateway and why to use it?

20-	Have you used OAuth2 for Authorization ?
21-	What technology used Open ID Connect or Identity Server?
		[I was not able to answer this.... :( ]

22-	In DB, what are the differences between Deterministic and Non-deterministic Functions ?	
		
23-	What are Aggregate functions ?
		[I mentioned, functions working on multiple records/result set from DB like MAX, MIN, SUM...etc]

24-	Do we need to use Group By Functions to use Aggregate functions ?
		[I said, I got confused and may be we need Grou By clause always to use aggregator function ]

25-	What are Threads in Java ?
		[I explained, what are threads and why we need them]

26-	How to create Threads in Java ?
		[I explained approach using Runnable interface vs Thread class.... Pros & Cons]

27-	Why we have Executor Service, if we can create threads using Runnable interface vs Thread class?
		[I explained, Thread creation and destruction are expensive process... to create Thread pool and re-use threads]
		
28-	What are Virtual Threads & Loom in java ?
		[They are introduced in Java 19]

29- What are Records in Java ?
		[It was introduced in Java 14]
		
30-	In Stream API, termina vs Non-Terminal operations ?
		[I explained differenece between Intermediate and terminal Operations]

31-	What does filter()	method do in Stream API ?

32-	Asked me to open IDE and code.... Implement reduce() function in Stream
	List of integer.....using reduce... 
		get count of elements in list
		get sum of all elements
		get multliplication of all elements


33- Have you worked on Front-End ?
		[I said no...only backend]

34- What is CDC/CDS ?

35- Bean validation ?
