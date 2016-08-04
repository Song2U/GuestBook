select * from tab;
desc EMAILLIST;

drop sequence seq_emaillist;

create sequence seq_emaillist
start with 1
INCREMENT by 1;

-- insert 하기 --
insert into EMAILLIST values(seq_emaillist.nextval, '송이', '양', 'ysi1246@sungkyul.ac.kr', sysdate);
insert into EMAILLIST values(seq_emaillist.nextval, '둘리', '고', 'dooly1234@naver.com', sysdate);

commit;



-- list 가져오기 --
select no, first_name, last_name, email, to_char(REG_DATE, 'yyyy-mm-dd') from EMAILLIST;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- guestbook 생성 실습 --
desc guestbook;

drop sequence seq_guestbook;

create sequence seq_guestbook
start with 1
INCREMENT by 1;
SELECT * FROM GUESTBOOK;
insert into GUESTBOOK values(seq_guestbook.nextval, '양송이', 'abcd1234', '테스트 방명록을 작성했습니다.', sysdate);
insert into GUESTBOOK values(seq_guestbook.nextval, '버섯', 'abcd1234', '방명록 테스트 중입니다.', sysdate);
select no, name, content, to_char(REG_DATE, 'yyyy-mm-dd pm hh12:mi:ss')from GUESTBOOK order by no desc;
delete from GUESTBOOK where no=1;
commit;