package project06.mvc.controller;

import java.util.Locale;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.LocaleResolver;

import project06.mvc.service.EmpService;
import project06.mvc.service.MailService;
import project06.mvc.vo.Emp;
import project06.mvc.vo.Mail;

@Controller

@RequestMapping("/login.do")
public class LoginCtrl {
	
	@Autowired(required=false)
	private EmpService service;
	
	@Autowired(required=false)
	private MailService service2;
	
	//안드로이드 로그인 json
	@RequestMapping(params="method=empList")
	public String empList(Emp emp,Model d) {
		d.addAttribute("emplist", service.login(emp));
		return "pageJsonReport";
	}
	// http://localhost:5080/project06/multi2.do
	@Autowired(required = false)
	private LocaleResolver localResolver;
	
	@RequestMapping(params="method=multi")
	public String multi(@RequestParam(value="lang",
							defaultValue = "ko") String lang,
			HttpServletRequest request, HttpServletResponse response) {
		System.out.println("선택한 언어:"+lang);
		Locale locale = new Locale(lang);
		localResolver.setLocale(request,response, locale);
		
		return "WEB-INF\\views\\hyeongjun\\login.jsp";
	}	
	
	
	//http://localhost:5080/project06/login.do?method=base
	
	//기본 로그인 화면
	@RequestMapping(params="method=base")
	public String base() {
		
		return "WEB-INF\\views\\hyeongjun\\login.jsp";
	}
	
	//로그인
	@RequestMapping(params="method=login")
	public String login(Emp mem, HttpSession session) {
		
		if(service.login(mem)!=null) {
			session.setAttribute("mem", service.login(mem));
		}
		
		return "WEB-INF\\views\\hyeongjun\\login.jsp";
	}
	
	//메인에 세션값 전달 (사용은 안함)
	@RequestMapping(params="method=main")
	public String main(HttpSession session) {
		session.getAttribute("mem");
		return "WEB-INF\\views\\hyeongjun\\project_insert.jsp";
	}
	
	//로그아웃
	@RequestMapping(params="method=logout")
	public String logout(HttpSession session, Model d) {
		session.removeAttribute("mem");
		d.addAttribute("logoutOk",true);
		return "WEB-INF\\views\\hyeongjun\\login.jsp";
	}
	
	//사원번호 찾기 초기화면
	@RequestMapping(params="method=fEmpno")
	String vEmpno() {
		
		return "WEB-INF\\views\\hyeongjun\\forgot-empno.jsp";
	}
	
	//사원번호 찾기 결과 화면
	@RequestMapping(params="method=vEmpno")
	String fEmpno(Emp mem, Model d) {
		
		d.addAttribute("empno",service.findEmpno(mem));
		return "WEB-INF\\views\\hyeongjun\\view-empno.jsp";
	}
	
	//패스워드 찾기 초기화면
	@RequestMapping(params="method=fPass")
	String vPass() {
		return "WEB-INF\\views\\hyeongjun\\forgot-password.jsp";
	}
	
	//패스워드찾기 정보입력 후 일치하는 회원 찾기
	@RequestMapping(params="method=vPass")
	String findPass(Emp mem,Model d) {
	d.addAttribute("mem",service.findPass(mem));
	return "WEB-INF\\views\\hyeongjun\\forgot-password.jsp";
	}	
	
	//일치하는 회원 있을시에 이메일 전송
	@RequestMapping(params="method=emailSend")
	public String emailSend(Mail send) throws MessagingException  {
		System.out.println(send.getSubject()+" 메일전송");
		service2.sendMail(send);
		return "WEB-INF\\views\\hyeongjun\\forgot-passemail.jsp";
	}
	
	// 이메일 인증번호 입력후, 해당 회원 정보 조회 및 비밀번호 찾기 화면 출력
	@RequestMapping(params="method=vPass1")
		String findPass1(Emp mem,Model d) {
		d.addAttribute("mem",service.findPass(mem));
		return "WEB-INF\\views\\hyeongjun\\view-password.jsp";
		}	
	
	
	//비밀번호 변경시에 해당 사원정보 비밀번호 업데이트
	@RequestMapping(params="method=changePw")
		String changePw(Emp mem, Model d) {
			service.updatePass(mem);
			d.addAttribute("goLogin",true);
			return "WEB-INF\\views\\hyeongjun\\view-password.jsp";
		}


}
