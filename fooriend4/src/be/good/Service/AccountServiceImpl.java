package be.good.Service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import be.good.model.AccountDAO;
import be.good.model.MemberDTO;

@Service
public class AccountServiceImpl implements AccountService {

	@Inject
	AccountDAO dao;

	// 회원가입
	@Override
	public void register(MemberDTO dto) throws Exception {
		dao.register(dto);
	}

	// 로그인
	@Override
	public List<MemberDTO> login(MemberDTO dto) throws Exception {
		return dao.login(dto);
	}

	// 아이디 찾기
	@Override
	public MemberDTO memberIdSearch(MemberDTO dto) throws Exception {
		return dao.memberIdSearch(dto);
	}

	// 비밀번호 찾기
	@Override
	public MemberDTO memberPwdCheck(MemberDTO dto) throws Exception {
		return dao.memberPwdCheck(dto);
	}

	// 회원정보 조회
	public MemberDTO readMember(String mid) throws Exception {
		return dao.readMember(mid);
	}

	// 회원정보 수정
	@Override
	public void memberUpdate(MemberDTO dto) throws Exception {
		dao.memberUpdate(dto);
	}

	// 아이디 중복체크
	@Override
	public MemberDTO idCheck(String mid) throws Exception {
		return dao.idCheck(mid);
	}

	// 회원 탈퇴
	public void memberDelete(MemberDTO dto) throws Exception {
		dao.memberDelete(dto);
	}

	// mno 찾기
	public String searchmno(MemberDTO dto) throws Exception {

		String aa = dao.searchmno(dto);
		return aa;
	}

	// 포인트 조회하기
	public int selectpoint(int a) throws Exception {
		int bb = dao.selectpoint(a);
		return bb;
	}
	// 포인트 조회하기
	public int selectpoint2(String mid) throws Exception {
		int bb = dao.selectpoint2(mid);
		return bb;
	}

	//포인트충전
	@Override
	public void pointcharge(MemberDTO dto) throws Exception {
		dao.pointcharge(dto);
	}

	@Override
	public void certifiedPhoneNumber(String userPhoneNumber, int randomNumber) {

	}

}
