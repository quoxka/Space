package xyz.itwill.exception;

import lombok.Getter;
import lombok.Setter;
import xyz.itwill.dto.Member;

@Getter
@Setter
public class ExistsMemberException extends Exception {
	private static final long serialVersionUID = 1L;

	private Member member;
	
	public ExistsMemberException() {
		// TODO Auto-generated constructor stub
	}
	
	public ExistsMemberException(String message, Member member) {
		super(message);
		this.member=member;
	}
}