package com.hellokoding.auth.exceptions;

import java.sql.SQLIntegrityConstraintViolationException;

public class MySQLIntegrityException extends SQLIntegrityConstraintViolationException {

	public MySQLIntegrityException(String arg0) {
		
		super(arg0);
	}

	
}
