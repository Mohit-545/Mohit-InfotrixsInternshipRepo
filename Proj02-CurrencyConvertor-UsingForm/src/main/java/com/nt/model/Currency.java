//Currency.java
package com.nt.model;

import lombok.Data;

@Data
public class Currency {
	
	private String fromCode;
	private String toCode;
	private double amount;

}//class
