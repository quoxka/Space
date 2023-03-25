package xyz.itwill.exception;


//faq, notice 정보에 대한 변경,삭제,검색 명령이 실행될때 전달받은 board정보가 없을 경우 발생되어 처리하기 위한 예외 클래스
public class BoardNotFoundException extends Exception {
	private static final long serialVersionUID = 1L;

	public BoardNotFoundException() {
		// TODO Auto-generated constructor stub
	}
	
	public BoardNotFoundException(String message) {
		super(message);
	}
}