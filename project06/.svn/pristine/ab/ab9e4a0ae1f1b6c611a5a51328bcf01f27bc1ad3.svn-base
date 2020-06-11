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
import project06.mvc.vo.Schedule;
import project06.mvc.vo.Task;
import project06.mvc.vo.TaskDivision;

@Controller
@RequestMapping("/task.do")
public class TaskController {
	@Autowired(required=false)
	private YunbaeService service;
	@RequestMapping(params="method=dashboard")
	public String personalDashboard(@ModelAttribute("emp") Emp emp,Model d) {
		if(emp.getEmpno()!=""&&emp.getEmpno()!=null) {
			d.addAttribute("project",service.getMyDetail(emp.getEmpno()));
			d.addAttribute("MyTaskCount",service.getMyTaskCount(emp.getEmpno()));
			d.addAttribute("ConfirmedCount",service.getConfirmedCount(emp.getEmpno()));
			d.addAttribute("DelayedCount",service.getDelayedCount(emp.getEmpno()));
			d.addAttribute("MeasuredCount",service.getMeasuredCount(emp.getEmpno()));
			d.addAttribute("GoingCount",service.getGoingCount(emp.getEmpno()));
			d.addAttribute("WaittingCount",service.getWaitCount(emp.getEmpno()));
			d.addAttribute("RejectCount",service.getRejectCount(emp.getEmpno()));
			d.addAttribute("blist", service.getMyProjectBoard(emp.getEmpno()));
			d.addAttribute("slist",service.getThisWeekSche(emp.getEmpno()));
		}		
		return "WEB-INF\\views\\yunbae\\task_main.jsp";
	}
	@RequestMapping(params="method=gantt")
	public String ganttProject(Model d,@RequestParam("empno") String empno) {
		ArrayList<Gantt> list = new ArrayList<Gantt>();
		list = service.myProjectList(empno);
		list.addAll(service.myPTaskList(empno));
		list.addAll(service.myCTaskList(empno));
		d.addAttribute("data",list);		
		return "pageJsonReport";
	}
	@RequestMapping(params="method=manage")
	public String taskManage(@ModelAttribute("emp") Emp emp, Model d) {
		if(emp.getEmpno()!=""&&emp.getEmpno()!=null) {
			d.addAttribute("tlist",service.getTaskManageList(emp.getEmpno()));			
		}
		return "WEB-INF\\views\\yunbae\\task_manage.jsp";
	}
	@RequestMapping(params="method=tlist")
	public String getTaskManageApp(@RequestParam("empno") String empno, Model d) {
		d.addAttribute("tlist",service.getTaskManageList(empno));
		return "pageJsonReport";
	}
	@RequestMapping(params="method=detail")
	public String taskDetail(Task task,Model d) {
		d.addAttribute("task",service.getTaskDetail(task));
		return "WEB-INF\\views\\yunbae\\task_detail.jsp";
	}
	@RequestMapping(params="method=detail2")
	public String taskDetail2(Task task,Model d) {
		d.addAttribute("task",service.getTaskDetail(task));
		return "pageJsonReport";
	}
	@RequestMapping(params="method=dinsert")
	public String taskDivInsert(TaskDivision task, Model d) {
		service.taskDivInsert(task);
		return "WEB-INF\\views\\yunbae\\task_detail.jsp";
	}
	@RequestMapping(params="method=dupdate")
	public String taskDivUpdate(TaskDivision task, Model d) {
		service.taskDivUpdate(task);
		return "WEB-INF\\views\\yunbae\\task_detail.jsp";
	}
	@RequestMapping(params="method=ddelete")
	public String taskDivDelete(TaskDivision task, Model d) {
		service.taskDivDelete(task);
		return "WEB-INF\\views\\yunbae\\task_detail.jsp";
	}
	@RequestMapping(params="method=dlist")
	public String getDivList(@ModelAttribute("task") Task task,Model d) {
		d.addAttribute("dlist",service.getDivList(task));
		return "pageJsonReport";
	}
	@RequestMapping(params="method=dupload")
	public String taskDivUpload(TaskDivision task,Model d) {
		service.taskDivProgressUpdate(task);
		return "WEB-INF\\views\\yunbae\\task_detail.jsp";
	}
	@RequestMapping(params="method=dupload2")
	public String taskDivUpload2(TaskDivision task,Model d) {
		service.taskDivProgressUpdate2(task);
		return "WEB-INF\\views\\yunbae\\task_detail.jsp";
	}
	@RequestMapping(params="method=dpc")
	public String taskDivProgressCount(Task task, Model d) {
		d.addAttribute("div",service.taskDivProgressCount(task));
		return "pageJsonReport";
	}
	@RequestMapping(params="method=download")
	public String download(@RequestParam("fname") String fname, Model d) {
		// 탑재할 모델 명은 파일명으로 설정
		d.addAttribute("downloadFile", fname);
		return "download"; // 컨테이너에서선언한 viewer명
	}
	@RequestMapping(params="method=trconfirm")
	public String tr_confrim(Task task, Model d) {
		service.taskConfirm(task);
		d.addAttribute("isOK","Y");
		return "WEB-INF\\views\\yunbae\\task_manage.jsp";
	}
	@RequestMapping(params="method=trappcon")
	public String tr_confrimApp(Task task, Model d) {
		service.taskConfirmApp(task);
		return "pageJsonReport";
	}
	@RequestMapping(params="method=retrconfirm")
	public String tr_reconfrim(Task task, Model d) {
		service.reConfirm(task);
		d.addAttribute("isOK","Y");
		return "WEB-INF\\views\\yunbae\\task_manage.jsp";
	}
	@RequestMapping(params="method=calendar")
	public String scheduleManage(Model d) {
		return "WEB-INF\\views\\yunbae\\my_calendar.jsp";
	}
	@RequestMapping(params="method=schedata")
	public String scheduleData(@RequestParam("empno") String empno, Model d) {
		d.addAttribute("data", service.getScheduleList(empno));
		return "pageJsonReport";
	}
	@RequestMapping(params="method=sinsert")
	public String insertSche(Schedule sche, Model d) {
		service.insertSche(sche);
		return "WEB-INF\\views\\yunbae\\my_calendar.jsp";
	}
	@RequestMapping(params="method=supdate")
	public String updateSche(Schedule sche, Model d) {
		service.updateSche(sche);
		return "WEB-INF\\views\\yunbae\\my_calendar.jsp";
	}
	@RequestMapping(params="method=sdelete")
	public String deleteSche(@RequestParam("id") int id, Model d) {
		service.deleteSche(id);
		return "WEB-INF\\views\\yunbae\\my_calendar.jsp";
	}
	@RequestMapping(params="method=conapp")
	public String confirmTaskApp(Task task, Model d) {
		service.confirmTask(task);
		return "pageJsonReport";
	}
	@RequestMapping(params="method=rejapp")
	public String rejectTaskApp(Task task, Model d) {
		service.rejectTask(task);
		return "pageJsonReport";
	}
}
