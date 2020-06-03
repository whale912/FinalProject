package project06.mvc.repository;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.stereotype.Repository;

import project06.mvc.vo.Gantt;
import project06.mvc.vo.Issue;
import project06.mvc.vo.Issue2;
import project06.mvc.vo.IssueSch;
import project06.mvc.vo.Member;
import project06.mvc.vo.Project;
import project06.mvc.vo.ProjectSch;
import project06.mvc.vo.Role;
import project06.mvc.vo.Task;

@Repository
public interface SungbinDao {
	public ArrayList<Gantt> gantList();
	public ArrayList<Issue> codeList();
	public ArrayList<Issue> codeList2();
	public ArrayList<Issue> codeList3(int codediv);
	public ArrayList<Project> pieYear();
	
	public ArrayList<ProjectSch> prolist(ProjectSch sch);
	public ArrayList<Project> prolist2(int projectno);
	public ProjectSch totPieList();
	public ProjectSch totPieListJson(int year);
	public ArrayList<ProjectSch> totPieList2();
	public ProjectSch maxYear();
	public ArrayList<ProjectSch> totYearList();
	public ArrayList<ProjectSch> totYearListJson();
	public Issue totPieIssue();
	
	public int totCnt2(ProjectSch sch);
	public int totCnt(IssueSch sch);
	public ArrayList<Issue> list(IssueSch sch);
	public ArrayList<Issue2> list2(IssueSch sch);
	public Issue getIssue(int no);
	public Issue getIssue2(int no, int no2);
	public Issue getCode(int no);
	
	public Issue2 getIssue3(int no);
	
	public Issue getproject(IssueSch sch);
	public ArrayList<Project> plist(IssueSch sch);
	public Issue plist0(IssueSch sch);
	public ArrayList<Project> plist2(IssueSch sch);
	public ArrayList<Project> plist3();
	public Project latestprojectno();
	public ArrayList<Issue> tlist(IssueSch sch);
	
	
	public void insert(Issue ins);
	
	public void updateIssue(Issue upt);
	public void uptIssueState(Issue upt);
	public void uptIssueState2(Issue upt); // 이슈상태 업데이트 App
	public void updateMeasure(Issue upt);
	public void updateMeasure2(Issue upt);
	public void insertMeasure(Issue ins);
	public void insertMeasure2(Issue ins);
	
	public void deleteIssue(Issue del);
	public void deleteFile(Issue del);
	public void deleteMeasure(Issue del);
	public void deleteFile2(Issue del);
	// 파일 정보 등록..
	public void insertRepo(String fname);
	public void insertRepo2(String fname);
	
	// 파일 다운로드 정보 
	public ArrayList<String> fnames(int no);
	public ArrayList<String> fnames2(int no2);
	public void uptFileInfo(HashMap hm);
	public void insFileInfo(HashMap hm);
	public void uptFileInfo2(HashMap hm);
	public void insFileInfo2(HashMap hm);
	
	public Project getDetail(int projectno);
	public ArrayList<Member> getMemList2(int projectno);
	public ArrayList<Task> getTaskList(int projectno);
	public ArrayList<Role> getRoleList();
	public ArrayList<Gantt> gantList2(int projectno);
	public ArrayList<Gantt> gantPTaskList(int projectno);
	public ArrayList<Gantt> gantCTaskList(int projectno);
	public Task getTask(int taskno);
	
	
}
