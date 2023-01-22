
List l1 = {a,b,c}
List l2 = {a,b,d,d}
table1
c0
a
b
c

table2
c0
a
b
d
d
 
t1.intersectiont(t2)
 a
 b
 d

-> a,b 
 witout loop or steram
 
 List l3 = l1.insection(l2)
 
 List l3 = l1.merge(l2)
 
 l3= {a,a,b,b,c,d}
 
 Set set = l3.stream().filter (x-> Collections.frequezy(list3,x)>1).collect(toSet()); //a,b
 
 Rdd rrd1 = l1.read();
 rrd1.create(t1)
 
 Rdd rrd2 = 
 rrd2.createOrReplaceeView(t2);
 
 
 
 Employee  id,name,salary,departId
 Department departId, department_name
 
 select name,departId from employee where salary =( select  max(salary) from employee );
 
 
 select * from employee where (departId,salary) in (
 select departId,max(salary) from employee group by departId)
 
 *************************************************************************************
 
 CORS (cross origin) (*)  - Want to block for paricular client how it works ?
 In Rest api One get method return xml and json  -which will be prefer ?
 
 
 
 
 
 
 
 
 