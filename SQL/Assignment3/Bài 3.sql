
/* Câu 2/
select * from department;

/* Câu 3: lấy ra id của phòng ban "Sale"*/
select DepartmentID from department where DepartmentName = 'sale';

/*Câu 4 Lấy ra thông tin account có full name dài nhất*/
select * from `account`;

select * from `account` where 
character_length(fullname) = (select max(character_length(fullname)) from  `account`);

/* Câu 5 Lấy ra thông tin account  có full name dài nhất và thuộc phòng ban có id = 3*/

select * from `account`;
select * from `account` where 
character_length(fullname) = 
						(select max(character_length(fullname)) from  `account` where departmentid = '3'  );

  
/* Câu 6 Lấy ra tên group đã tham gia trước ngày 20/12/2019 /*/

select * from `group` where createDate <  '2019-12-20 00:00:00';

/* Câu 7 Lấy ra ID của question có >= 4 câu trả lời*/ 

select QuestionID from (
	select QuestionID, count(QuestionID) as dem  from answer 
	group by QuestionID) as BangA
 where dem >=4 ;
 
 /* Câu 8 Lấy ra các mã đề thi có thời gian thi >= 60 phút và được tạo trước ngày 20/12/2019*/
select * from exam;
select * from exam where createdate >= '2019-12-20' and duration >= '00:60:00';

/* Câu 9 Lấy ra 5 group được tạo gần đây nhất*/

select * from `group`;
select *   from `group`
			order by createdate desc 
            limit 5;
            
/* Câu 10 Đếm số nhân viên thuộc department có id = 2*/
  
select * from `account`;
select count(accountid) from `account` where departmentid = 2;

/* Câu 11 Lấy ra nhân viên có tên bắt đầu bằng chữ "D" và kết thúc bằng chữ "o"*/

select * from `account`;
select `fullname` from `account` where `fullname` like 'D%' and `fullname` like '%o';

/*Question 12: Xóa tất cả các exam được tạo trước ngày 20/12/2019*/

SET SQL_SAFE_UPDATES = 0;

delete from `exam` where `createdate` < '2019.12.21';

select * from examquestion where Examid = '4';
delete from `examquestion` where Examid = '4';

select * from `exam`;
select * from `exam` where `createdate` < '2019.12.20';

/*Question 13: Xóa tất cả các question có nội dung bắt đầu bằng từ "câu hỏi"*/

select * from answer; 
delete from `answer` where `questionid` in (1, 2, 3);

select * from examquestion; 
delete from `examquestion` where `questionid` in (1, 2, 3);

select * from question where `content` like 'câu hỏi%' ;
select * from answer;
delete from `question` where `content` like 'câu hỏi%';

/*Update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và
email thành loc.nguyenba@vti.com.vn */
select * from `account`;

update `account` set `fullname` = 'Nguyễn Bá Lộc', `email` = 'loc.nguyenba@vti.com.vn' where `accountid` = 5;

/*Question 15: update account có id = 5 sẽ thuộc group có id = 4*/


insert into `groupaccount` (`accountid`, `groupid`) values ('5', '4');







            
            









