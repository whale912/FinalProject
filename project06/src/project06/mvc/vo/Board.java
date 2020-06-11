package project06.mvc.vo;

import java.util.ArrayList;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;


public class Board {
	private int pjboardno;
	private int projectno;
	private int pjreplyno;
	private int refno;
	private String empno;
	private String title;
	private String content;
	private String replycontent;
	private String replycontent2;
	private Date credate;
	private Date uptdate;
	private int views;
	private String noticetype;
	private String rewriter;
	private int totrecnt;
	private String pname;
	
	
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
	private String src1;
	private String src2;
	

	public String getSrc1() {
		return src1;
	}
	public void setSrc1(String src1) {
		this.src1 = src1;
	}
	public String getSrc2() {
		return src2;
	}
	public void setSrc2(String src2) {
		this.src2 = src2;
	}


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
	
	private int cnt2;
	private int count2; // 총 데이터 건수
	private int pageSize2; // 한페이지에 보여줄 데이터 건수
	private int pageCount2; // 총 페이지 수
	private int curPage2; // 클릭한 현재 페이지
	private int start2; // 페이지의 시작 번호
	private int end2; // 페이지의 마지막 번호
	// 3. 블럭처리
	private int blockSize2; // 한 번에 보여줄 block의 크기
	private int startBlock2; // block의 시작번호
	private int endBlock2;  // block의 마지막 번호	
	
	
	
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
	public Date getCredate() {
		return credate;
	}
	public void setCredate(Date credate) {
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
	public String getReplycontent() {
		return replycontent;
	}
	public void setReplycontent(String replycontent) {
		this.replycontent = replycontent;
	}
	public String getReplycontent2() {
		return replycontent2;
	}
	public void setReplycontent2(String replycontent2) {
		this.replycontent2 = replycontent2;
	}
	public String getRewriter() {
		return rewriter;
	}
	public void setRewriter(String rewriter) {
		this.rewriter = rewriter;
	}
	public int getCnt2() {
		return cnt2;
	}
	public void setCnt2(int cnt2) {
		this.cnt2 = cnt2;
	}
	public int getCount2() {
		return count2;
	}
	public void setCount2(int count2) {
		this.count2 = count2;
	}
	public int getPageSize2() {
		return pageSize2;
	}
	public void setPageSize2(int pageSize2) {
		this.pageSize2 = pageSize2;
	}
	public int getPageCount2() {
		return pageCount2;
	}
	public void setPageCount2(int pageCount2) {
		this.pageCount2 = pageCount2;
	}
	public int getCurPage2() {
		return curPage2;
	}
	public void setCurPage2(int curPage2) {
		this.curPage2 = curPage2;
	}
	public int getStart2() {
		return start2;
	}
	public void setStart2(int start2) {
		this.start2 = start2;
	}
	public int getEnd2() {
		return end2;
	}
	public void setEnd2(int end2) {
		this.end2 = end2;
	}
	public int getBlockSize2() {
		return blockSize2;
	}
	public void setBlockSize2(int blockSize2) {
		this.blockSize2 = blockSize2;
	}
	public int getStartBlock2() {
		return startBlock2;
	}
	public void setStartBlock2(int startBlock2) {
		this.startBlock2 = startBlock2;
	}
	public int getEndBlock2() {
		return endBlock2;
	}
	public void setEndBlock2(int endBlock2) {
		this.endBlock2 = endBlock2;
	}
	public int getTotrecnt() {
		return totrecnt;
	}
	public void setTotrecnt(int totrecnt) {
		this.totrecnt = totrecnt;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	

	
	
	
	
	

	
	
	
	
}
