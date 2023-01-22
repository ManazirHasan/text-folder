Micorservice Pattern:	Loosly coupled architecture(set of services)
1) Decomposition 
2) Data Management
3) Transcational messaging
*4) Testing
5) Deployment patterns
6) Cross cutting concerns
*7) Communication style
8) External API
9) Service discovery
10)Reliability
11) Security
12) Observability

*******************************************************
CDE, SORDS

2C3D2E, SORT-DS

1) Decomposition(Decomp)
	Decomp by business capability
	Decomp by subdomain
	Self-contianed Service(New)
	Service per team(New)
	
2) Data Management

	Database per service
	Shared Database
	Saga
	API composition
	CQRS
	Domain event
	Event sourcing
	
3) Transcational messaging(Tram)
	Tran outbox
	Tran log talling
	Polling sourcing
	
*4) Testing
5) Deployment patterns
	Multiple service instainces per host
	Servie instance per host
	Service instance per VM
	SErvcie instance per container
	Serverless deployment
	Service deployment plateform

6) Cross cutting concerns
	Microsercies chassis
	Service Template 
	Externalized configuration
	
*7) Communication style
		RPC(RPI)
		Messaging
		Domain-specific protocol
		Idempotent Consumer
		
8) External API
	API gateway
	Backend for front-end

9) Service discovery(disc)	
	Client-side disc
	Server-side disc
	Sevice registry
	Self registry3rd party registration
	
10)Reliability
	Circuit Breaker

11) Security
	Access Token
	
12) Observability
	Log aggregation
	Application metrics
	Audilogg
	Distributed TRACING
	Exception tracking
	Health check API Log deployments and changes
	
****************************************************
Microservice chassis(The main benefit of a microservice chassis is that it’s faster and easier to keep the dependencies,
	build logic and cross-cutting concern logic up to date. You simply release a new version of the microservice chassis framework that contains the needed changes, and update each service to the use new version.

One issue is that you need a microservice chassis for each programming language/framework that you want to use. This can be an obstacle to adopting a new programming language or framework.)

Main thing to keep in Microsercies Development.

1) Security - REST APIs must be secured by requiring an Access Token.

2) we need to handle cross cutting concers for set of all services.

3) Externalized configuration - includes credentials, and network locations of external services such as databases and message brokers

4)	Distributed tracing - instrument services with code that assigns each external request an unique identifier that is passed		 between services.

5) 	Health check - a url that a monitoring service can “ping” to determine the health of the application

6)	Metrics - measurements that provide insight into what the application is doing and how it is performing


7)	Build and release logic 

*Logging - configuring of a logging framework such as log4j or logback.

https://github.com/eventuate-tram/eventuate-tram-sagas

*************start****12factor.net*****************
The twelve-factor app is a methodology for building software-as-a-service apps that:

1) Codebase: 
	One codebase tracked in revision controle, many deployes

2) Dependencies: 
	Explicitly declare and isolate dependencies
	
3) Config:
	Store config in the enviroment

4) Dev/prod parity(Similarity)
    Keep develpment. staging and production as similar as possible

5) Logs:
	Maintain logs as event streams	

6) Build,release(with version),run	
    Strickly seperate build and run stages
	
7) Backing services		
	Treat backing services as attached resources

8) Admin processes:
	Run admin/management tasks as one of the process
	
9) Processes:
   Execute the app as one or more stateless process
   
10) Port binding
	Export services via port binding
	
11) Concurrency:
	Scale out via the process model
	
12) Disposability:
	Max robustness with fast startup and gracefull shutdonw	
	

***************end**12factor.net*****************

Distributed transaction

Saga: Can be defined as a sequence or series of local transactions that span accross tow or more miccroservices.
Each microservice executes 1 or more lcoal TRANSACTION. and then( publish an event that is used to trigger the next transaction in a saga. that resides in another participating microservice)(publish or trigger an events for the next transaction of microservice ).

When one of the trascation in the SEQUENCE fails, the saga executes a series of compensation transactions to undo the changes that were made by the preceding transactions.

Local transaction : t1,t2,t3 
Compensating transactions for undo : c1,c2,c3 

Two types of sasga: choreographic based saga or orchestration based saga.

