package kr.co.bit.day4;

import java.util.Arrays;

public class MemberVO {

	private String id;
	private String pw;
	private String name;
	private String zip1;
	private String zip2;
	private String zipcode;
	private String addr1;
	private String addr2;
	private String email;
	private String[] lang;
	private String tool;
	private String project;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
 
	

	public String getZip1() {
		return zip1;
	}

	public void setZip1(String zip1) {
		this.zip1 = zip1;
	}

	public String getZip2() {
		return zip2;
	}

	public void setZip2(String zip2) {
		this.zip2 = zip2;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String[] getLang() {
		return lang;
	}

	public void setLang(String[] lang) {
		this.lang = lang;
	}

	public String getTool() {
		return tool;
	}

	public void setTool(String tool) {
		this.tool = tool;
	}

	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + ", name=" + name + ", zipcode=" + zipcode + ", addr1=" + addr1 + ", addr2=" + addr2 + ", email=" + email + ", lang="
				+ Arrays.toString(lang) + ", tool=" + tool + ", project=" + project + "]";
	}

	
 
	
}
