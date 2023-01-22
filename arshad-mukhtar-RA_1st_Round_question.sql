--------------------------------------------
Questions asked to Mukhtar
--------------------------------------------
Spring Boot vs Spring
Application conext (Spring Boot vs Spring)
Bean life cycle
future interface vs completablefuture in java
Executor Service
Design Pattern 
Microservices -> tools used
Zipkin
Service Discovery
Spring Security

Oracle
Propogation Level
Isolation Level
ACID properties

Programetic vs Declarative Transaction Management

2 Sum problem
all combinations in array

final keyword usage
Helm (deployment), Docker, Kub8s

Inter service communication
Sync vs Async communication

Future interface vs completable future interface (Asymetric)
PUT() vs POST()
Idempotancy:If we make multiple identical requests and receive the same response every time, the APIs are generally called idempotent
when making multiple identical requests has the same effect as making a single request – then that REST API is called idempotent.

An Idempotenet HTTP method that can be invoked many times without the different outcomes.
It should not matter if the method has been called only once, or ten times over. The result should always be the same.

--------------------------------------------
Questions asked to me
--------------------------------------------

Java8 features

Functional Interface :

Default and static methods in interface

Abstract Class vs Interface

Rest API
Create API for CRUD operations using GET/POST/PUT/DELETE methods
Annotations used in controllers
Controller to Database-> explain flow and responsibiliies of each layer
@Transaction
Attributes for this annotation ike PropogationLevel, IsolationLevel, ReadOnly & rollbackFor....
explain all PropogationLevel & IsolationLevel

DB :
What are the differences in Optimistic and Pessimestic locking in DB ?
1) Optimist(Hope for the good, not bad)- so it doesnt hard lock rather check version before update, so it works on versioning.
use in less concurrent actors(few conflicts available):  Slow if more concurent process available.
  a) maintain version
  b) timstamp(drawbacks with milisec)

2) Pessimistlock(Prepare for the worst): It (acquire or lock) the resources for others concurent process.
	It is faster then optimist in terms of more concurent process no need to update version every time).
	
	Live/persistant connections with user becuase it lock and hold the db resources.
	
	1) Extra cause for Dead lock senarios.
	2) Implement time out if locks hold more time.(QueryTimeoutException,LockTimeoutException,PessimisticLockExcpetion)
		
	a)LockModeType.PESSIMISTIC_WRITE or LockModeType.PESSIMISTIC_READ.PESSIMISTIC_FORCE_INCREMENT 
		Query query = entityManager.createQuery("from Student where studentId = :studentId");
		query.setParameter("studentId", studentId);
		query.setLockMode(LockModeType.PESSIMISTIC_WRITE);
		query.getResultList()
	b) The EXTENDED scope covers the same functionality as NORMAL. In addition, its able to block related entities in a join table
		Map<String, Object> properties = new HashMap<>();
		map.put("javax.persistence.lock.scope", PessimisticLockScope.EXTENDED);    
		or map.put("javax.persistence.lock.scope", PessimisticLockScope.NORMAL); 
		or map.put("javax.persistence.lock.timeout", 1000L); 
		entityManager.find(Student.class, 1L, LockModeType.PESSIMISTIC_WRITE, properties);





How to avoid Dirty reading in application ?

When to use @Version

What is race condition ?

JPA vs Hibernate ?

Lazy Loading vs Eager Loading ?

How to enable Lazy Loading vs Eager Loading dynamically ? (@EntityGraph)

Write Java code to check string is palindrome or NOT 

Exception handing in Rest Controller ?
@ControllerAdvise
@ExceptionHandler

Bean validation ?
How to Create custom bean validation ?
Can we catch the bean validation failure exception in try/catch ?

Bean validation happens before control reaches the RestController or after ?



Rabit MQ
Queue vs exchange ?

What is N+1 problem in Hibernate ?
How to solve this problem ?

https://www.geeksforgeeks.org/java-jpa-vs-hibernate/
https://www.interviewbit.com/blog/jpa-vs-hibernate/
https://thorben-janssen.com/jpa-21-entity-graph-part-1-named-entity/
https://www.baeldung.com/spring-mvc-custom-validator


