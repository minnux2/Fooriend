package be.good.controller;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import be.good.Service.AccountService;
import be.good.Service.SubService;
import be.good.model.MemberDTO;
import be.good.model.SubDTO;

//Controller를 상속또는 implements를 앋고 POJO방식으로 작성

@Controller
public class SubController {

	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);

	@Inject
	SubService service;
	@Inject
	AccountService aservice;

	@RequestMapping(value = "/subscribeform.htm", method = { RequestMethod.POST, RequestMethod.GET })
	public String subscribeform(HttpServletRequest req, HttpServletResponse response, RedirectAttributes rttr)
			throws Exception {
		logger.info("post subscribe");

		HttpSession session = req.getSession();
		String mid = (String) session.getAttribute("member");
		session.setAttribute("mid", mid);
		System.out.println(mid);

		if (mid == null) {

			return "home";
		} else {
			return "subscribeform";
		}
	}

	// 모달 get
	@RequestMapping(value = "/modal.htm", method = RequestMethod.GET)
	public void getModal() throws Exception {
		logger.info("get modal");
	}

	@RequestMapping(value = "/subscribeNextForm.htm", method = RequestMethod.GET)
	public void subscribeNextform() throws Exception {
		logger.info("get subscribenext");

	}

	@RequestMapping(value = "/subscribeNextForm.htm", method = RequestMethod.POST)
	public String postsubscribeNextform(MemberDTO dto, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		logger.info("post subscribe1");

		HttpSession session = request.getSession();		
		
		int deliveryhour = Integer.parseInt(request.getParameter("deliveryhour"));
		int deliverymin = Integer.parseInt(request.getParameter("deliverymin"));

		if (deliverymin == 30) {
			deliverymin = 0;
		} else {
			deliverymin = 30;
			deliveryhour--;
		}

		LocalTime deliverytime = LocalTime.of(deliveryhour, deliverymin, 00);
		System.out.println(deliverytime);
		
		String subloc = request.getParameter("subloc");
		String sublocdetail = request.getParameter("subloc2");

		String period = request.getParameter("period");
		String substart = request.getParameter("substart");
		
		
		String[] day = request.getParameterValues("day");
		String resultday = "";
		System.out.println(deliveryhour);
		System.out.println(deliverymin);
		for (int i = 0; i < day.length; i++) {

			resultday += day[i];

		}

		System.out.println(resultday);
		session.setAttribute("subday", resultday);
		
		
		System.out.println(dto);
		// 로그인 세션값 설정

	

		int mno = (int) session.getAttribute("mno");
		session.setAttribute("submno", mno);

		dto.setMno(mno);
		System.out.println(dto);

		int point = aservice.selectpoint(mno);

		System.out.println(point);
		session.setAttribute("sublocdetail", sublocdetail);
		session.setAttribute("point", point);
		session.setAttribute("deliverytime", deliverytime);
		session.setAttribute("subloc", subloc);
		session.setAttribute("period", period);
		session.setAttribute("substart", substart);

		System.out.println(mno);
		return "subscribeNextForm";
	}

	@RequestMapping(value = "/mypage.htm", method = RequestMethod.GET)
	public void getmypage() {
		logger.info("get mypage");
	}

	@RequestMapping(value = "/mypage.htm", method = RequestMethod.POST)
	public String postmypage(MemberDTO dto, HttpServletRequest request, HttpServletResponse response) throws Exception {
		logger.info("post subscribe2");
		HttpSession session = request.getSession();

		SubDTO ddto = new SubDTO();
		System.out.println();
		int submno = (int) session.getAttribute("submno");


		LocalTime deliverytime = LocalTime.parse((request.getParameter("deliverytime")));
		System.out.println(deliverytime);

		String subloc = (String) session.getAttribute("subloc");
		String sublocdetail = (String) session.getAttribute("sublocdetail");
		String period = (String) session.getAttribute("period");
		int days = Integer.parseInt(period) * 7;

		LocalDate substart = LocalDate.parse((String) session.getAttribute("substart"));
		LocalDate subend = substart.plusDays(days);
		
		String subday = (String) session.getAttribute("subday");
		String subcate = request.getParameter("category");

		int point = Integer.parseInt(request.getParameter("point"));
		int point2 = Integer.parseInt(request.getParameter("point2")) + point;



		ddto.setSubmno(submno);
		ddto.setSubday(subday);
		ddto.setDeliverytime(deliverytime);
		ddto.setSubloc(subloc);
		ddto.setSublocdetail(sublocdetail);
		ddto.setSubstart(substart);
		ddto.setSubcate(subcate);
		ddto.setSubend(subend);
		ddto.setSubscribing("Y");
		System.out.println(dto);

		dto.setMno(submno);
		System.out.println(dto);
		
		dto.setPoint(point2);

		service.insertSub(ddto);
		aservice.pointcharge(dto);
		return "mypage";
	}

	@RequestMapping(value = "/sublist.htm", method = RequestMethod.GET)
	public String sublist(HttpServletRequest req, HttpServletResponse response, RedirectAttributes rttr, Model model)
			throws Exception {
		logger.info("get sublist");

		HttpSession session = req.getSession();
		session.getAttribute("member");

		String mid = (String) session.getAttribute("member");

		session.setAttribute("mid", mid);
		System.out.println(mid);

		logger.info("get sublist2");

		List<SubDTO> sublist = service.sublist(mid);
		model.addAttribute("sublist", sublist);

		return "sublist";
	}
}