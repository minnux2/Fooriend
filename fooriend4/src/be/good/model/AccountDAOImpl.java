package be.good.model;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
@Component
public class AccountDAOImpl implements AccountDAO {

	@Inject
	SqlSession sql;

	@Autowired
	private SqlSession sqlsession;

	// 회원가입
	@Override
	public void register(MemberDTO dto) throws Exception {
		sql.insert("accountMapper.register", dto);
	}

	// 아이디 중복체크
	@Override
	public MemberDTO idCheck(String mid) throws Exception {
		MemberDTO user = sql.selectOne("accountMapper.idCheck", mid);
		return user;
	}

	// 로그인
	@Override
	public List<MemberDTO> login(MemberDTO dto) throws Exception {
		return sql.selectList("accountMapper.login", dto);
	}

	// 아이디찾기
	@Override
	public MemberDTO memberIdSearch(MemberDTO dto) throws Exception {
		return sql.selectOne("memberIdSearch", dto);
	}

	// 비밀번호찾기
	@Override
	public MemberDTO memberPwdCheck(MemberDTO dto) throws Exception {
		return sql.selectOne("memberPwdCheck", dto);
	}

	// 회원정보 조회
	@Override
	public MemberDTO readMember(String mid) {
		return sql.selectOne("accountMapper.readMember", mid);
	}

	// 회원정보 수정
	@Override
	public void memberUpdate(MemberDTO dto) throws Exception {
		sql.update("accountMapper.memberUpdate", dto);
	}

	@Override
	public void memberDelete(MemberDTO dto) throws Exception {
		sql.delete("accountMapper.memberDelete", dto);
	}

	@Override
	public void memDel(MemberDTO dto) throws Exception {
		sql.delete("accountMapper.memDel", dto);
	}

	// mno 찾기
	@Override
	public String searchmno(MemberDTO dto) throws Exception {
		return sql.selectOne("accountMapper.searchmno", dto);

	}

	// 포인트조회
	@Override
	public int selectpoint(int a) throws Exception {
		return sql.selectOne("accountMapper.selectpoint", a);

	}
	// 포인트조회
	@Override
	public int selectpoint2(String mid) throws Exception {
		return sql.selectOne("accountMapper.selectpoint2", mid);
		
	}

	@Override
	public void pointcharge(MemberDTO dto) throws Exception {
		sql.update("accountMapper.pointcharge", dto);
	}
}

