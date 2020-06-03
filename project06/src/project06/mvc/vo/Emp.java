package project06.mvc.vo;

import org.springframework.web.multipart.MultipartFile;

public class Emp {
	private String empno;
	private int deptno;
	private int rankno;
	private int authno;
	private String pass;
	private String name;
	private String email;
	private String hiredate;
	private String profile;
	// dept join
	private String dname;
	// emprank join
	private String rname;
	// author join
	private String aname;
	// 참여프로젝트 번호
	private int projectno;
	
	// 등록/삭제/수정
	private String regist;	   /*사원등록*/
	private String delete;	   /*사원삭제*/
	private String updateRank; /*직책수정*/
	
	//프로필 이미지 저장
	private MultipartFile[] proImg;
	
	public MultipartFile[] getProImg() {
		return proImg;
	}
	public void setProImg(MultipartFile[] proImg) {
		this.proImg = proImg;
	}
	public String getEmpno() {
		return empno;
	}
	public void setEmpno(String empno) {
		this.empno = empno;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public int getRankno() {
		return rankno;
	}
	public void setRankno(int rankno) {
		this.rankno = rankno;
	}
	public int getAuthno() {
		return authno;
	}
	public void setAuthno(int authno) {
		this.authno = authno;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHiredate() {
		return hiredate;
	}
	public void setHiredate(String hiredate) {
		this.hiredate = hiredate;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public int getProjectno() {
		return projectno;
	}
	public void setProjectno(int projectno) {
		this.projectno = projectno;
	}
	public String getRegist() {
		return regist;
	}
	public void setRegist(String regist) {
		this.regist = regist;
	}
	public String getDelete() {
		return delete;
	}
	public void setDelete(String delete) {
		this.delete = delete;
	}
	public String getUpdateRank() {
		return updateRank;
	}
	public void setUpdateRank(String updateRank) {
		this.updateRank = updateRank;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	
	
}
