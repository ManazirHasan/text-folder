What is CDC in data bases

--------------------------------------------
Questions asked to Mukhtar
--------------------------------------------
Spring Boot vs Spring
Application conext (Spring Boot vs Spring)
Bean life cycle
future interface vs completablefuture(Class implements Future) in java

A Future Object is Blocking , A Completable Future is non blocking.
Threads cannot be combined using Future objects, they can be combined using Completable Future
(Combining 2 CompletableFutures together)
thenCompose()
thenCombine()
thenAcceptBoth()

A thread cannot be completed midway using Future object , they can be completed using Completable Future object
Exception Handling


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

Default and static methods in interface : If write any new abstract method then it force all of its corresponding implementation

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
How to Create custom bean validation ? https://www.baeldung.com/spring-mvc-custom-validator
Can we catch the bean validation failure exception in try/catch ?

@Documented
@Constraint(validatedBy = ContactNumberValidator.class)
@Target( { ElementType.METHOD, ElementType.FIELD })
@Retention(RetentionPolicy.RUNTIME)
public @interface ContactNumberConstraint {
    String message() default "Invalid phone number";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}
	

Bean validation happens before control reaches the RestController or after ?



Rabit MQ
Queue vs exchange ? https://www.baeldung.com/java-rabbitmq-exchanges-queues-bindings

What is N+1 problem in Hibernate ?
How to solve this problem ?

******************************************Asked to Manazir********************************************************
Just adding few points

1) 	Difference between Thread and Future
2) 	Difference between ApplicationContext vs BeanFactory
3) 	Difference Postprocess And BeanFactoryPostProcess
4) 	Have you worked on Nifi
5) 	@Bean vs @Componenet in spring - Did you ever use @Bean in your projects
6) 	Find count of elements from List<Integer> using stream reduce() mehtod
7) 	Spring transaction senario(If 2nd trsaction is rollback and doesnt effect of first transaction) 
8) 	What all Spring clouds have ou used in your projects
9) 	What is ThreadPool, when do you need Threadpool ?
10	How to acheive idempotant for Http Post method ?
11) How do you acheive distributed transaction(Have you used Hacelcast)
12) What is index on database, how it works internally
13)	What is cluster and non cluster INDEX
14) Ask about IS Eureka Discovery works on Kubernates ?(No) by default NgIx services handle
15) What is OpenAPI ? What type of Roles you defined in your spring security ?
16) What is JWT tokens?
17) Implict vs Client credential flow
	
	
	


https://www.geeksforgeeks.org/java-jpa-vs-hibernate/
https://www.interviewbit.com/blog/jpa-vs-hibernate/
https://thorben-janssen.com/jpa-21-entity-graph-part-1-named-entity/
https://www.baeldung.com/spring-mvc-custom-validator


