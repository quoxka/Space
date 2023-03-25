package xyz.itwill.mapper;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Host;
import xyz.itwill.dto.Pay;
import xyz.itwill.dto.SpacePay;

public interface AdminMapper {
	List<Pay> selectadminPayList(Map<String, Object> map);
	List<Pay> selectstatusPayList(Map<String, Object> map);
	int selectnonpayCount();
	Host selectadminHostspace(int sNo);
	int updateadminPay(Pay pay);
	SpacePay selectSpacePay(int pNo);
}
