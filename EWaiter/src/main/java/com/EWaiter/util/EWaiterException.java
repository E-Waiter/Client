package com.EWaiter.util;

public class EWaiterException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3693433712800014080L;

	public EWaiterException(ErrorCode code) {
		super(code.getDetail());
		this.code = code;
	}

	public EWaiterException(ErrorCode code, String message) {
		super(message);
		this.code = code;
	}

	public EWaiterException(ErrorCode code, Throwable cause) {
		super(cause);
		this.code = code;
	}

	public ErrorCode getErrorCode() {
		return code;
	}

	public EWaiterException(String message, Throwable cause) {
		super(message, cause);
	}
	
	private ErrorCode code = null;
}
