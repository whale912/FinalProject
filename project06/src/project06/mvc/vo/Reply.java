package project06.mvc.vo;

import java.sql.Date;

public class Reply {
	// 2. 페이징 처리

	
	private int pjreplyno;
	private int pjboardno;
	private String writer;
	private String rewriter;
	private String name;
	private String credate;
	private String content;
	private String recontent;
	private String recontent2;
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
	public int getPjboardno() {
		return pjboardno;
	}
	public void setPjboardno(int pjboardno) {
		this.pjboardno = pjboardno;
	}
	public int getPjreplyno() {
		return pjreplyno;
	}
	public void setPjreplyno(int pjreplyno) {
		this.pjreplyno = pjreplyno;
	}

	
	

	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getRewriter() {
		return rewriter;
	}
	public void setRewriter(String rewriter) {
		this.rewriter = rewriter;
	}
	public String getRecontent() {
		return recontent;
	}
	public void setRecontent(String recontent) {
		this.recontent = recontent;
	}
	public String getRecontent2() {
		return recontent2;
	}
	public void setRecontent2(String recontent2) {
		this.recontent2 = recontent2;
	}
	
	
}
