package project06.mvc.controller;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import project06.mvc.service.SungbinService;
import project06.mvc.service.YunbaeService;
import project06.mvc.vo.Gantt;
import project06.mvc.vo.Issue;
import project06.mvc.vo.IssueSch;
import project06.mvc.vo.Member;
import project06.mvc.vo.Project;
import project06.mvc.vo.ProjectSch;
import project06.mvc.vo.Task;
@Controller
@RequestMapping("/issue.do")
public class IssueCtrl {
	@Autowired(required=false)
	SungbinService service;
	@Autowired(required=false)
	YunbaeService service2;
	
	
//	http://localhost:5080/project06/issue.do?method=dash
//	http://localhost:5080/project06/issue.do?method=list
//	http://localhost:5080/project06/login.do?method=base
	@RequestMapping(params="method=gantt")
	String ganttProject(Model d) {
		ArrayList<Gantt> list = new ArrayList<Gantt>();
		list = service.gantList();
		d.addAttribute("data",list);
		return "pageJsonReport";
	}
	// http://localhost:5080/project06/issue.do?method=yearlist
	@RequestMapping(params="method=yearlist")
	String dashlist2(Model d) {
		ArrayList<ProjectSch> ylist = new ArrayList<ProjectSch>();
		ylist = service.totYearList();
		d.addAttribute("ylist",ylist);
		return "pageJsonReport";
	}
	// http://localhost:5080/project06/issue.do?method=prolist2&projectno=6
	@RequestMapping(params="method=prolist2")
	String prolist2(Model d,@RequestParam("projectno") int projectno) {
		ArrayList<Project> list = new ArrayList<Project>();
		list=service.prolist2(projectno);
		d.addAttribute("prolist2",list);
		return "pageJsonReport";
	}
	
	// http://localhost:5080/project06/issue.do?method=dash&keyword=name
	@RequestMapping(params="method=dash")
	String dashlist(@ModelAttribute("psch")ProjectSch sch,Model d) {
		d.addAttribute("prolist",service.prolist(sch));
		d.addAttribute("totPieList",service.totPieList());
		
		d.addAttribute("totPieIssue",service.totPieIssue());
		d.addAttribute("maxYear",service.maxYear());
		d.addAttribute("pieYear",service.pieYear());
		
		return "WEB-INF\\views\\sungbin\\dashboard.jsp";
	}

	@RequestMapping(params="method=dashDetail")
	public String detail5(@ModelAttribute("memMA") Member mem, Model d, @RequestParam("projectno") int projectno) {
		System.out.println(projectno);
		
		d.addAttribute("project",service2.getDetail(projectno));
		d.addAttribute("mlist",service2.getMemList2(projectno));
		d.addAttribute("tlist",service2.getTaskList(projectno));
		d.addAttribute("roles", service2.getRoleList());
		d.addAttribute("plist3",service.plist3()); 
		d.addAttribute("istatus",service2.projectIssueStatus(projectno));
		return "WEB-INF\\views\\sungbin\\dashboardDetail2.jsp";
	}
	@RequestMapping(params="method=gantt2")
	public String ganttProject(Model d,@RequestParam("projectno") int projectno) {
		ArrayList<Gantt> list = new ArrayList<Gantt>();
		list = service.gantList2(projectno);
		list.addAll(service.gantPTaskList(projectno));
		list.addAll(service.gantCTaskList(projectno));
		d.addAttribute("data",list);		
		return "pageJsonReport";
	}	

	
	@RequestMapping(params="method=tinfo")
	public String taskInfo(@RequestParam("taskno") int taskno, Model d) {
		d.addAttribute("task",service.getTask(taskno));
		return "pageJsonReport";
	}
	
	
	@RequestMapping(params="method=list")
	String list(@ModelAttribute("isch")IssueSch sch,Model d) {
		d.addAttribute("plist",service.plist(sch)); 
		d.addAttribute("plist0",service.plist0(sch)); 
		d.addAttribute("plist3",service.plist3()); 
		d.addAttribute("plist2",service.plist2(sch));
		d.addAttribute("ilist",service.list(sch));
		
		System.out.println(sch.getMemempno());
		return "WEB-INF\\views\\sungbin\\issueList.jsp";
	}
	
	@RequestMapping(params="method=detail0")
	String detail0(@RequestParam("no")int no,@RequestParam("no2")int no2, Model d) {
		d.addAttribute("issue",service.getIssue2(no,no2));
		d.addAttribute("codeList",service.codeList());
		d.addAttribute("codeList2",service.codeList2());
		return "WEB-INF\\views\\sungbin\\issueDetail.jsp";
	}
	@RequestMapping(params="method=detail")
	String detail(@RequestParam("no")int no, Model d) {
		d.addAttribute("issue",service.getIssue(no));
		d.addAttribute("codeList",service.codeList());
		d.addAttribute("codeList2",service.codeList2());
		return "WEB-INF\\views\\sungbin\\issueDetail.jsp";
	}
		
	
	@RequestMapping(params="method=detail2")
	String detail2(@RequestParam("no")int no,@RequestParam("no2")int no2, Model d) {
		d.addAttribute("issue",service.getIssue2(no,no2));
		d.addAttribute("codeList",service.codeList());
		d.addAttribute("codeList2",service.codeList2());
		return "WEB-INF\\views\\sungbin\\issueDetail2.jsp";
	}	
	

	// PM 조치 insert
	@RequestMapping(params="method=detail3")
	String detail3(@RequestParam("no")int no, Model d) {
		d.addAttribute("issue",service.getIssue(no));
		d.addAttribute("codeList",service.codeList());
		d.addAttribute("codeList2",service.codeList2());
		return "WEB-INF\\views\\sungbin\\issueDetail3.jsp";
	}	
	// http://localhost:5080/project06/issue.do?method=getCode&codename=공유
		@RequestMapping(params="method=getCode")
		public String getCode(@RequestParam("codeno")int no,Model d) {
			d.addAttribute("code",service.getCode(no));
			return "pageJsonReport";
		}	

		// http://localhost:5080/project06/issue.do?method=getYear&year=2020
		@RequestMapping(params="method=getYear")
		public String getYear(@RequestParam("year")int year,Model d) {
			d.addAttribute("totPieListJson",service.totPieListJson(year));
			return "pageJsonReport";
		}	
	
	
	@RequestMapping(params="method=insFrm")
	String insertForm(@ModelAttribute("isch")IssueSch sch,Model d) {
		d.addAttribute("project",service.getproject(sch));
		d.addAttribute("tlist",service.tlist(sch)); 
		return "WEB-INF\\views\\sungbin\\issueInsert.jsp";
	}

	
	@RequestMapping(params="method=insert")
	String insert(Issue insert,Model d) {
		service.insert(insert);
		d.addAttribute("isIns","Y");
		return "WEB-INF\\views\\sungbin\\issueInsert.jsp";
	}
//	INSERT INTO issue (issueno,projectno,taskno,empno,regdate,title,content,state) VALUES(issue_seq.nextval,#{projectno},#{taskno},
//	#{empno},sysdate,#{title},#{content},'조치대기')		
	
	// 요청자 이슈 insert App
	@RequestMapping(params="method=insertApp")
	String insertApp(Issue insert,Model d) {
		service.insertApp(insert);		
		return "pageJsonReport";
	}
	// 요청자 이슈 update App
	@RequestMapping(params="method=uptIssueApp")
	String updateIssueApp(Issue upt,Model d) {
		service.updateIssueApp(upt);		
		return "pageJsonReport";
	}
	
	// 담당자 이슈 insert
	// http://localhost:5080/project06/issue.do?method=insMeasureApp		
	@RequestMapping(params="method=insMeasureApp")
	String insertMeasureApp(Issue ins,Model d) {
		service.insertMeasureApp(ins);
		return "pageJsonReport";
	}
	// http://localhost:5080/project06/issue.do?method=updateMeasureApp
	@RequestMapping(params="method=updateMeasureApp")
	String updateMeasureApp(Issue upt,Model d) {
		service.updateMeasureApp(upt);
		return "pageJsonReport";
	}
	
	@RequestMapping(params="method=deleteApp")
	String deleteApp(Issue del, Model d) {
		service.deleteIssue(del);
		return "pageJsonReport";
	}
	
	
	// 담당자 insert
	@RequestMapping(params="method=insMeasure")
	String insertMeasure(Issue ins, Model d) {
		
			if(ins.getState().equals("조치완료")) {
				service.insertMeasure(ins);
				service.uptIssueState(ins);
			}else {
				service.insertMeasure2(ins);
				service.uptIssueState(ins);
			}
		
		d.addAttribute("isIns","Y");
		return "WEB-INF\\views\\sungbin\\issueDetail3.jsp";
	}
	
	// 담당자 update
	@RequestMapping(params="method=update")
	String update(Issue upt,Model d) {
		service.uptIssueState(upt);
		if(upt.getState().equals("조치완료")) {
			service.updateMeasure(upt);
			service.updateMeasure2(upt);
			System.out.println("1");
		}else {
			service.updateMeasure(upt);
			System.out.println("2");
			
		}
		
		d.addAttribute("isIns","Y");
		return "WEB-INF\\views\\sungbin\\issueDetail2.jsp";
	}
	// 요청자 update
	@RequestMapping(params="method=uptIssue")
	String updateIssue(Issue upt,Model d) {
		service.updateIssue(upt);
		d.addAttribute("isUpt","Y");
		return "WEB-INF\\views\\sungbin\\issueDetail.jsp";
	}
	
	@RequestMapping(params="method=delete")
	String delete(Issue del, Model d) {
		service.deleteIssue(del);
		d.addAttribute("isDel","Y");
		return "WEB-INF\\views\\sungbin\\issueDetail.jsp";
	}
		
	@RequestMapping(params="method=download")
	public String download(@RequestParam("fname") String fname, 
							Model d) {
		System.out.println("다운로드할 파일명:"+fname);
		d.addAttribute("downloadFile", fname);
		
		return "download"; 
	}	

//  안드로이드
//	http://localhost:5080/project06/issue.do?method=appIssueData		
	@RequestMapping(params="method=appIssueData")
	public String appIssueData(@ModelAttribute("isch")IssueSch sch,Model d) {
		d.addAttribute("issuelist",service.list2(sch)); 
		
		return "pageJsonReport";
	}
	// http://localhost:5080/project06/issue.do?method=appIssueGet
	@RequestMapping(params="method=appIssueGet")
	public String getIssue3(@RequestParam("issueno")int no,Model d) {
		d.addAttribute("issue",service.getIssue3(no));
		return "pageJsonReport";
	}
	// http://localhost:5080/project06/issue.do?method=appYear
	
	@RequestMapping(params="method=appYear")
	public String appYear(Model d) {
		d.addAttribute("plist",service.totYearListJson());
		return "pageJsonReport";
	}
	// http://localhost:5080/project06/issue.do?method=appYear2
	@RequestMapping(params="method=appYear2")
	public String appYear2(Model d) {
		d.addAttribute("totPieList",service.totPieList());
		
		return "pageJsonReport";
	}
	// http://localhost:5080/project06/issue.do?method=appYear3
	@RequestMapping(params="method=appYear3")
	public String appYear3(Model d) {
		
		d.addAttribute("issue",service.totPieIssue());
		return "pageJsonReport";
	}
	// http://localhost:5080/project06/issue.do?method=vue1
	@RequestMapping(params="method=vue1")
	public String Vue1(@ModelAttribute("psch")ProjectSch sch,Model d) {
		d.addAttribute("prolist",service.prolist(sch));
		return "pageJsonReport";
	}
	
	// http://localhost:5080/project06/issue.do?method=codeList
	
	@RequestMapping(params="method=codeList")
	public String codeList3(@RequestParam("codediv")int codediv,Model d) {
		d.addAttribute("clist",service.codeList3(codediv));
		return "pageJsonReport";
	}
	// http://localhost:5080/project06/issue.do?method=dashDetail0
	@RequestMapping(params="method=dashDetail0")
	public String dashDetail0(Model d) {
		d.addAttribute("lpno",service.latestprojectno());
		return "WEB-INF\\views\\sungbin\\dashboardDetail0.jsp";
	}
	
	
}
