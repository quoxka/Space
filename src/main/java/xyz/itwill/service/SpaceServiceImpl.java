package xyz.itwill.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dao.SpaceDAO;
import xyz.itwill.dto.Space;
import xyz.itwill.dto.SpaceHost;

@Service
@RequiredArgsConstructor
public class SpaceServiceImpl implements SpaceService{
 	private final SpaceDAO spaceDAO;

	@Override
	public Space getSpaceBySNo(String hId, int sNo) {
		return spaceDAO.selectSpaceBySNo(hId, sNo);
	}

	@Override
	public List<SpaceHost> getSpaceHost(String hId, int sNo) {
		return spaceDAO.selectSpaceHost(hId, sNo);
	}
	
	@Override
	public Space getSpaceBySnoTest(int sNo) {

		return spaceDAO.selectSpaceBySnoTest(sNo);
	}

}
