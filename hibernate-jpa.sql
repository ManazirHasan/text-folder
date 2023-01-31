JPA and hibernate

Hibernate 6(@incubating), 
Seperation: Selection Query and MutationQuery
REactive hibernate ,


JPQL,native or Criteria quries : HAve to works

@Inject
private EntityManager em;

Panache/Quarkus: 
Quarkus Application: It is on top of hibernate: It runs on GralVMM
https://code.quarkus.io/

Active Record Pattern or Repository pattern: let entiry object encapuslate the data and database operations you can perform on it.
PanacheReposity

******************************************************************************************
https://www.baeldung.com/hibernate-initialize-proxy-exception

Session: It is a persistance context that represents a coversation between an application and the database.
Lazy Loading means that the object wont be loaded to the Session context until it is accessed in code.
Hibernate creates a dynamic Proxy Object subclass that will hit the database only when we first use the object.
This error occurs when we try to fetch a lazy-loaded object from the database by using a proxy object, but the Hibernate session is already closed.

Session object in three possible states: transient, persistent, or detached.

Transient 

An object we havent attached to any session is in the transient state. Since it was never persisted, it doesnt have any representation in the database. Because no session is aware of it, it wont be saved automatically.

Persistent
An object that weve associated with a session is in the persistent state. We either saved it or read it from a persistence context,

Detached
When we close the session, all objects inside it become detached. Although they still represent rows in the database, theyre no longer managed by any session:



LazyInitializationException error
Using this property to avoid the LazyInitializationException error isn't recommended, since it'll slow down the performance of our application. This is because well end up with an n + 1 problem. Simply put, it means one SELECT for the User and N additional SELECTs to fetch the roles of each user.

Hibernate feature :  
	It is ORM feature,
	Database Independent application.
	HQL (pagination), Supports relationships (OneToMany/ ),Lazy-Loading fethes	
	Cache support- 2 level of cache, performance over jdbc
	Handle Checked Exception(Reduce poiler palte code)
	Primary Key Generation


What is ORM ( EJB and TopLink)

Hibernate vs JDBC:  

JDBC spoorts native SQL()
HQL

save() and saveOrUpdate() is used 

Annotation in hibernate and JPA 

@EntityGraph(lazy and eager loading)


Criteria Query in hibernate : (JPQL, HQL)

@Entity class -what all annotations available
https://www.baeldung.com/hibernate-lazycollection
	Calculated with Columns using @Formula
	@Filter : Works with current session
			@FilterDef(
			name = "incomeLevelFilter", 
			parameters = @ParamDef(name = "incomeLimit", type = "int")
			)
			@Filter(
			name = "incomeLevelFilter", 
			condition = "grossIncome > :incomeLimit"
			)
			public class Employee implements Serializable {
			session.enableFilter("incomeLevelFilter")
			.setParameter("incomeLimit", 11_000);
	@AnyMetaDef(package level), @ManyToAny(Entity),@Any()
	second-level cache DISABLE filter

Lazy Loading 
@Entity
public class Branch {

    @Id
    private Long id;

    private String name;

    @OneToMany(mappedBy = "branch")
    @LazyCollection(LazyCollectionOption.TRUE)
    private List<Employee> employees;
    
    // getters and setters
}

@Entity
public class Employee {

    @Id
    private Long id;

    private String name;

    private String address;
    
    @ManyToOne
    @JoinColumn(name = "BRANCH_ID") 
    private Branch branch; 

    // getters and setters 
}


https://www.baeldung.com/hibernate-second-level-cache
What is First level cache ?
first-level cache. Its a session scoped cache which ensures that each entity instance is loaded only once in the persistent context.Once the session is closed, the first-level cache is terminated as well.
This is actually desirable, as it allows for concurrent sessions to work with entity instances in isolation from each other.


What is 2nd level cache ? L2 level cache, (acheived through hibernate-ehcache)
A second-level cache is SessionFactory-scoped, meaning its shared by all sessions created with the same session factory.
If an instance is already present in the first-level cache, it's returned from there.
If an instance isn't found in the first-level cache, and the corresponding instance state is cached in the second-level cache, then the data is fetched from there and an instance is assembled and returned.

//hibernate-ehcache
@Entity
@Cacheable
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Foo {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID")
    private long id;

    @Column(name = "NAME")
    private String name;
    
    // getters and setters
}
	

N+!: JPA EntityGraphs: Solution to N+1 Query Problem OR(Using Join also we can resolve the issues)


https://www.baeldung.com/spring-data-jpa-named-entity-graphs

https://medium.com/geekculture/jpa-entitygraphs-a-solution-to-n-1-query-problem-e29c28abe5fb#:~:text=The%20N%2B1%20query%20problem%20is%20said%20to%20occur%20when,the%20performance%20of%20the%20application.
Our goal here is to load them eagerly at runtime even though fetch is lazy


@NamedEntityGraph and  @EntityGraph 
we can create multiple repository methods that are linked to different entity graphs.


@Entity
@NamedEntityGraph(name = "Item.characteristics",
    attributeNodes = @NamedAttributeNode("characteristics")
)
public class Item {
	//...
}

public interface ItemRepository extends JpaRepository<Item, Long> {

    @EntityGraph(value = "Item.characteristics")
    Item findByName(String name);
}
OR with attributes 
public interface CharacteristicsRepository 
  extends JpaRepository<Characteristic, Long> {
    
    @EntityGraph(attributePaths = {"item"})
    Characteristic findByType(String type);    
}


Loads eagerly even though our entity declares a lazy-loading strategy for this property.


***********************************************************
https://www.baeldung.com/hibernate-detached-entity-passed-to-persist

Hibernates persist and merge methods.
For detaching a specific Post entity, we can use session.evict(post)
We can detach all he entities from the context by clearing the session with session.clear().

A detached entity is a Java object thats no longer tracked by the persistence context. Entities can reach this state if we close or clear the session. Similarly, we can detach an entity by manually removing it from the persistence context.

@Before
public void beforeEach() {
    session = HibernateUtil.getSessionFactory().openSession();
    session.beginTransaction();
 
    this.detachedPost = new Post("Hibernate Tutorial");
    session.persist(detachedPost);
    session.evict(detachedPost);
}
a) Trying to Persist a Detached Entit
If we try to persist a detached entity, Hibernate will throw a PersistenceException with the “detached entity passed to persist” error message.

Lets try to persist a detached Post entity to anticipate this exception
If we use the merge method, Hibernate will re-attach the entity to the persistence context based on the @Id field:

 session.merge(detachedPost);
 session.getTransaction().commit();

4. Trying to Persist a Detached Entity Through an Association
If we merge a Comment entity, Hibernate will propagate the operation to the associated Post, and both entities will be updated in the database. However, if we want to persist a Comment using this setup, we wll first have to merge the associated Post
@Entity
public class Comment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String text;

    @ManyToOne(cascade = CascadeType.MERGE)
    private Post post;

    // constructor, getters and setters
}
Post mergedPost = (Post) session.merge(detachedPost);
comment.setPost(mergedPost);

session.persist(comment);
session.getTransaction().commit();

Conversely, if the cascade type is set to PERSIST or ALL, Hibernate will try to propagate the persist operation on the detached associated field
Consequently, when we persist a Post entity with one of these cascading types, Hibernate will persist the associated detached Comment, which will lead to another PersistentObjectException.

 List<Comment> comments = session.createQuery("Select c from Comment c", Comment.class).list();
    Comment savedComment = comments.get(0);
****************************************************************************
https://www.baeldung.com/jpql-hql-criteria-query

CriteriQuery

The Criteria API helps in building the Criteria query object by applying different filters and logical conditions on top of it
The createCriteria() method from the Hibernate Session returns the persistence object instance for running a criteria query in the application. Simply put, the Criteria API builds up a criteria query that applies different filters and logical conditions.

As per the users conditions, CriteriaBuilder controls the query results. It uses the where() method from CriteriaQuery, which provides CriteriaBuilder expressions.

JPQL

JPQL stands for Java Persistence Query Language. Spring Data provides multiple ways to create and execute a query, and JPQL is one of these. It defines queries using the @Query annotation in Spring to execute both JPQL and native SQL queries. The query definition uses JPQL by default.

We use the @Query annotation to define a SQL query in Spring. Any query defined by the @Query annotation has higher priority over named queries, which are annotated with @NamedQuery.

3.2. Using the JPQL Native Queries



4. HQL
HQL stands for Hibernate Query Language. It's an object-oriented language similar to SQL that we can use to query our database. However, the main disadvantage is the code's unreadability. We can define our queries as Named Queries to place them in the actual code that accesses the database.

4.1. Using Hibernate Named Query


5. Advantages of Criteria Queries Over HQL and JPQL Queries
The main advantage of Criteria Queries over HQL is the nice, clean, object-oriented API. As a result, we can detect errors in Criteria API during the compile time.

In addition, JPQL queries and Criteria queries have the same performance and efficiency.

Criteria queries are more flexible and provide better support for writing dynamic queries as compared to HQL and JPQL.

But HQL and JPQL provide native query support that isnt possible with the Criteria queries.
This is one of the disadvantages of the Criteria query.

***********************************************************************************

https://www.baeldung.com/hibernate-save-persist-update-merge-saveorupdate