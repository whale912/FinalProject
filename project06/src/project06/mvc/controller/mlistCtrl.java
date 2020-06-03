package project06.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import project06.mvc.service.HyeonjuService;
import project06.mvc.vo.Emp;
import project06.mvc.vo.EmpList;

@Controller

@RequestMapping("/mlist.do")
public class mlistCtrl {
	@Autowired(required=false)
	private HyeonjuService service;
	
	
	// http://localhost:5080/project06/mlist.do?method=base
	@RequestMapping(params="method=base")
	public String mlist(@ModelAttribute("Mmem") EmpList list,Model d) {
		d.addAttribute("members",service.memlist2(list));
		
		return "WEB-INF\\views\\hyeonju\\member_list.jsp";
	}

	
	// 사원등록
	// http://localhost:5080/project06/mlist.do?method=regist
	@RequestMapping(params="method=regist")
	public String regist(@ModelAttribute("Mmem") EmpList list, Emp regi,Model d) {		
		service.regist(regi);
	
		d.addAttribute("insert",true);
		System.out.println("사원"+regi.getName()+"등록이 되었습니다");
		return "WEB-INF\\views\\hyeonju\\member_list.jsp";		
	}
	
	// 사원직책수정
	// http://localhost:5080/project06/mlist.do?method=updateRank
	@RequestMapping(params="method=updateRank")
	public String updateRank(@ModelAttribute("Mmem") EmpList list,Emp upRank, Model d) {
		service.updateRank(upRank);
		
		d.addAttribute("update",true);
		System.out.println(upRank.getAuthno()+"으로 직책이 변경되었습니다");
		return "WEB-INF\\views\\hyeonju\\member_list.jsp";
	}
	
	
	// 사원직급수정
	// http://localhost:5080/project06/mlist.do?method=updatePosition
	@RequestMapping(params="method=updatePosition")
	public String updatePosition(@ModelAttribute("Mmem") EmpList list, Emp upPosi, Model d) {
		service.updatePosition(upPosi);
		
		d.addAttribute("updateP", true);
		System.out.println(upPosi.getRankno()+"으로 직급이 변경되었습니다");
		return "WEB-INF\\views\\hyeonju\\member_list.jsp";
	}
	
	
	
	// 사원삭제
	// http://localhost:5080/project06/mlist.do?method=delete
	@RequestMapping(params="method=delete")
	public String delete(@ModelAttribute("Mmem") EmpList list,Emp del, Model d) {
		service.delete(del);
		
		d.addAttribute("delete",true);
		System.out.println("사원"+del.getName()+"의 정보가 삭제되었습니다");
		return "WEB-INF\\views\\hyeonju\\member_list.jsp";
	}
	
}
