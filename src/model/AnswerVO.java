package model;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class AnswerVO {
	
	private int bno;
	private int rebno;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getRebno() {
		return rebno;
	}
	public void setRebno(int rebno) {
		this.rebno = rebno;
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
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date redgate) {
		this.regdate = redgate;
	}

}
