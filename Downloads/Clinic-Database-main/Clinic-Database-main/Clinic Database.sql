CREATE TABLE OFFICES ( 
  Address VARCHAR(40) NOT NULL,
  Employees VARCHAR(1000),
  Inventory VARCHAR(1000),
  Departments VARCHAR(1000),
  Date_Established DATE,
  Budget INT,

  PRIMARY KEY(Address),
  FOREIGN KEY(Employees, Inventory, Departments)
);

/* the OFFICES table has to be fixed somehow:
The OFFICES table has the problem of:
- The Employees attribute should probably be changed to the number of employees or smth
- The departments attribute has the issue of it containing a table on its own
- The inventory has the same issue
-The VARCHAR(1000) is only a temporary solution till I can find smth better to hold them with
*/

CREATE TABLE PHYSICIAN (
  Employee_ID CHAR(7) NOT NULL,
  Employee_Name VARCHAR(30),
  Asso_Office VARCHAR(1000),
  Asso_Patient VARCHAR(1000),
  Sex CHAR(1), /*If possible to state constraint make it (M, F, O)*/
  Date_Of_Birth DATE,
  Employee_Email VARCHAR(30),
  Employee_Phone VARCHAR(10),
  Available VARCHAR(1000),
  Date_First_Employed DATE,
  Salary INT,
  Approval_for_Patient BOOLEAN,
  Date_Created DATE NOT NULL,
  Last_Date_Modified DATE NOT NULL,
  Last_Modified_By CHAR(7) NOT NULL,

  PRIMARY KEY(Employee_ID),
  FOREIGN KEY(Asso_Office, Asso_Patient, Approval_for_Patient)
);

CREATE TABLE SPECIALIST (
  Employee_ID CHAR(7) NOT NULL,
  Employee_Name VARCHAR(30),
  Asso_Office VARCHAR(1000),
  Asso_Patient VARCHAR(1000),
  Sex CHAR(1), /*If possible to state constraint make it (M, F, O)*/
  Date_Of_Birth DATE,
  Available VARCHAR(1000),
  Specialist_Practice VARCHAR(1000) NOT NULL,
  Employee_Email VARCHAR(30),
  Employee_Phone VARCHAR(10),
  Date_First_Employed DATE,
  Years_In_Practice INT, /*why???*/
  Years_In_Department INT,
  Years_as_head_of_Department INT,
  Supervisor_ID CHAR(7),
  Date_Created DATE NOT NULL,
  Last_Date_Modified DATE NOT NULL,
  Last_Modified_By CHAR(7) NOT NULL,

  PRIMARY KEY(Employee_ID),
  FOREIGN KEY(Supervisor_ID, Asso_Office, Asso_Patient)
);

CREATE TABLE NURSE (
  Employee_ID CHAR(7) NOT NULL,
  Employee_Name VARCHAR(30),
  Asso_Office VARCHAR(1000),
  Asso_Department VARCHAR(1000),
  Asso_Patient VARCHAR(1000),
  Sex CHAR(1), /*If possible to state constraint make it (M, F, O)*/
  Date_Of_Birth DATE,
  Available VARCHAR(1000),
  Employee_Email VARCHAR(30),
  Employee_Phone VARCHAR(10),
  Date_First_Employed DATE,
  Years_In_Department INT,
  Supervisor_ID CHAR(7),
  Salary INT,
  Date_Created DATE NOT NULL,
  Last_Date_Modified DATE NOT NULL,
  Last_Modified_By CHAR(7) NOT NULL,

  PRIMARY KEY(Employee_ID),
  FOREIGN KEY(Asso_Office, Asso_Department, Asso_Patient, Supervisor_ID)
);

CREATE TABLE PATIENTS (
  Patient_ID VARCHAR(7),
  Physician_ID VARCHAR(7),
  Specialist_ID VARCHAR(7),
  Diagnosis_Test VARCHAR(1000),
  Diagnosis_Results VARCHAR(1000),
  Name VARCHAR(30),
  Patient_Number VARCHAR(30),
  Patient_Email VARCHAR(30),
  Date_Of_Birth DATE,
  Patient_Age INT,
  Patient_Sex CHAR(1),
  Patient_Address VARCHAR(40),
  
);

CREATE TABLE MEDICAL_HISTORY (
  Patient_ID VARCHAR(7),
  Patient_Name VARCHAR(30),
  Diagnosis_Test VARCHAR(1000),
  Diagnosis_Results VARCHAR(1000),
  Patient_Age INT,
  Patient_Sex CHAR(1),
  Appointment_Time VARCHAR(30),
  Date_Created DATE NOT NULL,
  Last_Date_Modified DATE NOT NULL,
  Last_Modified_By CHAR(7) NOT NULL,

  PRIMARY KEY(PATIENT_ID),
  FOREIGN KEY(Diagnosis_Test, Diagnosis_Results, Patient_Age,Patient_Sex,Appointment_Time)

);

CREATE TABLE DEPARTMENTS ();

CREATE TABLE APPOINTMENTS ();

CREATE TABLE USER_ACCOUNT ();

CREATE TABLE TREATMENT ();

CREATE TABLE INVENTORY ();

CREATE TABLE CEO (
  Employee_ID VARCHAR(7),
  CEO_Name VARCHAR(30),
  Date_of_Birth DATE,
  Sex CHAR (1),
  Date_First_Employed DATE,
  Date_Employed_as_CEO DATE,
  Date_Created DATE NOT NULL,
  Last_Modified_Date DATE NOT NULL,
  Last_Modified_By CHAR(7) NOT NULL,
  
  PRIMARY_KEY(Employee_ID),
);
