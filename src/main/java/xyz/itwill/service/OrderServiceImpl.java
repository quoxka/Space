package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dao.PayDAO;
import xyz.itwill.dto.HostSpacePay;
import xyz.itwill.dto.Pay;
import xyz.itwill.dto.PayMember;
import xyz.itwill.dto.SpaceHost;
import xyz.itwill.exception.PayNotFoundException;

@Service
@RequiredArgsConstructor
public class OrderServiceImpl implements OrderService{

	private final PayDAO payDAO;
	
	@Override
	public int addPay(Pay pay) {
		return payDAO.insertPay(pay);
	}

	@Override
	public int modifyPay(Pay pay) throws PayNotFoundException {
		if(payDAO.selectPay(pay.getPNo())==null) {
			throw new PayNotFoundException("해당 결제정보가 존재하지 않습니다.");
		}
		return payDAO.updatePay(pay);
	}

	@Override
	public Pay getPay(int pNo) throws PayNotFoundException {
		if(payDAO.selectPay(pNo)==null) {
			throw new PayNotFoundException("해당 결제정보가 존재하지 않습니다.");
		}
		return payDAO.selectPay(pNo);
	}

	@Override
	public List<Pay> getPayList(Map<String, Object> map) {
		return payDAO.selectPayList(map);
	}

	@Override
	public List<PayMember> getMemberPayList(String pMid) {
		return payDAO.selectMemberPayList(pMid);
	}

	@Override
	public SpaceHost getSpaceHost(int sNo) {
		return payDAO.selectSpaceHost(sNo);
	}

	@Override
	public int getPayCount() {
		return payDAO.selectPayCount();
	}

	@Override
	public int getHostPayCount(String hId) {
		return payDAO.selectHostPayCount(hId);
	}

	@Override
	public List<HostSpacePay> getHostSpaceListPayList(String hId) {
		return payDAO.selectHostSpaceListPayList(hId);
	}

	@Override
	public List<HostSpacePay> getHostSpaceListPayListByRow(Map<String, Object> map) {
		return payDAO.selectHostSpaceListPayListByRow(map);
	}

}
