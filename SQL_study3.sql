
use mysql;

# 8.4 버전에서 지원이 없어짐 
# select password('12345');


# 사용자 생성 
create user choi identified by 'choi123';

desc user; 

select host, user from user; 


# 권환부여 
grant all privileges on hellodb. * to choi;

# 권한 회수 
revoke all privileges on hellodb. * from choi;

# 권한 확인
show grants for choi;

# 사용자 삭제
drop user choi; 