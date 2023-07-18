package be.good.model;

import java.util.List;

public interface AccountDAO {
	

	//회원가입
	public void register(MemberDTO dto) throws Exception;
	
	//로그인
	public List<MemberDTO> login(MemberDTO dto) throws Exception;
	
	//아이디찾기
	public MemberDTO memberIdSearch(MemberDTO dto) throws Exception;
	
	//비번찾기
	public MemberDTO memberPwdCheck(MemberDTO dto) throws Exception;
	
	//회원정보 조회 
	public MemberDTO readMember(String mid) throws Exception;
	
	//회원정보 수정
	public void memberUpdate(MemberDTO dto) throws Exception;
	
	//아이디 중복체크
	public MemberDTO idCheck(String mid) throws Exception;
	
	//회원 탈퇴
	public void memberDelete(MemberDTO dto) throws Exception;
	
	public void memDel(MemberDTO dto) throws Exception;
	
	//mno 불러오기
	public String searchmno(MemberDTO dto) throws Exception;
	
	//포인트 조회
	public int selectpoint(int a) throws Exception;
	
	public int selectpoint2(String mid) throws Exception;
	
	//카드정보&포인트 충전
	public void pointcharge(MemberDTO dto) throws Exception;
	
}
