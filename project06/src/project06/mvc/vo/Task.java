package project06.mvc.vo;

import org.springframework.web.multipart.MultipartFile;

public class Task {
	private int taskno;
	// String 으로 수정
	private String projectno;
	private int refno;
	private String title;
	private String empno;
	private String content;
	private String assigndate;
	private String p_startdate;
	private String p_enddate;
	private String t_startdate;
	private String t_enddate;
	private int progress;
	private String r_condate;
	private String condate;
	private String r_comments;
	private String comments;
	private String type;
	private boolean open;
	private int priority;
	private String state;
	// 추가내용
	private String pname;
	private String reftitle;
	private String name;
	private String rname;
	private MultipartFile report;
	private String fname;
	
	public int getTaskno() {
		return taskno;
	}
	public void setTaskno(int taskno) {
		this.taskno = taskno;
	}
	public String getProjectno() {
		return projectno;
	}
	public void setProjectno(String projectno) {
		this.projectno = projectno;
	}
	public int getRefno() {
		return refno;
	}
	public void setRefno(int refno) {
		this.refno = refno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getEmpno() {
		return empno;
	}
	public void setEmpno(String empno) {
		this.empno = empno;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAssigndate() {
		return assigndate;
	}
	public void setAssigndate(String assigndate) {
		this.assigndate = assigndate;
	}
	public String getP_startdate() {
		return p_startdate;
	}
	public void setP_startdate(String p_startdate) {
		this.p_startdate = p_startdate;
	}
	public String getP_enddate() {
		return p_enddate;
	}
	public void setP_enddate(String p_enddate) {
		this.p_enddate = p_enddate;
	}
	public String getT_startdate() {
		return t_startdate;
	}
	public void setT_startdate(String t_startdate) {
		this.t_startdate = t_startdate;
	}
	public String getT_enddate() {
		return t_enddate;
	}
	public void setT_enddate(String t_enddate) {
		this.t_enddate = t_enddate;
	}
	public int getProgress() {
		return progress;
	}
	public void setProgress(int progress) {
		this.progress = progress;
	}
	public String getR_condate() {
		return r_condate;
	}
	public void setR_condate(String r_condate) {
		this.r_condate = r_condate;
	}
	public String getCondate() {
		return condate;
	}
	public void setCondate(String condate) {
		this.condate = condate;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public boolean isOpen() {
		return open;
	}
	public void setOpen(boolean open) {
		this.open = open;
	}
	public int getPriority() {
		return priority;
	}
	public void setPriority(int priority) {
		this.priority = priority;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getReftitle() {
		return reftitle;
	}
	public void setReftitle(String reftitle) {
		this.reftitle = reftitle;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public MultipartFile getReport() {
		return report;
	}
	public void setReport(MultipartFile report) {
		this.report = report;
	}
	public String getR_comments() {
		return r_comments;
	}
	public void setR_comments(String r_comments) {
		this.r_comments = r_comments;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	
	
	
}
