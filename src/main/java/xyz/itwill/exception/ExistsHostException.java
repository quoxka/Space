package xyz.itwill.exception;

import lombok.Getter;
import lombok.Setter;
import xyz.itwill.dto.Host;
import xyz.itwill.dto.Member;

@Getter
@Setter
public class ExistsHostException extends Exception {
	private static final long serialVersionUID = 1L;

	private Host host;
	
	public ExistsHostException() {
		// TODO Auto-generated constructor stub
	}
	
	public ExistsHostException(String message, Host host) {
		super(message);
		this.host=host;
	}
}