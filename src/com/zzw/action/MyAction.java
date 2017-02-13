package com.zzw.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.opensymphony.xwork2.ActionSupport;

@Namespace("/zzw")
@Results({@Result(name="success", location="first.jsp")})
public class MyAction extends ActionSupport {
	private String message;
	private static final long serialVersionUID = 1L;

	public String getMessage() { return message; }
	public void setMessage(String m) { message=m; }
	
	@Action(value="/zzw/first", 
			results={@Result(name="success", location="first.jsp")})
	public String first() throws Exception {
		return SUCCESS;
	}
}
