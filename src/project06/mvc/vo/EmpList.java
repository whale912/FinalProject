package project06.mvc.vo;

// project06.mvc.vo.EmpList
public class EmpList {
	// 검색과 페이징 처리를 위한 VO 객체
	// 1. 검색(사원명, 부서명, 직책명, 직급명)
	private String name;
	private String dname;
	private String pname; 	// 직책명 (position)
	private String rname; 	// 직급명 (rank)
	private int authno; 	// 직책명 (position)
	private int rankno; 	// 직급명 (rank)
		
	// 2. 페이징처리
	private int count;		// 총 데이터 건수
	private int pageSize;	// 한번에 보여줄 페이지 크기
	private int pageCount;	// 총 페이지 수; count/(나누기)pageSize
	private int curPage;	// 클릭한 현재 페이지 번호
	private int start;		// 페이지의 시작 번호
	private int end;		// 페이지의 마지막 번호
	
	// 3. 블럭 처리
	private int blockSize;	// 한번에 보여줄 block의 크기
	private int startBlock;
	private int endBlock;
		
	
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
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
	public int getAuthno() {
		return authno;
	}
	public void setAuthno(int authno) {
		this.authno = authno;
	}
	public int getRankno() {
		return rankno;
	}
	public void setRankno(int rankno) {
		this.rankno = rankno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
