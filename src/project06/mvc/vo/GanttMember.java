package project06.mvc.vo;

public class GanttMember {
	private String key;
	private String label;
	private String backgroundColor;
	private String textColor;
		
	public GanttMember() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public GanttMember(String key, String label, String backgroundColor, String textColor) {
		super();
		this.key = key;
		this.label = label;
		this.backgroundColor = backgroundColor;
		this.textColor = textColor;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getBackgroundColor() {
		return backgroundColor;
	}
	public void setBackgroundColor(String backgroundColor) {
		this.backgroundColor = backgroundColor;
	}
	public String getTextColor() {
		return textColor;
	}
	public void setTextColor(String textColor) {
		this.textColor = textColor;
	}
	
	
	
}
