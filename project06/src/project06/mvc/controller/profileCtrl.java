package project06.mvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import project06.mvc.service.EmpService;
import project06.mvc.service.HyeonjuService;
import project06.mvc.vo.Emp;

@Controller

@RequestMapping("/profile.do")
public class profileCtrl {
	
	@Autowired(required=false)
	private HyeonjuService service;
	@Autowired(required=false)
	private EmpService service2;
	
	// http://localhost:5080/project06/profile.do?method=base
	@RequestMapping(params="method=base")
	public String base(HttpSession session,Model d) {
		if(session.getAttribute("mem")!=null) {
		Emp info=(Emp)session.getAttribute("mem");
		d.addAttribute("mem",service.memInfo(info.getEmpno()));
		}
		return "WEB-INF\\views\\hyeonju\\member_profile.jsp";
	}
	// http://localhost:7080/project06/profile.do?method=myUpdate
	
	@RequestMapping(params="method=myUpdate")
	String myUpdate(Emp mem, Model d, HttpSession session) {
		
		//재조회
		session.setAttribute("mem", service.myUpdate(mem));
		d.addAttribute("updateOk", true);
		System.out.println(mem.getName()+"님 정보 업데이트 완료.");
		return "WEB-INF\\views\\hyeonju\\member_profile.jsp";
	}
	
	//비밀번호 변경시에 해당 사원정보 비밀번호 업데이트
		@RequestMapping(params="method=changePw")
			String changePw(Emp mem, Model d) {
				service2.updatePass(mem);
				d.addAttribute("passUpdate",true);
				return "WEB-INF\\views\\hyeonju\\member_profile.jsp";
		}
	

}
