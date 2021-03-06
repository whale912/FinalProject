package project06.mvc.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import project06.mvc.repository.YunbaeRep;
import project06.mvc.vo.Board;
import project06.mvc.vo.Dept;
import project06.mvc.vo.Emp;
import project06.mvc.vo.Gantt;
import project06.mvc.vo.GanttMember;
import project06.mvc.vo.Kind;
import project06.mvc.vo.Member;
import project06.mvc.vo.Notice;
import project06.mvc.vo.Project;
import project06.mvc.vo.ProjectIssue;
import project06.mvc.vo.ProjectJson;
import project06.mvc.vo.ProjectJson2;
import project06.mvc.vo.Role;
import project06.mvc.vo.Schedule;
import project06.mvc.vo.Task;
import project06.mvc.vo.TaskDivision;

@Service
public class YunbaeService {
	@Autowired(required=false)
	private YunbaeRep rep;
	public ArrayList<Project> getProjectList(Project sch){
		// 데이터 총 건수
		sch.setCount(rep.totCnt());
		// 기본 페이지당 건수
		sch.setPageSize(10);
		// 총페이지
		sch.setPageCount((int)(Math.ceil(sch.getCount()/(double)sch.getPageSize())));
		// 현재페이지
		if(sch.getCurPage()==0) {
			sch.setCurPage(1);
		}
		sch.setStart((sch.getCurPage()-1)*sch.getPageSize()+1);
		sch.setEnd(sch.getCurPage()*sch.getPageSize());
		sch.setBlockSize(5);
		int blocknum = (int)Math.ceil(sch.getCurPage()/(double)sch.getBlockSize());
		int endBlock = blocknum*sch.getBlockSize();
		sch.setEndBlock(endBlock>sch.getPageCount()?sch.getPageCount():endBlock);
		sch.setStartBlock((blocknum-1)*sch.getBlockSize()+1);
		
		return rep.getProjectList(sch);
	}
	public ArrayList<Kind> getKindList(){
		return rep.getKindList();
	}
	public void insertProject(Project ins) {
		System.out.println(ins.getPname());
		System.out.println(ins.getKindno());
		System.out.println(ins.getPersonnel());
		rep.insertProject(ins);
	}
	public void pmInsert(Project ins) {
		rep.pmInsert(ins);
	}
	public Project getDetail(int projectno) {
		return rep.getDetail(projectno);
	}
	public ProjectJson2 getDetail2(int projectno) {
		return rep.getDetail2(projectno);
	}
	
	public ArrayList<Member> getMemList(Member mem){
		// 데이터 총 건수
		mem.setCount(rep.totMem(mem));
		// 기본 페이지당 건수
		mem.setPageSize(5);
		// 총페이지
		mem.setPageCount((int)(Math.ceil(mem.getCount()/(double)mem.getPageSize())));
		// 현재페이지
		if(mem.getCurPage()==0) {
			mem.setCurPage(1);
			System.out.println(mem.getCurPage());
		}
		mem.setStart((mem.getCurPage()-1)*mem.getPageSize()+1);
		mem.setEnd(mem.getCurPage()*mem.getPageSize());
		return rep.getMemList(mem);
	}
	public ArrayList<Member> getMemList2(int projectno){
		return rep.getMemList2(projectno);
	}
	
	public void updateProject(Project upt) {
		rep.updateProject(upt);
	}
	public ArrayList<ProjectJson> getJosnList(String empno){
		return rep.getJosnList(empno);
	}
	
	// 간트차트 데이터(프로젝트페이지)
	public ArrayList<Gantt> gantList(int projectno){
		return rep.gantList(projectno);
	}
	public ArrayList<Gantt> gantPTaskList(int projectno){
		return rep.gantPTaskList(projectno);
	}
	public ArrayList<Gantt> gantCTaskList(int projectno){
		return rep.gantCTaskList(projectno);
	}
	// 간트차트 데이터(작업페이지)
	public ArrayList<Gantt> myProjectList(String empno){
		return rep.myProjectList(empno);
	}
	public ArrayList<Gantt> myPTaskList(String empno){
		return rep.myPTaskList(empno);
	}
	public ArrayList<Gantt> myCTaskList(String empno){
		return rep.myCTaskList(empno);
	}
	
	
	public ArrayList<GanttMember> ganttMemList(int projectno){
		return rep.ganttMemList(projectno);
	}
	public ArrayList<Task> getTaskList(int projectno){
		return rep.getTaskList(projectno);
	}
	public void insertTask(Task ins) {
		rep.insertTask(ins);
	}
	public Task getTask(int taskno) {
		return rep.getTask(taskno);
	}
	public void updateTask(Task upt) {
		System.out.println(upt.getTaskno());
		System.out.println(upt.getAssigndate());
		System.out.println(upt.getP_startdate());
		System.out.println(upt.getP_enddate());
		System.out.println(upt.getContent());
		System.out.println(upt.getEmpno());
		System.out.println(upt.getState());
		rep.updateTask(upt);
	}
	public void deleteTask(Task del) {
		rep.deleteTask(del);
		rep.updateProjectProgress(del);
	}
	public ArrayList<Emp> getJoinableEmp(Emp sch){
		return rep.getJoinableEmp(sch);
	}
	public ArrayList<Member> getMemberInfo(int projectno){
		return rep.getMemberInfo(projectno);
	}
	public ArrayList<Role> getRoleList(){
		return rep.getRoleList();
	}
	public void insertMember(Member ins) {
		rep.insertMember(ins);
	}
	public void deleteMember(Member del) {
		rep.deleteMember(del);
	}
	// 내가 참여중인 프로젝트 상세내용
	public Project getMyDetail(String empno) {
		return rep.getMyDetail(empno);
	}
	// 내게 배정된 작업
	public int getMyTaskCount(String empno) {
		return rep.getMyTaskCount(empno);
	}
	// 승인 완료된 작업
	public int getConfirmedCount(String empno) {
		return rep.getConfirmedCount(empno);
	}
	// 지연된 작업
	public int getDelayedCount(String empno) {
		return rep.getDelayedCount(empno);
	}
	// 조치완료된 이슈
	public int getMeasuredCount(String empno) {
		return rep.getMeasuredCount(empno);
	}
	public ArrayList<Board> getMyProjectBoard(String empno){
		return rep.getMyProjectBoard(empno);
	}
	// 부서정보
	public ArrayList<Dept> getDeptInfo(){
		return rep.getDeptInfo();
	}
	// 현재 진행중 작업
	public int getGoingCount(String empno) {
		return rep.getGoingCount(empno);
	}
	// 승인대기 작업
	public int getWaitCount(String empno) {
		return rep.getWaitCount(empno);
	}
	// 반려
	public int getRejectCount(String empno) {
		return rep.getRejectCount(empno);
	}
	// 작업관리 리스트
	public ArrayList<Task> getTaskManageList(String empno){
		return rep.getTaskManageList(empno);
	}
	// 작업 상세
	public Task getTaskDetail(Task task) {
		return rep.getTaskDetail(task);
	}
	// 분할 인서트
	public void taskDivInsert(TaskDivision task) {
		rep.taskDivInsert(task);
	}
	// 분할 셀렉트
	public ArrayList<TaskDivision> getDivList(Task task){
		return rep.getDivList(task);
	}
	// 분할 업데이트
	public void taskDivUpdate(TaskDivision task) {
		rep.taskDivUpdate(task);
	}
	// 분할 삭제
	public void taskDivDelete(TaskDivision task) {
		rep.taskDivDelete(task);
	}
	// 분할 진행률 업데이트
	public void taskDivProgressUpdate(TaskDivision task) {
		rep.taskDivProgressUpdate(task);
		upload(task.getReport(),task);
	}
	// 분할 진행률+파일 수정
	public void taskDivProgressUpdate2(TaskDivision task) {
		rep.taskDivProgressUpdate(task);
		upload2(task);
	}
	// 분할 전체 진행률
	public TaskDivision taskDivProgressCount(Task task) {
		return rep.taskDivProgressCount(task);
	}
	// 작업 승인 신청
	public void taskConfirm(Task task) {
		rep.taskConfirm(task);
		tupload(task.getReport(),task);
		System.out.println("여긴가?"+task.getReport());
	}
	// 작업 승인 신청
	public void taskConfirmApp(Task task) {
		rep.taskConfirm(task);
	}
	// 재승인 신청
	public void reConfirm(Task task) {
		rep.taskConfirm(task);
		System.out.println(task.getTaskno()+":"+task.getProjectno()+":"+task.getReport());
		tupload2(task);
	}
	// 작업 승인요청 목록
	public ArrayList<Task> getReqConfirmList(String empno){
		return rep.getReqConfirmList(empno);
	}
	// 승인 요청 목록 앱
	public ArrayList<Task> getReqConApp(String empno){
		return rep.getReqConApp(empno);
	}
	
	// 작업 승인 처리
	public int confirmTask(Task task) {
		rep.confirmTask(task);
		rep.updateProjectProgress(task);
		int isref= rep.searchRef(task.getTaskno());
		if(isref!=0) {
			int reftask = rep.searchRefTask(task.getTaskno());
			double avgpro =0;
			if(reftask!=0) {
				avgpro = rep.avgChildTaskPro(reftask);
			}		
			if(avgpro==1) {
				return reftask;
			}else {
				return 0;
			}
		}else {
			return 0;
		}
		
	}	
	// 승인처리 앱
	public void confirmTaskApp(Task task) {
		rep.confirmTask(task);
	}
	//반려처리 앱
	public void rejectTaskApp(Task task) {
		rep.rejectTask(task);
	}
	
	// 상위작업 승인처리
	public void confirmTask2(Task task) {
		rep.confirmTask2(task);
	}
	// 작업 반려처리
	public void rejectTask(Task task) {
		rep.rejectTask(task);
	}
	
	// 프로젝트 결과파일 리스트	
	public ArrayList<Task> taskResultList(int projectno){
		return rep.taskResultList(projectno);
	}
	
	// 스케쥴러 일정 뽑기
	public ArrayList<Schedule> getScheduleList(String empno){
		return rep.getScheduleList(empno);
	}
	// 스케쥴테이블 인서트
	public void insertSche(Schedule sche) {
		rep.insertSche(sche);
	}
	// 스케쥴테이블 업데이트
	public void updateSche(Schedule sche) {
		rep.updateSche(sche);
	}
	// 스케쥴 테이블 삭제
	public void deleteSche(int id) {
		rep.deleteSche(id);
	}
	// 일주일 스케쥴 불러오기
	public ArrayList<Schedule> getThisWeekSche(String empno){
		return rep.getThisWeekSche(empno);
	}
	// 프로젝트 이슈현황
	public ProjectIssue projectIssueStatus(int projectno) {
		return rep.projectIssueStatus(projectno);
	}
	// 알림 목록 불러오기
	public ArrayList<Notice> getNotice(String empno){
		return rep.getNotice(empno);
	}
	
	
	// 파일 업로드 메서드
	@Value("${upload}")
	private String upload; // 업로드할 위치
	@Value("${tmpUpload}")
	private String tmpUpload; // 임시 업로드 위치
	
	private void upload(MultipartFile mtf, TaskDivision task) {
		String fileName = mtf.getOriginalFilename();
		if(!fileName.equals("")) {
			File tmpFile = new File(tmpUpload+fileName);
			// 해당 폴더(임시 폴더)에 동일한 파일이 있으면 삭제처리
			if(tmpFile.exists()) tmpFile.delete();
			// Stream으로 온 MultipartFile을 실제 파일로 변경처리
			try {
				mtf.transferTo(tmpFile);
				File orgFile = new File(upload+fileName);
				// tmp 위치에 있는 파일을 현재 웹서버의 특정한 폴더로 이동
				Files.copy(tmpFile.toPath(), orgFile.toPath(),
						StandardCopyOption.REPLACE_EXISTING);
						// 파일을 옮길 때, 이미 동일한 파일명이 존재할 경우(실제 폴더) 마지막에 올린 파일로 변경처리
				
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println(e.getMessage());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println(e.getMessage());
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			task.setFname(fileName);
			rep.insertRepo(task);
			
		}
				
	}
	// 파일 수정, 파일 정보 수정..
	private void upload2(TaskDivision task) {
			
		// upt.getReport() : 수정할 파일 정보(배열)
		// upt.getFilenames() : 기존 파일 정보(배열)
		MultipartFile file = task.getReport();
		
		String fileName=file.getOriginalFilename();
		if(fileName!=null&&!fileName.equals("")) {
			File tmpFile = new File(tmpUpload+fileName);
			// 해당 폴드에 동일한 파일이 있으면 삭제 처리
			if(tmpFile.exists()) tmpFile.delete();
			try {
			// Stream으로 온 MultipartFile을 실제 파일로 변경처리.	
				file.transferTo(tmpFile);
				File orgFile = new File(upload+fileName);
		
			// tmp위치에 있는 파일을 현재 웹서버에 특정할 폴드로 이동.
			// StandardCopyOption.REPLACE_EXISTING : 기존 동일 파일명이 있을 때,
			// 마지막에 올린 파일로 변경 처리..
				Files.copy(tmpFile.toPath(), orgFile.toPath(), 
				StandardCopyOption.REPLACE_EXISTING);
					
					
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			/*
			# 파일 수정에 대한 DB처리
			
			1. 게시물 고유번호, 기존파일, 변경할 파일정보
			2. HashMap no : 게시물 고유번호
			           tar : 변경할 파일 명
			           org : 기존 파일명
			3. 기존 파일을 대체하는 경우 : update
			      기존에 없는 파일을 추가하는 경우 :insert
			
			* */
			
			// org, tar, no
			String fnm = task.getFname();
			HashMap<String, String> hm = new HashMap<String, String>();
			hm.put("org", fnm);
			hm.put("tar", fileName);
			hm.put("taskno", ""+task.getTaskno());				
			hm.put("projectno", ""+task.getProjectno());				
			hm.put("divno", ""+task.getDivno());				
			rep.uptFileInfo(hm);			
		}
	}
	
	private void tupload(MultipartFile mtf, Task task) {
		String fileName = mtf.getOriginalFilename();
		if(!fileName.equals("")) {
			File tmpFile = new File(tmpUpload+fileName);
			// 해당 폴더(임시 폴더)에 동일한 파일이 있으면 삭제처리
			if(tmpFile.exists()) tmpFile.delete();
			// Stream으로 온 MultipartFile을 실제 파일로 변경처리
			try {
				mtf.transferTo(tmpFile);
				File orgFile = new File(upload+fileName);
				// tmp 위치에 있는 파일을 현재 웹서버의 특정한 폴더로 이동
				Files.copy(tmpFile.toPath(), orgFile.toPath(),
						StandardCopyOption.REPLACE_EXISTING);
						// 파일을 옮길 때, 이미 동일한 파일명이 존재할 경우(실제 폴더) 마지막에 올린 파일로 변경처리
				
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println(e.getMessage());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println(e.getMessage());
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			task.setFname(fileName);
			rep.insertResultRepo(task);
			
		}
				
	}
	// 파일 수정, 파일 정보 수정..
		private void tupload2(Task task) {
				
			// upt.getReport() : 수정할 파일 정보(배열)
			// upt.getFilenames() : 기존 파일 정보(배열)
			MultipartFile file = task.getReport();
			
			String fileName=file.getOriginalFilename();
			if(fileName!=null&&!fileName.equals("")) {
				File tmpFile = new File(tmpUpload+fileName);
				// 해당 폴드에 동일한 파일이 있으면 삭제 처리
				if(tmpFile.exists()) tmpFile.delete();
				try {
				// Stream으로 온 MultipartFile을 실제 파일로 변경처리.	
					file.transferTo(tmpFile);
					File orgFile = new File(upload+fileName);
			
				// tmp위치에 있는 파일을 현재 웹서버에 특정할 폴드로 이동.
				// StandardCopyOption.REPLACE_EXISTING : 기존 동일 파일명이 있을 때,
				// 마지막에 올린 파일로 변경 처리..
					Files.copy(tmpFile.toPath(), orgFile.toPath(), 
					StandardCopyOption.REPLACE_EXISTING);
						
						
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				/*
				# 파일 수정에 대한 DB처리
				
				1. 게시물 고유번호, 기존파일, 변경할 파일정보
				2. HashMap no : 게시물 고유번호
				           tar : 변경할 파일 명
				           org : 기존 파일명
				3. 기존 파일을 대체하는 경우 : update
				      기존에 없는 파일을 추가하는 경우 :insert
				
				* */
				
				// org, tar, no
				String fnm = task.getFname();
				HashMap<String, String> hm = new HashMap<String, String>();
				hm.put("org", fnm);
				hm.put("tar", fileName);
				hm.put("taskno", ""+task.getTaskno());				
				hm.put("projectno", ""+task.getProjectno());
				System.out.println(fnm+":"+fileName+":"+task.getTaskno()+":"+task.getProjectno());
				if(fnm!=null&&!fnm.equals("")) {
					rep.uptResultRepo(hm);
				}else {
					task.setFname(fileName);
					rep.insertResultRepo(task);
				}
				
							
			}
		}
}
