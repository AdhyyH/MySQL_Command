CREATE DATABASE SPORT; 
USE SPORT; 
Create table user (user_ID VARCHAR(255) NOT NULL, user_name VARCHAR(255), user_password
VARCHAR(255), email VARCHAR(255), phone_Num VARCHAR(255), user_type VARCHAR(255), PRIMARY KEY (user_ID));
Create table admin (admin_ID VARCHAR(255) NOT NULL, admin_name VARCHAR(255), phone_num VARCHAR(255),  PRIMARY KEY (admin_ID)); 

Create table court (court_ID VARCHAR(255) NOT NULL, court_name VARCHAR(255), PRIMARY KEY (court_ID)); 
Create table equipment (equipment_ID VARCHAR(255) NOT NULL, equipment_name VARCHAR(255), PRIMARY KEY (equipment_ID)); 
Create table Booking (booking_ID VARCHAR(255) NOT NULL, booking_date date,  booking_time time,  court_ID VARCHAR(255), equipment_ID VARCHAR(255), user_ID    VARCHAR(255), PRIMARY KEY(booking_ID), FOREIGN KEY(court_ID) REFERENCES court (court_ID), FOREIGN KEY(equipment_ID) REFERENCES equipment (equipment_ID), FOREIGN KEY(user_ID) REFERENCES user (user_ID)); 
create table returns (return_ID VARCHAR(255) NOT NULL, booking_ID VARCHAR(255),return_date date, return_time time, court_ID VARCHAR(255), equipment_ID VARCHAR(255), admin_ID VARCHAR(255), user_ID VARCHAR(255), PRIMARY KEY(return_ID),FOREIGN KEY(booking_ID) REFERENCES booking(booking_ID), FOREIGN KEY(court_ID) REFERENCES court(court_ID), FOREIGN KEY(equipment_ID) REFERENCES equipment(equipment_ID), FOREIGN KEY(user_ID) REFERENCES user(user_ID), FOREIGN KEY(admin_ID) REFERENCES admin(admin_ID)); 


INSERT INTO USER (user_ID,user_name,user_password,email,phone_Num,user_type) VALUES(‘CA19354’,’BrianOZ’,’Br14An@Z’,’brianoz53@gmail.com’,’+60114251965’,’Student’);
INSERT INTO USER (user_ID,user_name,user_password,email,phone_Num,user_type) VALUES(‘CA20058’,’SyafiqahZalili’,’Sy4f@123’,’jimin95@gmail.com’,’+60111546857’,’Student’);
INSERT INTO USER (user_ID,user_name,user_password,email,phone_Num,user_type) VALUES(‘CA20598’,’Muthu.S’,’951976@A’,’s.muthu@gmail.com’,’+60132651497’,’Student’);
INSERT INTO USER (user_ID,user_name,user_password,email,phone_Num,user_type) VALUES(‘CB19534’,’Fahmi_Jalil’,’fahmi@A1199’,’fahmicod@gmail.com’,’+60159462235’,’Student’);
INSERT INTO USER (user_ID,user_name,user_password,email,phone_Num,user_type) VALUES(‘CB19164’,’Xue.Tan’,’80@X2_sT’,’tanxueer@gmail.com’,’+60165543126’,’Student’);
INSERT INTO USER (user_ID,user_name,user_password,email,phone_Num,user_type) VALUES(‘CB20465’,’Syahmi12Faizal’,’0306J_00’,’syahmi_hazard@gmail.com’,’+60125463227’,’Student’);
INSERT INTO USER (user_ID,user_name,user_password,email,phone_Num,user_type) VALUES(‘CB18951’,’Shawitra31’,’shawit_4@a’,’shawitra.murugan@gmail.com’,’+60164453215’,’Student’);
INSERT INTO USER (user_ID,user_name,user_password,email,phone_Num,user_type) VALUES(‘CD18764’,’laylahassan12’,’layla98@HS’,’layla.seoyoon@gmail.com’,’+60111456732’,’Student’);
INSERT INTO USER (user_ID,user_name,user_password,email,phone_Num,user_type) VALUES(‘S156324’,’AzharFirdaus’,’251236489’,’azharf11@gmail.com’,’+60139685547’,’Staff’);
INSERT INTO USER (user_ID,user_name,user_password,email,phone_Num,user_type) VALUES(‘S169874’,’Syafhamka’,’T271@22’,’syafhamkaferdinand1@gmail.com’,’+60189514479’,’Staff’);


INSERT INTO ADMIN (admin_ID,admin_name, phone_Num) VALUES(‘A116541’,’Syarifah Syahirah Binti Syed Sidek’,’+60123564412’);
INSERT INTO ADMIN (admin_ID,admin_name, phone_Num) VALUES(‘A126354’,’Firdaus Amzar Bin Husin’,’+60199876251’);
INSERT INTO ADMIN (admin_ID,admin_name, phone_Num) VALUES(‘A114598’,’Hamzah Bin Yahya’,’+60139215489’);


INSERT INTO EQUIPMENT (equipment_ID, equipment_name) VALUES('E0112', 'basketball ball');  
INSERT INTO EQUIPMENT (equipment_ID, equipment_name) VALUES('E0234', 'basketball nett');  
INSERT INTO EQUIPMENT (equipment_ID, equipment_name) VALUES('E0356', 'tennis ball'); 
INSERT INTO EQUIPMENT (equipment_ID, equipment_name) VALUES('E0487', 'bib’s'); 
INSERT INTO EQUIPMENT (equipment_ID, equipment_name) VALUES('E0509', 'net of badminton'); 
INSERT INTO EQUIPMENT (equipment_ID, equipment_name) VALUES('E0689', 'volleyball ball'); 
INSERT INTO EQUIPMENT (equipment_ID, equipment_name) VALUES('E0767', 'badminton racket');  
INSERT INTO EQUIPMENT (equipment_ID, equipment_name) VALUES('E0854', 'soccer boot'); 
INSERT INTO EQUIPMENT (equipment_ID, equipment_name) VALUES('E0923', 'tennis racket');  
INSERT INTO EQUIPMENT (equipment_ID, equipment_name) VALUES('E1009', 'basketball ring'); 


INSERT INTO COURT (court_ID, court_name) VALUES('C0189', 'futsal court'); 
INSERT INTO COURT (court_ID, court_name) VALUES('C0245', 'tennis court'); 
INSERT INTO COURT (court_ID, court_name) VALUES('C0387', 'squash court'); 
INSERT INTO COURT (court_ID, court_name) VALUES('C0423', 'basketball court'); 
INSERT INTO COURT (court_ID, court_name) VALUES('C0509', 'badminton court'); 
INSERT INTO COURT (court_ID, court_name) VALUES('C0654', 'tennis court'); 
INSERT INTO COURT (court_ID, court_name) VALUES('C0787', 'squash court'); 
INSERT INTO COURT (court_ID, court_name) VALUES('C0823', 'basketball court'); 
INSERT INTO COURT (court_ID, court_name) VALUES('C0989', 'squash court'); 
INSERT INTO COURT (court_ID, court_name) VALUES('C1012', 'futsal court'); 


INSERT INTO Booking (booking_ID, booking_date, booking_time, court_ID, equipment_ID, user_ID) VALUES ('B210102', '2021-1-2', '13:00:00', 'C0423', 'E0112', 'CA19354'); 
INSERT INTO Booking (booking_ID, booking_date, booking_time, court_ID, equipment_ID, user_ID) VALUES ('B210305', '2021-3-5', '08:30:00', 'C0245', 'E0923', ' CA20058'); 
INSERT INTO Booking (booking_ID, booking_date, booking_time, court_ID, equipment_ID, user_ID) VALUES ('B210523', '2021-5-23', '14:00:00', 'C1012', 'E0854', 'CA20598');  
INSERT INTO Booking (booking_ID, booking_date, booking_time, court_ID, equipment_ID, user_ID) VALUES ('B210321', '2021-3-21', '13:00:00', 'C0823', 'E0234','CB19534 '); 
INSERT INTO Booking (booking_ID, booking_date, booking_time, court_ID, equipment_ID, user_ID) VALUES ('B210306', '2021-3-6', '12:00:00', 'C0654', 'E0356', 'CB19164'); 
INSERT INTO Booking (booking_ID, booking_date, booking_time, court_ID, equipment_ID, user_ID) VALUES ('B210401', '2021-4-1', '13:45:00', 'C0989', 'E0689', 'CB20465'); 
INSERT INTO Booking (booking_ID, booking_date, booking_time, court_ID, equipment_ID, user_ID) VALUES ('B210408', '2021-4-8', '10:00:00', 'C0509', 'E0509', 'CB18951'); 
INSERT INTO Booking (booking_ID, booking_date, booking_time, court_ID, equipment_ID, user_ID) VALUES ('B210507', '2021-5-7', '09:00:00', 'C0189', 'E0487', 'CD18764'); 
INSERT INTO Booking (booking_ID, booking_date, booking_time, court_ID, equipment_ID, user_ID) VALUES ('B210402', '2021-4-2', '15:15:00', 'C0509', 'E0767', 'S156324'); 
INSERT INTO Booking (booking_ID, booking_date, booking_time, court_ID, equipment_ID, user_ID) VALUES ('B210130', '2021-1-30', '16:30:00', 'C0823', 'E1009', 'S169874'); 
INSERT INTO Returns (return_ID, booking_ID, return_date, return_time, court_ID, equipment_ID, admin_ID, user_ID) VALUES ('R210202', 'B210102', '2021-01-02', 
'15:00:00', 'C0423', 'E0112', 'A116541', 'CA19354'); 
INSERT INTO Returns (return_ID, booking_ID, return_date, return_time, court_ID, equipment_ID, admin_ID, user_ID) VALUES ('R210305', 'B210305', '2021-3-5', '12:30:00', 'C0245', 'E0923', 'A126354', ' CA20058'); 
INSERT INTO Returns (return_ID, booking_ID, return_date, return_time, court_ID, equipment_ID, admin_ID, user_ID) VALUES ('R210523','B210523','2021-5-
23','18:00:00','C1012','E0854','A114598','CA20598'); 
INSERT INTO Returns (return_ID, booking_ID, return_date, return_time, court_ID, equipment_ID, admin_ID, user_ID) VALUES ('R210321','B210321','2021-3-
21','15:00:00','C0823','E0234','A116541','CB19534 '); 
INSERT INTO Returns (return_ID, booking_ID, return_date, return_time, court_ID, equipment_ID, admin_ID, user_ID) VALUES ('R210306','B210306','2021-3-
6','15:00:00','C0654','E0356','A126354','CB19164'); 
INSERT INTO Returns (return_ID, booking_ID, return_date, return_time, court_ID, equipment_ID, admin_ID, user_ID) VALUES ('R210401','B210401','2021-4-
1','15:45:00','C0989','E0689','A114598','CB20465'); 
INSERT INTO Returns (return_ID, booking_ID, return_date, return_time, court_ID, equipment_ID, admin_ID, user_ID) VALUES ('R210408','B210408','2021-4-
8','12:00:00','C0509','E0509','A116541','CB18951'); 
INSERT INTO Returns (return_ID, booking_ID, return_date, return_time, court_ID, equipment_ID, admin_ID, user_ID) VALUES ('R210507','B210507','2021-5-
7','12:00:00','C0189','E0487','A126354','CD18764');  
INSERT INTO Returns (return_ID, booking_ID, return_date, return_time, court_ID, equipment_ID, admin_ID, user_ID) VALUES ('R210402','B210402','2021-4-
2','17:15:00','C0509','E0767','A114598','S156324'); 
INSERT INTO Returns (return_ID, booking_ID, return_date, return_time, court_ID, equipment_ID, admin_ID, user_ID) VALUES ('R210230','B210130','2021-1-
30','18:30:00','C0823','E1009','A116541','S169874'); 


select * from user; 
select * from admin; 
select * from court; 
select * from equipment; 
Select*from booking; 
Select * from returns; 


select booking.booking_ID, user.user_name 
from booking  
inner join user on booking.user_ID=user.user_ID; 

select user.user_name, booking.booking_date, returns.return_date  
from ((user inner join booking on user.user_ID=booking.user_ID) 
inner join returns on user.user_ID=returns.user_ID); 

select user.user_name, booking.booking_date, booking_time, returns.return_date, return_time, admin.admin_name  
from (((user inner join booking on user.user_ID=booking.user_ID)  
inner join returns on user.user_ID=returns.user_ID) inner join admin on returns.admin_ID=admin.admin_ID); 


select user_ID, user_name  from user  
where user_type like'%Staff%'; 

SELECT user_ID,user_name  from user  where user_ID like'%CB%';  select booking_ID,user_ID,return_time  

Delete from court where court_ID =’C0387’; 
Delete from court where court_ID =’C0787’; 

ALTER TABLE USER MODIFY COLUMN user_name VARCHAR(50); 
ALTER TABLE USER DROP email; 
ALTER TABLE USER ADD email VARCHAR(255) AFTER user_password; 

Update user set user_name=’suzuki’ where user_ID =’CD18764’; 
Update admin set phone_num='60104691403' where admin_ID='A114598'; 
Update court set court_name='badminton court' where court_ID='C0989'; 
Update equipment set equipment_name='shuttlecock' where equipment_ID='E0487'; 
update booking set booking_time='18:00:00' where booking_ID='B210306'; 
update returns set return_date='2021-03-07' where return_ID='R210306'; 
