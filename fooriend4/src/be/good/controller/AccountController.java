package be.good.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import be.good.Service.AccountService;
import be.good.model.MemberDTO;

//Controller를 상속또는 implements를 앋고 POJO방식으로 작성

@Controller
public class AccountController {

	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);

	@Inject
	AccountService service;

	@RequestMapping(value = "/register.htm", method = RequestMethod.GET)
	public void getregister() throws Exception {
		logger.info("get register");
		
	}

	// 메인페이지 get
	@RequestMapping(value = "/mainPage.htm", method = RequestMethod.GET)
	public void mainPage() throws Exception {
		logger.info("get register");
	}

	// 메인페이지 get
	@RequestMapping(value = "/mainPage2.htm", method = RequestMethod.GET)
	public void mainPage2() throws Exception {
		logger.info("get register");
	}

	// 회원가입 post
	@RequestMapping(value = "/register.htm", method = RequestMethod.POST)
	public String postRegister(@ModelAttribute MemberDTO dto, HttpServletRequest request, Model model,
			HttpSession session, HttpServletResponse response) throws Exception {
		return "home";
	}

	// 아이디 중복체크
	@RequestMapping(value = "/idCheck.htm", method = RequestMethod.POST)
	public String idCheckAction(@RequestParam(value = "mid", defaultValue = "", required = false) String mid,
			HttpServletResponse response, HttpServletRequest request, Model model, @ModelAttribute MemberDTO dto,
			BindingResult result) throws Exception {

		model.addAttribute("mid", mid);

		mid = request.getParameter("mid");
		String mname = request.getParameter("mname");
		String maddress = request.getParameter("maddress");
		String memail = request.getParameter("memail");
		String mpassword = request.getParameter("mpassword");
		String mphone = request.getParameter("mphone");

		int mallergyPeanut = Integer.parseInt(request.getParameter("mallergyPeanut"));
		int mallergyShellfish = Integer.parseInt(request.getParameter("mallergyShellfish"));
		int mallergyMilk = Integer.parseInt(request.getParameter("mallergyMilk"));
		int mallergy = mallergyPeanut + mallergyShellfish + mallergyMilk;

		dto = service.idCheck(mid);

		if (dto == null) {
			model.addAttribute("check", 0);

			MemberDTO dto2 = new MemberDTO();

			dto2.setMname(mname);
			dto2.setMaddress(maddress);
			dto2.setMemail(memail);
			dto2.setMpassword(mpassword);
			dto2.setMphone(mphone);
			dto2.setMallergy(mallergy);
			dto2.setMid(mid);

			model.addAttribute("mid", mid);

			// 유효성 검사
			if (result.hasErrors()) {
				// 에러를 list로 저장
				List<ObjectError> list = result.getAllErrors();
				for (ObjectError error : list) {
					System.out.println(error); // 콘솔에서 먼저 확인
				}
			}

			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('축하드립니다! 회원가입이 완료되었습니다. 로그인해주세요.');</script>");
			out.flush();

			service.register(dto2);

			return "home";
		} else {
			model.addAttribute("check", 1);

			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('중복된 아이디입니다. 다시입력해주세요 ');</script>");
			out.flush();

			return "register";
		}
	}

	// 로그인
	@RequestMapping(value = "/home.htm", method = RequestMethod.POST)
	public String login(MemberDTO dto, String mid, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post home");

		req.setCharacterEncoding("UTF-8");

		HttpSession session = req.getSession();
		List<MemberDTO> login = service.login(dto);

		// 로그인
		if (!login.isEmpty()) { // 로그인 성공
			session.setAttribute("member", login.get(0).getMid());
			session.setAttribute("memberpassword", login.get(0).getMpassword());
			session.setAttribute("memberemail", login.get(0).getMemail());
			session.setAttribute("membername", login.get(0).getMname());
			session.setAttribute("memberphone", login.get(0).getMphone());
			session.setAttribute("mno", login.get(0).getMno());
		} else { // 로그인 실패
			rttr.addFlashAttribute("msg", false);
			return "redirect:/home.htm";
		}

		session.setMaxInactiveInterval(20 * 60); // 세션 유지

		return "redirect:/home.htm";
	}

	// 로그아웃
	@RequestMapping(value = "/logoutMain.htm", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		request.getSession().invalidate();
		request.getSession(true);
		return "redirect:/mainPage.htm";
	}

	// 아이디찾기
	@RequestMapping(value = "/search_id.htm", method = RequestMethod.GET)
	public String search_id(HttpServletRequest request, Model model, MemberDTO dto) {

		return "/search_id";
	}

	// 비밀번호찾기
	@RequestMapping(value = "/search_pwd.htm", method = RequestMethod.GET)
	public String search_pwd(HttpServletRequest request, Model model, MemberDTO dto) {

		return "/search_pwd";
	}

	// 아이디찾기 결과
	@RequestMapping(value = "/search_result_Id.htm", method = { RequestMethod.GET, RequestMethod.POST })
	public String search_result_id(HttpServletRequest request, Model model,
			@RequestParam(required = true, value = "mname") String mname,
			@RequestParam(required = true, value = "memail") String memail, MemberDTO dto) {

		try {

			dto.setMname(mname);
			dto.setMemail(memail);
			MemberDTO memberSearch = service.memberIdSearch(dto);

			model.addAttribute("MemberDTO", memberSearch);

		} catch (Exception e) {
			System.out.println(e.toString());
			model.addAttribute("msg", "오류 발생");
		}
		return "/search_result_Id";
	}

	// 비밀번호 찾기결과
	@RequestMapping(value = "/search_result_pwd.htm", method = { RequestMethod.GET, RequestMethod.POST })
	public String search_result_pwd(HttpServletRequest request, Model model,
			@RequestParam(required = true, value = "mname") String mname,
			@RequestParam(required = true, value = "memail") String memail,
			@RequestParam(required = true, value = "mid") String mid, MemberDTO dto) {

		try {

			dto.setMname(mname);
			dto.setMemail(memail);
			dto.setMid(mid);
			MemberDTO memberSearch = service.memberPwdCheck(dto);
			model.addAttribute("MemberDTO", memberSearch);

		} catch (Exception e) {
			System.out.println(e.toString());
			model.addAttribute("msg", "오류가 발생되었습니다.");
		}

		return "/search_result_pwd";
	}

	// 회원정보 조회
	@RequestMapping(value = "/userinfo.htm", method = RequestMethod.GET)
	public String readMember(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		String member = (String) session.getAttribute("member");
		session.getAttribute("memberpassword");
		session.getAttribute("membername");
		session.getAttribute("memberphone");
		session.getAttribute("memberemail");
		
		int point= service.selectpoint2(member);
		
		session.setAttribute("point", point);
	
		return "memberUpdate";
	}

	// 회원정보수정
	@RequestMapping(value = "/memberUpdate.htm", method = { RequestMethod.POST, RequestMethod.GET })
	public String memberUpdate(HttpServletRequest request, HttpSession session, HttpServletResponse response)
			throws Exception {
		session = request.getSession();

		String mId = (String) session.getAttribute("member");
		String mName = (String) session.getAttribute("membername");
		String mEmail = (String) session.getAttribute("memberemail");
		String mPwd = request.getParameter("mpassword");
		String mphone = request.getParameter("mphone");

		MemberDTO dto = new MemberDTO();

		if (mPwd.length() < 8 || mPwd.length() > 20) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('비밀번호는 8글자 이상 20글자 이하로 입력해주세요.');</script>");
			out.flush();
			return "/memberUpdate";

		} else {
			dto.setMpassword(mPwd);
			dto.setMphone(mphone);
			dto.setMid(mId);
			dto.setMname(mName);
			dto.setMemail(mEmail);

			session.setAttribute("memberpassword", mPwd);
			session.setAttribute("memberphone", mphone);
			service.memberUpdate(dto);

			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('회원정보가 수정되었습니다.');</script>");
			out.flush();

			return "/memberUpdate";
		}
	}

	// 마이페이지
	@RequestMapping("/mypage.htm")
	public String test() {
		return "mypage";
	}

	// 회원 탈퇴 get
	@RequestMapping(value = "/memberDeleteView.htm", method = RequestMethod.GET)
	public String memberDeleteView() throws Exception {
		return "memberDeleteView";
	}

	// 회원 탈퇴 post - 수정필요:일단 회원정보만 삭제, 구독내역도 다 삭제되어야함
	@RequestMapping(value = "/memberDelete", method = RequestMethod.POST)
	public String memberDelete(HttpServletResponse response, HttpServletRequest request, MemberDTO dto,
			HttpSession session, RedirectAttributes rttr) throws Exception {
		session = request.getSession();
		// 세션에 있는 member를 가져와 member변수에 넣기 (id)

		// 세션에있는 아이디, 비밀번호
		String sessionID = (String) session.getAttribute("member");
		String sessionPASS = (String) session.getAttribute("memberpassword");

		System.out.println(sessionID);
		System.out.println(sessionPASS);
		dto.setMid(sessionID);
		System.out.println(dto);

		if (sessionPASS.equals(dto.getMpassword())) {
			service.memberDelete(dto);

			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println(
					"<script>alert('회원탈퇴가 완료되었습니다. 그동안 이용해주셔서 감사합니다.'); window.close(); opener.parent.location='mainPage.htm';</script>");
			out.flush();

			session.invalidate();
			return "redirect:/mainpage.htm";
		} else {
			rttr.addFlashAttribute("msg", false);
			return "/membeUpdate";
		}
	}

	// 회원 탈퇴 get
	@RequestMapping(value = "/logintest.htm", method = RequestMethod.GET)
	public String logintest() throws Exception {
		return "logintest";
	}
}