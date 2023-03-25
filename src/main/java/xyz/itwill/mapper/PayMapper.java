package xyz.itwill.mapper;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.HostSpacePay;
import xyz.itwill.dto.Pay;
import xyz.itwill.dto.PayMember;
import xyz.itwill.dto.SpaceHost;

public interface PayMapper {
	int insertPay(Pay pay);
	int updatePay(Pay pay);
	int selectPayCount();
	int selectHostPayCount(String hId);
	Pay selectPay(int pNo);
	List<Pay> selectPayList(Map<String, Object> map);
	List<PayMember> selectMemberPayList(String pMid);
	SpaceHost selectSpaceHost(int sNo);
	List<HostSpacePay> selectHostSpaceListPayList(String hId);
	List<HostSpacePay>selectHostSpaceListPayListByRow(Map<String, Object> map);
}
