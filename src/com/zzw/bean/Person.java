package com.zzw.bean;

public class Person {
	private String name;
	private String sex;
	private int age;

	public Person() {}
	public Person(String n, String s, int a) {
		name=n;
		sex=s;
		age=a;
	}
	
	public String getName() { return name; }
	public String getSex() { return sex; }
	public int getAge() { return age; }
	
	public void setName(String n) { name=n; }
	public void setSex(String s) { sex=s; }
	public void setAge(int a) { age=a; }
}
