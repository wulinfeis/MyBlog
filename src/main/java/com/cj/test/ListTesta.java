package com.cj.test;

import java.util.ArrayList;
import java.util.List;

public class ListTesta {
	public static void main(String[] args) {
		List list = new ArrayList();
		list.add(1);
		list.add(2);
		list.add(3);
		list.add(4);
		list.add(5);
		list.add(6);
		int si = list.size() -1;
		for (int i = 0; i < si; i++) {
			if(si == 3) {
				break;
			}else {
				list.remove(si);
				si = si -1;
			}
		}
		System.out.println(list);
	}
}
