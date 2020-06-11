package project06.mvc.vo;

public class Mail {
	private String subject; // 제목
	private String content; // 내용
	private String regdate; // 발송일
	private String receiver; // 수신자
	private int checkNum; // 인증번호

	public int getCheckNum() {
		return checkNum;
	}
	public void setCheckNum(int checkNum) {
		this.checkNum = checkNum;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	

}
