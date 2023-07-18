package be.good.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import be.good.Service.AccountService;
import be.good.model.BoardDAO;
import be.good.model.BoardDTO;
import be.good.model.MemberDTO;

@Controller
public class BoardloginController {

	@Resource
	private BoardDAO boardDAO;

	@Inject
	AccountService service;

	// 게시판 확인 select
	@RequestMapping("/Boardloginlist.htm")
	public String list(MemberDTO dto, HttpServletRequest request, String mid) {

		// 로그인 세션
		HttpSession session = request.getSession();
		session.getAttribute("mno").toString();
		session.getAttribute("membername").toString();
		String membername = session.getAttribute("membername").toString();
		System.out.println(membername);
		int pg = 1;
		String strPg = request.getParameter("pg");

		if (strPg != null) {
			pg = Integer.parseInt(strPg);
		}
		int rowSize = 10;
		int start = (pg * rowSize) - (rowSize - 1);
		int end = pg * rowSize;

		int total = boardDAO.getBoardCount(); // 총 게시물수
		int allPage = (int) Math.ceil(total / (double) rowSize); // 페이지수
		// int totalPage = total/rowSize + (total%rowSize==0?0:1);
		int block = 10; // 한페이지에 보여줄 범위 << [1] [2] [3] [4] [5] [6] [7] [8] [9] [10] >>
		int fromPage = ((pg - 1) / block * block) + 1; // 보여줄 페이지의 시작
		// ((1-1)/10*10)
		int toPage = ((pg - 1) / block * block) + block; // 보여줄 페이지의 끝
		if (toPage > allPage) { // 예) 20>17
			toPage = allPage;
		}
		HashMap map = new HashMap();

		map.put("start", start);
		map.put("end", end);

		List<BoardDTO> list = boardDAO.getBoardList(map);

		request.setAttribute("list", list);
		System.out.println(list);
		request.setAttribute("pg", pg);
		request.setAttribute("allPage", allPage);
		request.setAttribute("block", block);
		request.setAttribute("fromPage", fromPage);
		request.setAttribute("toPage", toPage);

		return "Boardloginlist";
	}

	// 게시글 작성 폼
	@RequestMapping("/writeform.htm")
	public String writeform() {

		return "writeform"; // /WEB-INF/views/ + writeform + .jsp
	}// ModelAndView를 리턴하는것과 같음

	// 게시글 작성
	@RequestMapping("/write.htm")
	public String write(BoardDTO dto, HttpServletRequest request) {

		HttpSession session = request.getSession();

		dto.setMno(Integer.parseInt(session.getAttribute("mno").toString()));// 형변환

		boardDAO.insertBoard(dto);

		System.out.println("새글" + dto);
		return "redirect:/Boardloginlist.htm";
	}

	@RequestMapping("/reply.htm")
	public String replywrite(BoardDTO dto, int qno, int pg, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();

		dto.setMno(Integer.parseInt(session.getAttribute("mno").toString()));

		boardDAO.insertReply(dto);
		return "redirect:/read.htm?qno=" + qno + "&pg=" + pg;
	}

	@RequestMapping("/read.htm")
	public String read(int qno, int pg, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();

		BoardDTO dto = boardDAO.getBoard(qno);
		List<BoardDTO> replylist = boardDAO.getReplyList(qno);

		boardDAO.updateHit(qno);

		session.getAttribute("membername").toString();
		model.addAttribute("replylist", replylist);
		model.addAttribute("b", dto); // 모델앤 뷰중에서 모델~
		model.addAttribute("pg", pg);
		System.out.println(replylist);
		int q = dto.getQmno();

		System.out.println("게시판 작성한 사람 번호 " + dto.getQmno() + "\n로그인 한 사람 번호"
				+ Integer.parseInt(session.getAttribute("mno").toString()));
		if (q == Integer.parseInt(session.getAttribute("mno").toString())) {

			return "read";
		} else {
			return "read2";
		}

	}

	@RequestMapping("deleteReply.htm")
	public String deleteReply(BoardDTO dto, int qno, int pg, Model model) {
		boardDAO.deleteReply(dto);

		return "redirect:/read.htm?qno=" + qno + "&pg=" + pg;
	}

	// 삭제
	@RequestMapping("/deleteform.htm")
	public String deleteform() {
		return "deleteform"; // deleteform.jsp
	}

	// 삭제
	@RequestMapping("/delete.htm")
	public String delete(BoardDTO dto) {
		boardDAO.deleteBoard(dto);
		return "redirect:/Boardloginlist.htm";
	}

	// 수정
	@RequestMapping("/updateform.htm")
	public String updateform(int qno, Model model) {
		BoardDTO dto = boardDAO.getBoard(qno);
		model.addAttribute("b", dto);

		return "updateform";
	}

	@RequestMapping("/update.htm")
	public String update(BoardDTO dto) {
		boardDAO.updateBoard(dto);
		return "redirect:/Boardloginlist.htm";
	}

	// FAQ 회원
	@RequestMapping("/FAQ.htm")
	public String test() {
		return "FAQ";
	}

	// FAQ 비회원
	@RequestMapping("/FAQ2.htm")
	public String test2() {
		return "FAQ2";
	}
}
