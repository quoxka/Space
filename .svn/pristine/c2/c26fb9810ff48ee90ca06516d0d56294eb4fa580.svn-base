package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dao.HostDAO;
import xyz.itwill.dto.Host;
import xyz.itwill.exception.ExistsHostException;
import xyz.itwill.exception.HostNotFoundException;
import xyz.itwill.exception.LoginAuthFailException;
@Service
@RequiredArgsConstructor
public class HostServiceImpl implements HostService {

	private final HostDAO hostDAO;
	
	@Transactional
	@Override
	public void addHost(Host host) throws ExistsHostException {
		if(hostDAO.selectHost(host.getHId())!=null){
			throw new ExistsHostException("이미 사용 중인 호스트 아이디를 입력 하였습니다.", host);
		}
		host.setHPw(BCrypt.hashpw(host.getHPw(),BCrypt.gensalt()));
		//삽입처리
		hostDAO.insertHost(host);
	}

	
	
	
	@Transactional
	@Override
	public void modifyHost(Host host) throws HostNotFoundException {
		if(hostDAO.selectHost(host.getHId())==null) {
			throw new HostNotFoundException("호스트 아이디의 회원정보가 존재하지 않습니다.");
		}
		if(host.getHPw()!=null && !host.getHPw().equals("")) {
			host.setHPw(BCrypt.hashpw(host.getHPw(),BCrypt.gensalt()));
		}
		if(host.getHName()!=null && !host.getHName().equals("")) {
			host.setHName(host.getHName());
		}
		if(host.getHEmail()!=null && !host.getHEmail().equals("")) {
			host.setHEmail(host.getHEmail());
		}
		if(host.getHPhone()!=null && !host.getHPhone().equals("")) {
			host.setHPhone(host.getHPhone());
		}
		if(host.getHStatus()==0 || host.getHStatus()==1 || host.getHStatus()==9) {
			host.setHStatus(host.getHStatus());
		}
		if(host.getHSpacename()!=null && !host.getHSpacename().equals("")) {
			host.setHSpacename(host.getHSpacename());
		}
		if(host.getHCeoname()!=null && !host.getHCeoname().equals("")) {
			host.setHCeoname(host.getHCeoname());
		}
		if(host.getHNum()!=null && !host.getHNum().equals("")) {
			host.setHNum(host.getHNum());
		}
		if(host.getHAccount()!=null && !host.getHAccount().equals("")) {
			host.setHAccount(host.getHAccount());
		}
		if(host.getHBank()!=null && !host.getHBank().equals("")) {
			host.setHBank(host.getHPhone());
		}
		if(host.getHAccountname()!=null && !host.getHAccountname().equals("")) {
			host.setHAccountname(host.getHAccountname());
		}
		//변경처리
		hostDAO.updateHost(host);
	}

	@Override
	public Host getHost(String hId) throws HostNotFoundException {
		Host host=hostDAO.selectHost(hId);
		if(host==null) {
			throw new HostNotFoundException("호스트 아이디의 회원정보가 존재하지 않습니다.");
		}
		return host;
	}	
	
	
	@Override
	public Host loginAuth(Host host) throws LoginAuthFailException {
		Host loginHost=hostDAO.selectHost(host.getHId());
		
		if(loginHost==null || loginHost.getHId().equals("")) {
			throw new LoginAuthFailException("호스트 아이디의 회원정보가 존재하지 않습니다.", host.getHId());
		}
		if(!BCrypt.checkpw(host.getHPw(), loginHost.getHPw())) {
			throw new LoginAuthFailException("호스트의 비밀번호가 맞지 않습니다.", host.getHId());
		}
		return loginHost;
	}


	@Override
	public int getHostCount() {
		return hostDAO.selectHostCount();
	}


	@Override
	public List<Host> getHostList(Map<String, Object> map) {
		return hostDAO.selectHostList(map);
	}


	@Override
	public void removehost(String hId) throws HostNotFoundException {
		if(hostDAO.selectHost(hId)==null) {
			throw new HostNotFoundException("호스트 아이디의 회원정보가 존재하지 않습니다.");
		}
		hostDAO.deleteHost(hId);
	}




	@Override
	public List<Host> getHoststatusList(Map<String, Object> map) {
		return hostDAO.selectstatusHostList(map);
	}




	@Override
	public void deleteHost(String hId) throws HostNotFoundException {
		Host host=hostDAO.selectHost(hId);
		if(host==null) {
			throw new HostNotFoundException("호스트 아이디의 회원정보가 존재하지 않습니다.");
		}
	}




}
