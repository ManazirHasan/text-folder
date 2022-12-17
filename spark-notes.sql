jpa/microservice -decompose -

/oracle - distributed transaction , acid prop, monolit(domain specific decompose )

java - 

jpa / one to many relation/  

spring developer - 

sprig boot  - 

spring vs spb

indexes - primery key makes uid ()

SERVICE@NAUKRI.COM/
MYRM@NAUKRI.COM


Atomocity - ACID

************************************************************
Challenges Spark tries to Address - 
   
   Inefficiencies(pain point)-solved-by-spark : 
     Iterative algorithim, machine learning and 
	 interactive data mining(Speed of computation to solve is necessery, )
   
   Graph processcing algorithim(degree of seperation)
    hadoop mapreduce iterative machine learning - input with intermediate output

What is spark: 	
	It is fast in-memory computation at distributed scale for large amount of  data,
	It is acheive through RDD(Partiotined collection of data),
	It is acheived with the help of advanced DAG execution engine that supports acyclic data flow and RDD.
				
				
				(DAG) Execution Engine: 
				
				It is not like set of instruction start execution one by one, 
				
				It look at all the instruction we have and then it first translate into Logical Plan to Physical Plan and then finally execute Tasks into multiple clusters ).
				
				SEE: Traslate user codes into series of task and that task or operation  are DAG in nature.
				
				Execution flow goes from One operation or one task to another,
				but never have a cyclic in nature.
				DAG is just a model for execution.
				**Spark can keep track of every single operation and every single operation that happend to the dataset.
				Spark acheive this with help of RDD.				
				
				Core of Spark: RDD enables Spark to keep track of all operations & transformations.
				
				RDD in a way helps and enables SEE to perform its job.
								 
				Without RDD it will not be able to form logical or physical plan to optimize the execution. 
				
				SPARK -> In-memory compu -> SEE -> RDD
				
				Lineage: Hadling tolerant failure effectivily
				         function provided by spark(keep track of each operation  and transformation  on each node what is going on )
			*************************************************
            *    Transofrmation(function that transform one 
			     rdd to another rdd is called  
				 transformation function) and Action		*
            *    Wider and Narrow dependencies 				*
			*	RDD is core and heart of spark.				*
			*	RDD is coasegrain not finegrain				*
			*************************************************	
			RDD is to keep track of all the operations that are done to dataset.*
				
			WHAT is RDD: 
			
			It represents an immutable, partitioned collection of elements that can be operated on in parallel.
			Each RDD has transform(wider and narrow) and action method,trasform is lazy in nature.
			
			A list of partitions a function for computing each SPLit.
			A list of dependencies on other RDDS.
			Hash-partitioned 
			list of prefered locations to compute each split (block locations for an HDFS file).
			
			
****When spark trigger an action then it evaluate logic plane followe by phisical plan	, it is use to derive the task for actual execution 	

Physical plan is more like a blue print for execution , it tells how to execute of a programe , it will gives  insize how many taks are involve to the execution and how the task is different then each other.
How the PP is created we need to understand the dependencies between the rdds.


Narrow Depedency: 
                 One to one partitioned(Child partition depends on entire parent PARTITION is called ND,child have more then parrent partioned and depend on entire parent partioned)

WD:
				If one patitined are depedens on multiple patitined are called as called Wide     Dependencies.(Child partition depends on a portion of each of the parent PARTITION is called WD)

Types of depedency determines the number of taks involves in actual execution.

Types of depedency has an impact on fault tolerance.

Dependencies plays a major role in creation of PP

Spark uses a PP as a blue print to execute our programme in a cluster.



*******************************


#partitionBy() multiple columns
df.write.option("header",True) \
        .partitionBy("state","city") \
        .mode("overwrite") \
        .csv("/tmp/zipcodes-state")

		


SparkSession ss = SparkSession.builder().appName().master("local[2]")
Dataset<Row> datarow  = ss.read.csv()