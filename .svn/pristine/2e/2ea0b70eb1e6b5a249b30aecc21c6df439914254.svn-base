package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.HostSpacePay;
import xyz.itwill.dto.Pay;
import xyz.itwill.dto.PayMember;
import xyz.itwill.dto.SpaceHost;
import xyz.itwill.exception.PayNotFoundException;

public interface OrderService {
	int addPay(Pay pay);
	int modifyPay(Pay pay) throws PayNotFoundException;
	int getPayCount();
	int getHostPayCount(String hId);
	Pay getPay(int pNo) throws PayNotFoundException;
	List<Pay> getPayList(Map<String, Object> map);
	List<PayMember> getMemberPayList(String pMid);
	SpaceHost getSpaceHost(int sNo);
	List<HostSpacePay> getHostSpaceListPayList(String hId);
	List<HostSpacePay> getHostSpaceListPayListByRow(Map<String, Object> map);
}
