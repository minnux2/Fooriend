package be.good.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {

	@RequestMapping("/mypagemain.htm")
	public String writeform() {
		return "/mypage/mypagemain"; // /WEB-INF/views/ + writeform + .jsp
	}// ModelAndView를 리턴하는것과 같음

}
