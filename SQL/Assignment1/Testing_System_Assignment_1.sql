create database LinhPham;
use LinhPham;

create table Department(
	DepartmentID int AUTO_INCREMENT,
	DepartmentName varchar(50),
	PRIMARY KEY(DepartmentID)
);

create table Position1(
	PositionID int AUTO_INCREMENT,
	PositionName varchar(50),
	PRIMARY KEY(PositionID)
);

create table Account(
	AccountID int AUTO_INCREMENT,
	Email varchar(50),
	Username varchar(50),
	FullName varchar(50),
	DepartmentID int,
	PositionID int,
	CreateDate datetime,
	PRIMARY KEY(AccountID)
);

create table Group1(
	GroupID int AUTO_INCREMENT,
	GroupName varchar(50),
	CreatorID varchar(50),
	CreateDate datetime,
	PRIMARY KEY(GroupID)
);

create table GroupAccount(
	GroupID int ,
	AccountID varchar(50),
	JoinDate datetime
);

create table TypeQuestion(
	TypeID int AUTO_INCREMENT,
	TypeName varchar(50),
	PRIMARY KEY(TypeID)
);

create table CategoryQuestion(
	CategoryID int AUTO_INCREMENT,
	CategoryName varchar(50),
	PRIMARY KEY(CategoryID)
);

create table Question(
	QuestionID int AUTO_INCREMENT,
	Content varchar(1000),
    CategoryID int,
    TypeID int, 
    CreatorID int,
    CreateDate datetime,
	PRIMARY KEY(QuestionID)
);

create table Answer(
	AnswerID int AUTO_INCREMENT,
	Content varchar(1000),
    QuestionID int,
    isCorrect varchar(50),
	PRIMARY KEY(AnswerID)
);

create table Exam(
	ExamID int AUTO_INCREMENT,
	Code1 varchar(1000),
    Title varchar(1000),
    CategoryID int,
    Duration varchar(50),
    CreatorID int,
    CreateDate datetime,
	PRIMARY KEY(ExamID)
);

create table ExamQuestion(
	ExamID int,
	QuestionID int
);

