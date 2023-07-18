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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import be.good.Service.AccountService;
import be.good.Service.OrderService;
import be.good.model.OrderDTO;

@Controller
public class OrderController {

	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);

	@Inject
	AccountService aservice;
	@Inject
	OrderService oservice;

	@RequestMapping(value = "/orderList.htm", method = RequestMethod.GET)
	public String orderList(HttpServletRequest req, HttpServletResponse response, RedirectAttributes rttr, Model model)
			throws Exception {
		logger.info("get orderList");

		HttpSession session = req.getSession();
		session.getAttribute("member");

		String mid = (String) session.getAttribute("member");

		session.setAttribute("mid", mid);
		System.out.println(mid);

		if (mid == null) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인 해주세요');</script>");
			out.flush();
			return "home";
		} else {
			logger.info("get orderList2");

			System.out.println(mid);

			List<OrderDTO> orderhistorylist = oservice.orderhistory(mid);
			model.addAttribute("orderhistorylist", orderhistorylist);

			return "orderList";
		}

	}

	@RequestMapping(value = "/ordertoday.htm", method = RequestMethod.GET)
	public String ordertoday(HttpServletRequest req, HttpServletResponse response, RedirectAttributes rttr, Model model)
			throws Exception {
		logger.info("get ordertoday");

		HttpSession session = req.getSession();
		session.getAttribute("member");

		String mid = (String) session.getAttribute("member");

		session.setAttribute("mid", mid);
		System.out.println(mid);

		logger.info("get ordertoday2");

		List<OrderDTO> ordertodaylist = oservice.ordertoday(mid);
		model.addAttribute("ordertodaylist", ordertodaylist);

		return "ordertoday";
	}

}
