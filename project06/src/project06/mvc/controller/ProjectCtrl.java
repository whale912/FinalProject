package project06.mvc.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import project06.mvc.service.YunbaeService;
import project06.mvc.vo.Emp;
import project06.mvc.vo.Gantt;
import project06.mvc.vo.Member;
import project06.mvc.vo.Project;
import project06.mvc.vo.Task;


@Controller
@RequestMapping("/project.do")
public class ProjectCtrl {
	@Autowired(required=false)
	YunbaeService service;
	@RequestMapping(params="method=main")
	public String project(@ModelAttribute("pro") Project sch, Model d) {
		if(sch.getEmpno()==null) sch.setEmpno("");
		if(!sch.getEmpno().equals("")&&sch.getEmpno()!=null) {
			d.addAttribute("plist",service.getProjectList(sch));			
		}
		return "WEB-INF\\views\\yunbae\\project_main.jsp";
	}
	@RequestMapping(params="method=insForm")
	public String insertProject(Model d) {
		d.addAttribute("klist",service.getKindList());
		return "WEB-INF\\views\\yunbae\\project_insert.jsp";
	}
	@RequestMapping(params="method=insert")
	public String insertProject(Project ins, Model d) {
		service.insertProject(ins);
		service.pmInsert(ins);
		d.addAttribute("isInsert", "Y");
		return "WEB-INF\\views\\yunbae\\project_insert.jsp";
	}
	@RequestMapping(params="method=insertAnd")
	public String insertProjectAnd(Project ins, Model d) {
		service.insertProject(ins);
		return "pageJsonReport";
	}
	@RequestMapping(params="method=detail")
	public String detail(@ModelAttribute("memMA") Member mem, Model d, @RequestParam("projectno") int projectno) {
		d.addAttribute("project",service.getDetail(projectno));
		d.addAttribute("mlist",service.getMemList(mem));
		d.addAttribute("rflist",service.taskResultList(projectno));
		d.addAttribute("istatus",service.projectIssueStatus(projectno));
		d.addAttribute("roles", service.getRoleList());
		d.addAttribute("depts",service.getDeptInfo());
		return "WEB-INF\\views\\yunbae\\project_detail.jsp";
	}
	@RequestMapping(params="method=uptForm")
	public String updateProject(@RequestParam("projectno") int projectno, Model d) {
		d.addAttribute("project",service.getDetail(projectno));
		d.addAttribute("klist",service.getKindList());
		return "WEB-INF\\views\\yunbae\\project_update.jsp";
	}
	@RequestMapping(params="method=update")
	public String updateProject(Project upt, Model d) {
		service.updateProject(upt);
		d.addAttribute("isUpdate","Y");
		return "WEB-INF\\views\\yunbae\\project_update.jsp";
	}
	@RequestMapping(params="method=updateAnd")
	public String updateProjectAnd(Project upt, Model d) {
		service.updateProject(upt);
		return "pageJsonReport";
	}
	@RequestMapping(params="method=json")
	public String jsonList(@RequestParam("empno") String empno, Model d) {
		d.addAttribute("plist",service.getJosnList(empno));
		return "pageJsonReport";
	}
	@RequestMapping(params="method=detailJson")
	public String jsonDetail(@RequestParam("projectno") int projectno, Model d) {
		d.addAttribute("project",service.getDetail2(projectno));
		return "pageJsonReport";
	}
	@RequestMapping(params="method=gantt")
	public String ganttProject(Model d,@RequestParam("projectno") int projectno) {
		ArrayList<Gantt> list = new ArrayList<Gantt>();
		list = service.gantList(projectno);
		list.addAll(service.gantPTaskList(projectno));
		list.addAll(service.gantCTaskList(projectno));
		d.addAttribute("data",list);		
		return "pageJsonReport";
	}
	
	@RequestMapping(params="method=member")
	public String ganttMem(Model d, @RequestParam("projectno") int projectno) {
		d.addAttribute("staff",service.ganttMemList(projectno));	
		return "pageJsonReport";
	}
	
	@RequestMapping(params="method=tinsert")
	public String insertTask(Task ins, Model d) {
		service.insertTask(ins);
		d.addAttribute("isTinsert","Y");
		return "WEB-INF\\views\\yunbae\\project_detail.jsp";
	}
	
	@RequestMapping(params="method=tinfo")
	public String taskInfo(@RequestParam("taskno") int taskno, Model d) {
		d.addAttribute("task",service.getTask(taskno));
		return "pageJsonReport";
	}
	
	@RequestMapping(params="method=tupdate")
	public String updateTask(Task upt) {
		service.updateTask(upt);
		return "WEB-INF\\views\\yunbae\\project_detail.jsp";
	}
	@RequestMapping(params="method=tdelete")
	public String deleteTask(Task del) {
		service.deleteTask(del);
		return "WEB-INF\\views\\yunbae\\project_detail.jsp";
	}
	
	@RequestMapping(params="method=joinable")
	public String getJoinableEmp(Model d, Emp sch) {
		d.addAttribute("joinable",service.getJoinableEmp(sch));
		return "pageJsonReport";
	}
	@RequestMapping(params="method=members")
	public String getMemberInfo(@RequestParam("projectno") int projectno ,Model d) {
		d.addAttribute("member",service.getMemberInfo(projectno));
		return "pageJsonReport";
	}
	@RequestMapping(params="method=minsert")
	public String insertMember(Member ins, Model d) {
		service.insertMember(ins);
		return "WEB-INF\\views\\yunbae\\project_detail.jsp";
	}
	@RequestMapping(params="method=mdelete")
	public String deleteMember(Member del, Model d) {
		service.deleteMember(del);
		return "WEB-INF\\views\\yunbae\\project_detail.jsp";
	}
	@RequestMapping(params="method=confirm")
	public String taskReqConfirmList(Task pro, Model d) {
		if(pro.getEmpno()==null) pro.setEmpno("");
		if(pro.getEmpno()!="") {
			d.addAttribute("tlist",service.getReqConfirmList(pro.getEmpno()));
		}
		return "WEB-INF\\views\\yunbae\\project_confirm.jsp";
	}
	@RequestMapping(params="method=tconfirm")
	public String confirmTask(Task task, Model d) {
		int refcom = service.confirmTask(task);
		d.addAttribute("refCom",refcom);
		d.addAttribute("isConfirm","Y");
		return "WEB-INF\\views\\yunbae\\project_confirm.jsp";
	}
	@RequestMapping(params="method=tconfirmRef")
	public String cofirmTask2(Task task, Model d) {
		service.confirmTask2(task);
		d.addAttribute("isCon2","Y");
		d.addAttribute("isConfirm","");
		return "WEB-INF\\views\\yunbae\\project_confirm.jsp";
	}
	@RequestMapping(params="method=reject")
	public String rejectTask(Task task, Model d) {
		service.rejectTask(task);
		d.addAttribute("isRj", "Y");
		return "WEB-INF\\views\\yunbae\\project_confirm.jsp";
	}
	@RequestMapping(params="method=notice")
	public String noticeList(@RequestParam("empno") String empno, Model d) {
		d.addAttribute("nlist", service.getNotice(empno));
		return "pageJsonReport";
	}
	@RequestMapping(params="method=reflist")
	public String callRefList(@RequestParam("projectno") int projectno, Model d) {
		d.addAttribute("tlist",service.getTaskList(projectno));
		return "pageJsonReport";
	}
	
}
