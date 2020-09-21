use exeOne;

-- Faculty details who dont have email
select * from FacultyDetails where Faculty_Email=NULL;

-- display the id, name, track and location of all Faculties who’s Experience are greater than 4 years.

select Faculty_Id, Faculty_Name, Faculty_Track, Faculty_Location from FacultyDetails where Faculty_Experience > 4;

-- Select all the modules whose duration > 150.

select * from Module_Details where Module_Duration >150 order by Module_Duration asc;

-- Faculty Id, Faculty name whose qualification is not ‘Bachelor of Technology’.

select Faculty_Id, Faculty_Name from FacultyDetails where Faculty_Experience != "Bachelor of Technology";

-- modules whose duration is between 100 and 200.

select * from Module_Details where Module_Duration between 100 and 200;



-- Faculty Id, Faculty name with first name starting with ‘A’

select Faculty_Id, Faculty_Name from FacultyDetails where Faculty_Name like 'A%';

-- Faculty Id, Faculty name whose first name contains a character ‘M’
select Faculty_Id, Faculty_Name from FacultyDetails where Faculty_Name like '%M%';

-- names of all the modules where the module name does not exists.

select * from Module_Details where Module_Name=NULL;


-- Exercise 2

-- display the module name and module duration of the entire modules.

select Module_Name, Module_Duration from Module_Details;


-- display list of all the module id and module names with first letter capital of module name from ModuleDetails table.

select Module_Id,Module_Name from Module_Details where Module_Name= UPPER(Module_Name);

-- display the module id and the number of days between the current date and module start date from Student_Status table.

select Module_Id, datediff(now(),Start_Date) from Student_Status;

-- concatenate the Module Name and Module id in the below mentioned format and display all the modules from the moduleDetails table. “Module Id is Module_Id and Module Name is Module Name”

select concat(Module_Id,' and ',Module_Name),Module_Duration from Module_Details;

-- display all the Module Name in upper case.

select upper(Module_Name) from Module_Details;

-- display all the characters between 2 to 4 of the Module name column for all the modules in the ModuleDetails table.

select substring(Module_Name,2,4) from Module_Details;

--  return the total count of all the students.

select count(Student_Id) from Student_Details;

-- display the total faculty members not having their email ID.

select count(Faculty_Name) from FacultyDetails where Faculty_Email=NULL;