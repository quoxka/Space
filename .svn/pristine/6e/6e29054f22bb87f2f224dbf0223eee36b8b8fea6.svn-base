package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dao.HostDAO;
import xyz.itwill.dao.SpaceManageDAO;
import xyz.itwill.dto.Host;
import xyz.itwill.dto.Space;
import xyz.itwill.dto.SpaceHost;
import xyz.itwill.exception.SpaceNotFoundException;

@Service
@RequiredArgsConstructor
public class SpaceManageServiceImpl implements SpaceManageService {
	private final SpaceManageDAO spaceManageDAO;
	private final HostDAO hostDAO;
	
	/*
	@Transactional
	@Override
	public void addSpaceRegister(Space space, Host host) {
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
		
		spaceManageDAO.insertSpace(space);
		hostDAO.updateHost(host);
	}
	*/
	
	@Transactional
	@Override
	public void addSpaceRegister(Space space) {
		spaceManageDAO.insertSpace(space);
	}
	
	@Override
	public Space getSpaceInfo(int sNo) throws SpaceNotFoundException {
		//전달받은 공간번호로 기존 공간번호의 공간정보를 검색하여 검색결과가 없는 경우 인위적 예외 발생
		if(spaceManageDAO.selectSpaceInfo(sNo)==null) {
			throw new SpaceNotFoundException("공간번호의 공간정보가 존재하지 않습니다.");
		}
		return spaceManageDAO.selectSpaceInfo(sNo);
	}
	
	//호스트 아이디를 전달받아 해당 호스트 아이디가 등록한 공간 목록 검색
	@Transactional
	@Override
	public List<SpaceHost> getSpaceManage(String sHid) {
		return spaceManageDAO.selectSpaceList(sHid);
	}

	//공간번호를 전달받아 해당 공간정보를 검색
	@Transactional
	@Override
	public List<SpaceHost> getSpaceNo(int sNo) throws SpaceNotFoundException {
		//전달받은 공간번호로 기존 공간번호의 공간정보를 검색하여 검색결과가 없는 경우 인위적 예외 발생
		if(spaceManageDAO.selectSpaceNo(sNo)==null) {
			throw new SpaceNotFoundException("공간번호의 공간정보가 존재하지 않습니다.");
		}
		return spaceManageDAO.selectSpaceNo(sNo);
	}

	/*
	@Transactional
	@Override
	public void modifySpaceManage(Space space, Host host) throws SpaceNotFoundException {
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
		spaceManageDAO.updateSpace(space);
		hostDAO.updateHost(host);
	}
	*/
	
	@Transactional
	@Override
	public void modifySpaceManage(Space space) throws SpaceNotFoundException {
		spaceManageDAO.updateSpace(space);
	}

	@Transactional
	@Override
	public void deleteSpaceManage(int sNo) throws SpaceNotFoundException {
		//전달받은 공간번호로 기존 공간번호의 공간정보를 검색하여 검색결과가 없는 경우 인위적 예외 발생
		if(spaceManageDAO.selectSpaceNo(sNo)==null) {
			throw new SpaceNotFoundException("공간번호의 공간정보가 존재하지 않습니다.");
		}
		spaceManageDAO.removeSpace(sNo);
	}
	
	@Transactional
	@Override
	public int getSpaceManageCount(String sHid) {
		return spaceManageDAO.selectSpaceManageCount(sHid);
	}
	
	@Transactional
	@Override
	public List<Space> getSpaceManagePaging(Map<String, Object> map) {
		return spaceManageDAO.selectSpaceManagePaging(map);
	}

	@Transactional
	@Override
	public Space getSpace(String sHid) {
		return spaceManageDAO.selectSpace(sHid);
	}
}