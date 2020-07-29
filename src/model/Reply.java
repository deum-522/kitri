package model;

public class Reply {
	int seq;
	String id;
	String name;
	String content;
	String w_date;	
	
	public Reply() {}
	
	public Reply(String id, String name, String content, String w_date) {
		this.id = id;
		this.name = name;
		this.content = content;
		this.w_date = w_date;
	}
	
	public Reply(int seq, String id, String name, String content, String w_date) {
		this.seq = seq;
		this.id = id;
		this.name = name;
		this.content = content;
		this.w_date = w_date;
	}

	@Override
	public String toString() {
		return "num : " + seq +
				 "id : " + id +
				 "name : " + name +
				 "content : " + content +
				 "w_date : " + w_date;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getW_date() {
		return w_date;
	}

	public void setW_date(String w_date) {
		this.w_date = w_date;
	}	
		
	
}
