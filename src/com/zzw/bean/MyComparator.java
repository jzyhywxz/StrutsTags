package com.zzw.bean;

import java.util.Comparator;

public class MyComparator implements Comparator<Integer> {

	@Override
	public int compare(Integer first, Integer second) {
		return first-second;
	}

}
