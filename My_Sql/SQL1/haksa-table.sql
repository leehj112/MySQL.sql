# 학과 테이블
create table department(
	dept_code int(2) Not null,          #학과번호
	dept_name char(30) Not null,        #학과명
	dept_ename varchar(50),             #학과영문이름
	create_date date default null,      #학과생성날짜
	primary key (dept_code)
) engine = innoDB;

# 학적(학생신상) 테이블
create table student(
	stu_no char(10) Not null,          #학번
	stu_name char(10) Not null,        #학생이름
	stu_ename varchar(30),             #영문이름
	dept_code int(2) Not null,         #학과코드
	grade int(1) Not null,             #학년
	class int (1) Not null,            #반
	juya char(2),                      #주야구분(예시 : 주, 야)
	birthday varchar(8) Not null,      #생년월일 (예시 : 19880912)
	gender varchar(1) not null,        #성별(예시 : 남자(1,3,5), 여자(2,4,6))
	post_no varchar(5) Not null,       #우편번호
	address varchar(100),              #주소
	tel1 varchar(3),                  #집전화 지역
	tel2 varchar(4),                  #집전화 국
	tel3 varchar(4),                  #집전화 번호
	mobile varchar(14),               #휴대전화번호
	primary key (stu_no),
	constraint s_dp_fk foreign key(dept_code)  #외래키 학과 테이블의 학과코드
		references department(dept_code)
) engine = innoDB;

# 수강신청
create table attend(
	stu_no char(10) Not null,              #학번
	att_year char(4) Not null,             #수강년도
	att_term int(1) Not null,              # 수강학기
	att_isu int(1) Not null,               #이수구분
	sub_code char(5) Not null,             #과목코드
	prof_code char(4) Not null,            #교수코드
	att_point int(1) Not null,             #이수학점
	att_grade int(3) default '0',          #취득점수
	att_div char(1) default 'N' Not null,  #수강신청구분
	att_jae char(1) default '1',           #재수강 구분 1(본학기 수강), 2(재수강), 3(계절학기 수강) 
	att_date date Not null,                #수강처리일자
	primary key (stu_no, att_year, att_term, sub_code, prof_code, att_jae)
) engine = innoDB;

# 등록금 테이블
create table fee(
	stu_no varchar(10) Not null,           #학번
	fee_year varchar(4) Not null,          #등록년도
	fee_term int(1) Not null,              #등록학기
	fee_enter int(7),                      #입학금
	fee_price int(7) Not null,             #등록금(수업료)
	fee_total int(7) Default '0' Not null, #등록금총액=입학금+수업료
	jang_code char(2) Null,                #장학코드
	jang_total int(7),                     #장학금액
	fee_pay int(7) Default '0' Not null,   #납부총액=등록금총액-장학금액
	fee_div char(1) Default 'N' Not null,  #등록구분
	fee_date date Not null,                #등록날짜
	primary key (stu_no, fee_year, fee_term)
) engine = innoDB;

# 성적 테이블
create table score(
	stu_no char(10) Not null,             #학번
	sco_year char(4) Not null,            #성적취득년도
	sco_term int(1) Not null,             #학기
	req_point int(2),                     #신청학점
	take_point int(2),                    #취득학점
	exam_avg float(2,1),                  #평점평균
	exam_total int(4),                    #백분율 총점
	sco_div char(1),                      #성적구분
	sco_date date,                        #성적처리일자
	primary key (stu_no, sco_year, sco_term)
) engine = innoDB;

# 교과목 테이블
create table subject(
	sub_code char(5) Not null,            #과목번호
	sub_name varchar(50) Not null,        #과목명
	sub_ename varchar(50),                #영문과목명
	create_year char(4),                  #개설년도
	primary key (sub_code)
) engine = innoDB;

#교수 테이블
create table professor(
	prof_code char(4) Not null,           #교수번호
	prof_name char(10) Not null,          #교수명
	prof_ename varchar(30),               #교수영문이름
	create_date date default null,        #교수임용날짜
	primary key (prof_code)
) engine = innoDB;

# 동아리 테이블
create table circle(
	cir_num int(4) Not null auto_increment,  #동아리가입번호
	cir_name char(30) Not null,              #동아리명
	stu_no char(10) Not Null,                #학번
	stu_name char(10) Not Null,              #이름
	president char(1) default '2' Not null,  #동아리회장(0), 부회장(1), 회원(2)
	primary key (cir_num)
) engine = innoDB;

# 도로명 우편번호 테이블
create table post(
	post_no varchar(6) Not null,         #구역번호           1 신우편번호
	sido_name varchar(20) Not null,      #시도명             2
	sido_eng varchar(40) Not null,       #시도영문           3
	sigun_name varchar(20) Not null,     #시군구명           4
	sigun_eng varchar(40) Not null,      #시군구영문         5
	rowtown_name varchar(20) Not null,   #읍면               6
	rowtown_eng varchar(40) Not null,    #읍면영문           7
	road_code varchar(12),               #도로명코드         8 (시군구코드(5)+도로명번호(7))
	road_name varchar(80),               #도로명             9 
	road_eng varchar(80),                #도로영문명        10
	underground_gubun varchar(1),        #지하여부          11 (0 : 지상, 1 : 지하, 2 : 공중)
	building_bon int(5),                 #건물번호본번      12
	building_boo int(5),                 #건물번호부번      13
	management_no varchar(25) Not null,  #건물관리번호      14  
	baedal varchar(40),                  #다량배달처명      15 (NULL)
	town_building varchar(200),          #시군구용 건물명   16
	row_code varchar(10) Not null,       #법정동코드        17
	row_dongname varchar(20),            #법정동명          18
	ri_name varchar(20),                 #리명              19
	administration_name varchar(40),     #행정동명          20
	mountain_gubun varchar(1),           #산여부       21 (0 : 대지, 1 : 산)
	bungi int(4),                        #지번본번(번지)    22
	town_no varchar(2),                  #읍면동일련번호    23
	ho int(4),                           #지번부번(호)      24
	gu_post_no varchar(6),               #구 우편번호       25 (NULL)
	post_seq varchar(3),                 #우편일련번호      26 (NULL)
	primary key (management_no)
) engine = innoDB;