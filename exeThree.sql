-- display the number of students enrolled for modules on a specific date grouped by start date and display start date and total number of students.

use exeOne;

select Start_Date,count(Student_Id)  from Student_Status group by Start_Date;

-- number of students enrolled for modules where faculty id is ‘F001’ grouped by start date and display start date and total number of students.

select Start_Date,count(Student_Id) as Student_Total,TFeedbackGiven from Student_Status where TFeedbackGiven='F001' group by Start_Date;

-- number of students enrolled for modules where faculty id is ‘F001’ grouped by module start date and display module start date and total number of students where the total number of students > 2.

select Start_Date,count(Student_Id)>2 as Student_Total,TFeedbackGiven from Student_Status where TFeedbackGiven='F001' group by Start_Date;

-- all the modules in ascending order of module duration.

select * from  ModuleDetails order by Module_Duration asc;

-- display the student’s name, their module enrolled (module name and module id). Order them according to their name.


select Student_Name,Module_Name,Module_Id from Student_Details,Module_Details order by Student_Name;