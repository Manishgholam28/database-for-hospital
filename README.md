# database-for-hospital
Design a Database for a hospital management system using all the constraint of SQL
The project Hospital Data Management System (MDBS) is for computerizing the working in a hospital. It takes care of all the requirements of an average hospital and is capable to provide 
easy and effective storage of information related to patients that come up to the hospital. It generates patient_diagnosis test reports. It also provides billing facility on the basis of
patient’s status.
DATABASES NAME-HOSPITAL

1)patient table             

create table patient(Patient_id int primary key,
                     Name text,
                     Age int,
                     Gender text,
                     Address text,
                     Phone_No text,
                     Disease Varchar(20),
                     Doctor_id int);

2)doctor table


create table doctor(doctorid int primary key,
                    doctor_name text,
                    designation text,
                    Gender text,
                    Phone_number text,
                    address text);


3)staff table

create table staff(staf_id int primary key,
                    Name text,
                    Dept_name text,
                    Gender text,
                    Address text,
                    Doctorid int,
                    Phone_no text);


4)room table

create table room(room_no int primary key,
                    room_type text,
                    patient_id int);


5)lab table

create table lab(Labno int,
                 Patient_id int,
                 Doctorid int references doctor(doctorid),
                 Category text,
                 Patient_type text,
                 Amount int);

6)Outpatient table

create table Outpatient(Patient_id int primary key,
                        Date date,
                        Lab_no int references lab(labno));

7)Inpatient table

create table Inpatient(Patientid int primary key,
                       Room_no int,
                       Date_of_adm date,
                       Advance int,
                       Lab_no int references lab(labno)
                       date_of_dis date);

8)patient diagnosis table

create table Pat_Diagnosis(DiagNo int,
                           Diag_details text,
                           Remark text,
                           Diag_Datetime datetime,
                           Other text,
                           pat_id int references patient(patient_id));

9)bill table

create table bill(billno int primary key auto_increment,
                    Patient_name text,
                    Doctor_name text,
                    Datetime datetime,
                    amount int,
                    patientid int);





