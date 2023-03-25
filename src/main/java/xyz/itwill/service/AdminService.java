package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Faq;
import xyz.itwill.dto.Host;
import xyz.itwill.dto.Notice;
import xyz.itwill.dto.Pay;
import xyz.itwill.dto.SpacePay;
import xyz.itwill.exception.BoardNotFoundException;

public interface AdminService {
	//faq
	void addFaq(Faq faq);
	void modifyFaq(Faq faq) throws BoardNotFoundException;
	void removeFaq(int fNo) throws BoardNotFoundException; 
	int getFaqCount();
	Faq getFaq(int fNo) throws BoardNotFoundException;
	List<Faq> getFaqList(Map<String, Object> map);
	List<Faq> getstatusFaqList(Map<String, Object> map);
	List<Faq> getorstatusFaqList(Map<String, Object> map);
	
	//notice
	void addNotice(Notice notice);
	void modifyNotice(Notice notice) throws BoardNotFoundException;
	void removeNotice(int nNo) throws BoardNotFoundException; 
	int getNoticeCount();
	Notice getNotice(int nNo) throws BoardNotFoundException;
	List<Notice> getNoticeList(Map<String, Object> map);
	List<Notice> getstatusNoticeList(Map<String, Object> map);
	List<Notice> getorstatusNoticeList(Map<String, Object> map);
	
	
	//pay
	List<Pay> getadminPayList(Map<String, Object> map);
	List<Pay> getstatusPayList(Map<String, Object> map);
	int getnonpayCount();
	Host getadminHostspace(int sNo);
	int modifyadminPay(Pay pay);
	SpacePay getSpacePay(int pNo);
}