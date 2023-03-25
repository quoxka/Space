package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dto.HostSpacePay;
import xyz.itwill.dto.Pay;
import xyz.itwill.dto.PayMember;
import xyz.itwill.dto.SpaceHost;
import xyz.itwill.mapper.PayMapper;

@Repository
@RequiredArgsConstructor
public class PayDAOImpl implements PayDAO {
	private final SqlSession sqlSession;
	
	@Override
	public int insertPay(Pay pay) {
		return sqlSession.getMapper(PayMapper.class).insertPay(pay);
	}

	@Override
	public int updatePay(Pay pay) {
		return sqlSession.getMapper(PayMapper.class).updatePay(pay);
	}

	@Override
	public Pay selectPay(int pNo) {
		return sqlSession.getMapper(PayMapper.class).selectPay(pNo);
	}

	@Override
	public List<Pay> selectPayList(Map<String, Object> map) {
		return sqlSession.getMapper(PayMapper.class).selectPayList(map);
	}

	@Override
	public List<PayMember> selectMemberPayList(String pMid) {
		return sqlSession.getMapper(PayMapper.class).selectMemberPayList(pMid);
	}

	@Override
	public SpaceHost selectSpaceHost(int sNo) {
		return sqlSession.getMapper(PayMapper.class).selectSpaceHost(sNo);
	}

	@Override
	public int selectPayCount() {
		return sqlSession.getMapper(PayMapper.class).selectPayCount();
	}

	@Override
	public int selectHostPayCount(String hId) {
		return sqlSession.getMapper(PayMapper.class).selectHostPayCount(hId);
	}

	@Override
	public List<HostSpacePay> selectHostSpaceListPayList(String hId) {
		return sqlSession.getMapper(PayMapper.class).selectHostSpaceListPayList(hId);
	}

	@Override
	public List<HostSpacePay> selectHostSpaceListPayListByRow(Map<String, Object> map) {
		return sqlSession.getMapper(PayMapper.class).selectHostSpaceListPayListByRow(map);
	}

}

