

create database linh;
use linh;

create table Department(
DepartmentID int AUTO_INCREMENT,
DepartmentName varchar(50),
PRIMARY KEY(DepartmentID)
)

create table Position1(
PositionID int AUTO_INCREMENT,
PositionName varchar(50),
PRIMARY KEY(PositionID)
)

create table Account(
AccountID int AUTO_INCREMENT,
Email varchar(50),
Username varchar(50),
FullName varchar(50),
DepartmentID int,
PositionID int,
CreateDate datetime,
PRIMARY KEY(AccountID)
)

Table 4: Group
 GroupID: định danh của nhóm (auto increment)
 GroupName: tên nhóm
 CreatorID: id của người tạo group
 CreateDate: ngày tạo group


create table Group1(
GroupID int AUTO_INCREMENT,
GroupName varchar(50),
CreatorID varchar(50),
CreateDate datetime,
PRIMARY KEY(GroupID)
)

Table 5: GroupAccount
 GroupID: định danh của nhóm
 AccountID: định danh của User
 JoinDate: Ngày user tham gia vào nhóm

create table GroupAccount(
GroupID int ,
AccountID varchar(50),
JoinDate datetime
)



