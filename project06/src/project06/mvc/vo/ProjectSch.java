package project06.mvc.vo;

import java.util.Date;

public class ProjectSch {
	private String keyword;
	private int projectno;
	private int kindno;
	private String pname;
	private String empno;
	private int personnel;
	private int budget;
	private String startdate;
	private String enddate;
	private int progress;
	private String state;
	private String waiting;
	private String proceeding;
	private String stop;
	private int cntyear;

	// join
	private int taskno;
	
	private int kindno1;
	private int kindno2;
	private int kindno3;
	private int kindno4;
	private int kindno5;
	
	
	public int getCntyear() {
		return cntyear;
	}
	public void setCntyear(int cntyear) {
		this.cntyear = cntyear;
	}
	public int getKindno1() {
		return kindno1;
	}
	public void setKindno1(int kindno1) {
		this.kindno1 = kindno1;
	}
	public int getKindno2() {
		return kindno2;
	}
	public void setKindno2(int kindno2) {
		this.kindno2 = kindno2;
	}
	public int getKindno3() {
		return kindno3;
	}
	public void setKindno3(int kindno3) {
		this.kindno3 = kindno3;
	}
	public int getKindno4() {
		return kindno4;
	}
	public void setKindno4(int kindno4) {
		this.kindno4 = kindno4;
	}
	public int getKindno5() {
		return kindno5;
	}
	public void setKindno5(int kindno5) {
		this.kindno5 = kindno5;
	}
	public String getWaiting() {
		return waiting;
	}
	public void setWaiting(String waiting) {
		this.waiting = waiting;
	}
	// kind, emp와 join
	private String kname;
	private String name;
	// issuecnt
	private int issuecnt;
	// 2. 페이징 처리
	private int cnt;
	private int count; // 총 데이터 건수
	private int pageSize; // 한페이지에 보여줄 데이터 건수
	private int pageCount; // 총 페이지 수
	private int curPage; // 클릭한 현재 페이지
	private int start; // 페이지의 시작 번호
	private int end; // 페이지의 마지막 번호
	// 3. 블럭처리
	private int blockSize; // 한 번에 보여줄 block의 크기
	private int startBlock; // block의 시작번호
	private int endBlock;  // block의 마지막 번호	
	
	public int getProjectno() {
		return projectno;
	}
	public void setProjectno(int projectno) {
		this.projectno = projectno;
	}
	public int getKindno() {
		return kindno;
	}
	public void setKindno(int kindno) {
		this.kindno = kindno;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getEmpno() {
		return empno;
	}
	public void setEmpno(String empno) {
		this.empno = empno;
	}
	public int getPersonnel() {
		return personnel;
	}
	public void setPersonnel(int personnel) {
		this.personnel = personnel;
	}
	public int getBudget() {
		return budget;
	}
	public void setBudget(int budget) {
		this.budget = budget;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getKname() {
		return kname;
	}
	public void setKname(String kname) {
		this.kname = kname;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getBlockSize() {
		return blockSize;
	}
	public void setBlockSize(int blockSize) {
		this.blockSize = blockSize;
	}
	public int getStartBlock() {
		return startBlock;
	}
	public void setStartBlock(int startBlock) {
		this.startBlock = startBlock;
	}
	public int getEndBlock() {
		return endBlock;
	}
	public void setEndBlock(int endBlock) {
		this.endBlock = endBlock;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getProgress() {
		return progress;
	}
	public void setProgress(int progress) {
		this.progress = progress;
	}
	public int getIssuecnt() {
		return issuecnt;
	}
	public void setIssuecnt(int issuecnt) {
		this.issuecnt = issuecnt;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getProceeding() {
		return proceeding;
	}
	public void setProceeding(String proceeding) {
		this.proceeding = proceeding;
	}
	public String getStop() {
		return stop;
	}
	public void setStop(String stop) {
		this.stop = stop;
	}
	public int getTaskno() {
		return taskno;
	}
	public void setTaskno(int taskno) {
		this.taskno = taskno;
	}
	
	
}
