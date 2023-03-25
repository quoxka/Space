package xyz.itwill.exception;

//Wallet 정보에 대한 변경, 검색 명령이 실행될때 전달받은 Wallet 정보가 없을 경우 발생되어 처리하기 위한 예외 클래스
public class WalletNotFoundException extends Exception{
		private static final long serialVersionUID = 1L;

		public WalletNotFoundException() {
			// TODO Auto-generated constructor stub
		}
		
		public WalletNotFoundException(String message) {
			super(message);
		}
}
