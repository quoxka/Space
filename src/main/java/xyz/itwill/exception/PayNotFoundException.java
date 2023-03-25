package xyz.itwill.exception;


//pay 정보에 대한 변경, 검색 명령이 실행될때 전달받은 pay 정보가 없을 경우 발생되어 처리하기 위한 예외 클래스
public class PayNotFoundException extends Exception {
	private static final long serialVersionUID = 1L;

	public PayNotFoundException() {
		// TODO Auto-generated constructor stub
	}
	
	public PayNotFoundException(String message) {
		super(message);
	}
}