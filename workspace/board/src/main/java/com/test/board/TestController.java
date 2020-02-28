package com.test.board;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.board.bean.TestBean;
import com.test.board.service.TestService;

@Controller
public class TestController {
	
	@Autowired
	TestService service;				//컨트롤러가 사용할 Service를  Inject함.
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)	//value = 웹브라우저 주소값, method=전송방식
	public String test(Model model) throws Exception{				
										//DB값 받아서 웹브라우저로 보내야함.메소드 매개변수로 Model을 추가
		List<TestBean> list;
		list = service.test();			//service의 test를 실행시키고 DB값을 받음.
		model.addAttribute("list", list);	//Model에 DB값이 담긴 List를 넣어줌.
		
		return "test";					//"localhost:8080/프로젝트/test"가 입력되면 "test.jsp"로 이동시킴.
	}
}
