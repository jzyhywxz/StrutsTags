package com.zzw.bean;

import org.apache.struts2.util.SubsetIteratorFilter.Decider;

public class MyDecider implements Decider {

	@Override
	public boolean decide(Object elem) throws Exception {
		int d=(Integer) elem;
		return d>3;
	}

}
