DaShaun Carter -Spring developer

Dan Vega
https://www.youtube.com/@DanVega
https://www.youtube.com/watch?v=6kFzJZCW1Qw&list=PLZV0a2jwt22s5NCKOwSmHVagoDW8nflaC
https://www.youtube.com/watch?v=awcCiqBO36E
https://www.youtube.com/watch?v=UaB-0e76LdQ&list=PLZV0a2jwt22s5NCKOwSmHVagoDW8nflaC&index=5
https://www.youtube.com/playlist?list=PLZV0a2jwt22tG2DEcsY7s3GJWIxlPo5bt

https://developers.notion.com/

heroku.com
https://railway.app/


****************************************************************************
Spring Boot3 JUICE(Join Us In Creating Excitement ) -https://dashaun.com/
Spring Boot with GraalVM

https://www.youtube.com/watch?v=HY4kTCNKwxk
https://www.youtube.com/watch?v=hAHXp_jQWVo&list=PLgGXSWYM2FpPj-rR278PbyoOLQNyEr-Gi&index=7
https://www.youtube.com/watch?v=mitWK_DwKGs&list=PLgGXSWYM2FpPj-rR278PbyoOLQNyEr-Gi&index=2
https://www.youtube.com/watch?v=3NcmlrumSOc&list=PLgGXSWYM2FpPj-rR278PbyoOLQNyEr-Gi&index=9
use as backend application-without any problem

curl https://httpbin.org/uuid
Spring Cloud Gateway and demonstrate a variety of features, such as weighted routing, circuit breakers, rate limiters, and more.

spring-boot-starter-[actuater,jpa,web-flux,security]
managerment.server.port=9090
mvn spring-boot:build-image

Jakarta EE9/10(jakarta namespace) : javaee/or javax to jakarta
sevelet,persistance,bean delegation(javax.validation to jakarta.validation)
javax ===jakarta

native build
./mvnw -Pnative native:compile
AOT(Ahead-Of-Time) :- (Improving startup time, and resource consumtion )Shifting preperation of computation at build time rather runtime
Virtual Thread-(Project loom

Virtual Thread: Not blocking an operating system thread on I/O operations
        Decouple the JVM thread with Operating system threads.

loom vs reactive programming-
loom-friendly imperative WebClient


****************************Microservice Architecture**************************************
VVVVVVVI
https://microservices.io/patterns/


https://www.youtube.com/watch?v=PpW5aPfw06I
https://12factor.net/
https://dzone.com/articles/microservices-and-conways-law
https://www.youtube.com/@Java.Brains/playlists

Distributed
Scalable
Resilent
Automated
Organizational(Conway's Law)
Replaceable


Sample Architecture

Circuit breaker
client
API gateway - route
Configuration server- centrlaize server accross all the services
Distributed configuration
Service Discovery
Metrics

Service Mesh - how to controll and access

Netflix: Zuul,Hystrix,Eureka,Ribbon,Servo,Genie,Sidecar,Mantis,Archaius
Alibaba: Sentinel
Spring cloud:
        Configuration,
        zipkin,
         Consule,
         Heoku,
         Data Flow,
         Zuul and Zuul proxy,
         LoadBalancer,
         Config server,
         Discovery server,
         Gateway,
         sidecar,
         Feign Client,
         Sleuth,
         Dapr with Gateway,
         Open Feign,
         Open Service Broker,
         Gateway WebFilter Factories,
         Vault
         Task,
         Contract,
         Security,
         CLI,
         Differences Between Netflix Feign and OpenFeign
         Serverless Functions with Spring Cloud Function
         Stream, Zipkin, Zookeeper, DataFlow, Bus
         Introduction to Alibaba Sentinel(part of circuit breaker)

Spring
https://www.vinsguru.com/circuit-breaker-pattern/
https://www.baeldung.com/spring-boot-start
https://www.baeldung.com/spring-retry
https://www.baeldung.com/category/spring/spring-security
https://www.baeldung.com/spring-security-oauth
https://www.baeldung.com/spring-security-5-oauth2-login
https://www.baeldung.com/spring-security-oauth-jwt
https://www.baeldung.com/learn-spring-security-oauth-course
https://www.baeldung.com/spring-validate-list-controller


Spring cloud
https://www.baeldung.com/category/spring/spring-cloud
https://www.baeldung.com/spring-cloud-series

https://www.baeldung.com/spring-cloud-configuration
https://www.baeldung.com/spring-cloud-gateway-oauth2
https://www.baeldung.com/spring-cloud-gateway
https://www.baeldung.com/java-sentinel-intro
https://www.baeldung.com/tag/microservices
https://www.baeldung.com/spring-boot-12-factor
https://www.baeldung.com/java-sentinel-intro
https://www.baeldung.com/category/architecture
https://www.baeldung.com/ops/knative-serverless
https://www.baeldung.com/spring-cloud-gateway-pattern
https://www.baeldung.com/spring-cloud-kubernetes
https://www.baeldung.com/spring-rest-with-zuul-proxy


java
https://www.baeldung.com/design-patterns-series
https://www.baeldung.com/java-atomikos
https://www.baeldung.com/category/java/java-collections
https://www.baeldung.com/java-find-map-max
https://www.baeldung.com/java-copy-hashmap


CircuitBreaker:
    Resilience4j :also provide RateLimiter, Bulkhead, Retry,TimeLimiter
    Hystrix:(Netflix Hystrix)
    Sentinel
    Spring Retry
  Zuul is a JVM based router and server side load balancer by Netflix.
    And Spring Cloud has a nice integration with an embedded Zuul proxy – which is what we'll use here.


A circuit breaker is an electrical safety device designed to protect an electrical circuit
 from damage caused by an overcurrent or short circuit.
  Its basic function is to interrupt current flow to protect equipment and to prevent the risk of fire.
  Unlike a fuse, which operates once and then must be replaced,
  a circuit breaker can be reset (either manually or automatically) to resume normal operation.

