package project06.mvc.vo;

import java.util.ArrayList;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class JsonBoard {
	private int pjreplyno;
	private int pjboardno;
	private int projectno;
	private int refno;
	private String empno;
	private String title;
	private String content;
	
	
	private String credate;
	private Date uptdate;
	private int views;
	private String noticetype;
	
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}


	private String name;
	private String writer;
	private String state;
	

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
	
	// 파일 등록 처리 객체
	private MultipartFile[] report;
	private ArrayList<String> filenames;
	// 파일 로딩 정보 가지고 오기
	private String[] fnames;
	
	private int level;	
	// 계층형에서 level-답글처리시.
	
	
	
	public int getPjboardno() {
		return pjboardno;
	}
	public void setPjboardno(int pjboardno) {
		this.pjboardno = pjboardno;
	}
	public int getProjectno() {
		return projectno;
	}
	public void setProjectno(int projectno) {
		this.projectno = projectno;
	}
	public int getRefno() {
		return refno;
	}
	public void setRefno(int refno) {
		this.refno = refno;
	}
	public String getEmpno() {
		return empno;
	}
	public void setEmpno(String empno) {
		this.empno = empno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCredate() {
		return credate;
	}
	public void setCredate(String credate) {
		this.credate = credate;
	}
	public Date getUptdate() {
		return uptdate;
	}
	public void setUptdate(Date uptdate) {
		this.uptdate = uptdate;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public String getNoticetype() {
		return noticetype;
	}
	public void setNoticetype(String noticetype) {
		this.noticetype = noticetype;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
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
	public MultipartFile[] getReport() {
		return report;
	}
	public void setReport(MultipartFile[] report) {
		this.report = report;
	}
	public ArrayList<String> getFilenames() {
		return filenames;
	}
	public void setFilenames(ArrayList<String> filenames) {
		this.filenames = filenames;
	}
	public String[] getFnames() {
		return fnames;
	}
	public void setFnames(String[] fnames) {
		this.fnames = fnames;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public int getPjreplyno() {
		return pjreplyno;
	}
	public void setPjreplyno(int pjreplyno) {
		this.pjreplyno = pjreplyno;
	}
	

	
	
	
	
	

	
	
	
	
}

