
List of files : "File1.frx", File2.TXT, File3.dbf, File4.pdf, File5.PDF, File6.frt, File7.xml, File8.txt, File9.txt

Provide the output in below format: 
1 file(s) with .frx extension
3 file(s) with .txt extension 
1 file(s) with .dbf extension 
2 file(s) with .pdf extension 
1 file(s) with .frt extension 
1 file(s) with .xml extension
HashMap<String,Integer> fileFormatCountMap = new HashMap();
interate list {

split(.)// str[1] // file format ()

if(str[1].containKey(fileFormatCountMap)){

// int countValue = fileFormatCountMap.getValue();
countValue++
fileFormatCountMap.put(str[],countValue)

}

}

function func2(){ 

for(var i = 0; i < 3; i++){

 setTimeout(()=> console.log(i),2000); 
 
 }
} 

func2();


Table: Employee: 
Id Name Salary
1 Harpreet 20000
2 Ravi 30000 
3 Vinay 10000 
4 Ravi 30000 
5 Harpreet 20000  //
6 Vinay 10000 
7 Rajeev 40000    
8 Vinay 10000 
9 Ravi 30000 
10 Sanjay 50000


Output: 

Id Name Salary 

1 Harpreet 20000 
2 Ravi 30000 
3 Vinay 10000 
7 Rajeev 40000 
10 Sanjay 50000


delete from employee where id in (select e1.id from  employee e1  employee e2 where e1.name= e2.name and e1.id > e2.id );


