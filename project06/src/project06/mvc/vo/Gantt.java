package project06.mvc.vo;

public class Gantt {
	private int id;
	private String text;
	private String type;
	private String start_date;
	private int duration;
	private Double progress;
	private boolean open;
	private String users;
	private String parent;
	private int priority;
	private String owner_id;
	// 0519 임성빈    진행률(%),state 추가 
	private String percent;
	private String state;
		
	public Gantt() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Gantt(int id, String text, String type, String start_date, int duration, Double progress, boolean open,
			String users) {
		super();
		this.id = id;
		this.text = text;
		this.type = type;
		this.start_date = start_date;
		this.duration = duration;
		this.progress = progress;
		this.open = open;
		this.users = users;
	}
		
	public Gantt(int id, String text, String type, String start_date, int duration, Double progress, boolean open,
			String users, String parent, int priority, String owner_id) {
		super();
		this.id = id;
		this.text = text;
		this.type = type;
		this.start_date = start_date;
		this.duration = duration;
		this.progress = progress;
		this.open = open;
		this.users = users;
		this.parent = parent;
		this.priority = priority;
		this.owner_id = owner_id;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public Double getProgress() {
		return progress;
	}
	public void setProgress(Double progress) {
		this.progress = progress;
	}
	public boolean getOpen() {
		return open;
	}
	public void setOpen(boolean open) {
		this.open = open;
	}
	public String getUsers() {
		return users;
	}
	public void setUsers(String users) {
		this.users = users;
	}

	public String getParent() {
		return parent;
	}

	public void setParent(String parent) {
		this.parent = parent;
	}

	public int getPriority() {
		return priority;
	}

	public void setPriority(int priority) {
		this.priority = priority;
	}

	public String getOwner_id() {
		return owner_id;
	}

	public void setOwner_id(String owner_id) {
		this.owner_id = owner_id;
	}
	
	// 진행률 % 추가

	public String getPercent() {
		return percent;
	}

	public void setPercent(String percent) {
		this.percent = percent;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
	
	
	
}
