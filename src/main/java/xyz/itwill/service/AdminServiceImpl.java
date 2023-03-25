package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dao.AdminDAO;
import xyz.itwill.dao.FaqDAO;
import xyz.itwill.dao.NoticeDAO;
import xyz.itwill.dao.PayDAO;
import xyz.itwill.dto.Faq;
import xyz.itwill.dto.Host;
import xyz.itwill.dto.Notice;
import xyz.itwill.dto.Pay;
import xyz.itwill.dto.SpacePay;
import xyz.itwill.exception.BoardNotFoundException;

@Service
@RequiredArgsConstructor
public class AdminServiceImpl implements AdminService {
	private final FaqDAO faqDAO;
	private final NoticeDAO noticeDAO;
	private final AdminDAO adminDAO;
	private final PayDAO payDAO;
	
	//faq
	@Transactional
	@Override
	public void addFaq(Faq faq) {
		faqDAO.insertFaq(faq);
	}

	@Transactional
	@Override
	public void modifyFaq(Faq faq) throws BoardNotFoundException {
		if(faqDAO.selectFaq(faq.getFNo())==null) {
		throw new BoardNotFoundException("해당 게시글을 찾을 수 없습니다.");
		}
		
		faqDAO.updateFaq(faq);
	}

	@Transactional
	@Override
	public void removeFaq(int fNo) throws BoardNotFoundException  {
		if(faqDAO.selectFaq(fNo)==null) {
		throw new BoardNotFoundException("해당 게시글을 찾을 수 없습니다.");
		}
		faqDAO.deleteFaq(fNo);
	}

	@Override
	public int getFaqCount() {
		return faqDAO.selectFaqCount();
	}
	

	@Override
	public Faq getFaq(int fNo) throws BoardNotFoundException {
		if(faqDAO.selectFaq(fNo)==null) {
		throw new BoardNotFoundException("해당 게시글을 찾을 수 없습니다.");
		}
		return faqDAO.selectFaq(fNo);
	}

	
	@Override
	public List<Faq> getFaqList(Map<String, Object> map) {
		return faqDAO.selectFaqList(map);
	}

	
	
	
	//notice
	@Transactional
	@Override
	public void addNotice(Notice notice) {
		noticeDAO.insertNotice(notice);
	}
	
	@Transactional
	@Override
	public void modifyNotice(Notice notice) throws BoardNotFoundException {
		if(noticeDAO.selectNotice(notice.getNno()) ==null) {
		throw new BoardNotFoundException("해당 게시글을 찾을 수 없습니다.");
		}
		noticeDAO.updateNotice(notice);
	}
	
	@Transactional
	@Override
	public void removeNotice(int nNo) throws BoardNotFoundException {
		if(noticeDAO.selectNotice(nNo)==null) {
		throw new BoardNotFoundException("해당 게시글을 찾을 수 없습니다.");
		}
		noticeDAO.deleteNotice(nNo);
	}

	@Override
	public int getNoticeCount() {
		return noticeDAO.selectNoticeCount();
	}
	

	@Override
	public Notice getNotice(int nNo) throws BoardNotFoundException {
		if(noticeDAO.selectNotice(nNo)==null) {
		throw new BoardNotFoundException("해당 게시글을 찾을 수 없습니다.");
		}
		return noticeDAO.selectNotice(nNo);
	}

	@Override
	public List<Notice> getNoticeList(Map<String, Object> map) {
		return noticeDAO.selectNoticeList(map);
	}

	@Override
	public List<Faq> getstatusFaqList(Map<String, Object> map) {
		return faqDAO.selectstatusFaqList(map);
	}

	@Override
	public List<Notice> getstatusNoticeList(Map<String, Object> map) {
		return noticeDAO.selectstatusNoticeList(map);
	}

	@Override
	public List<Faq> getorstatusFaqList(Map<String, Object> map) {
		return faqDAO.selectorstatusFaqList(map);
	}

	@Override
	public List<Notice> getorstatusNoticeList(Map<String, Object> map) {
		return noticeDAO.selectorstatusNoticeList(map);
	}

	@Override
	public List<Pay> getadminPayList(Map<String, Object> map) {
		return adminDAO.selectadminPayList(map);
	}

	@Override
	public List<Pay> getstatusPayList(Map<String, Object> map) {
		return adminDAO.selectstatusPayList(map);
	}

	@Override
	public int getnonpayCount() {
		return adminDAO.selectnonpayCount();
	}

	@Override
	public Host getadminHostspace(int sNo) {
		return adminDAO.selectadminHostspace(sNo);
	}

	@Override
	public int modifyadminPay(Pay pay)  {
		return adminDAO.updateadminPay(pay);
	}

	@Override
	public SpacePay getSpacePay(int pNo) {
		return adminDAO.selectSpacePay(pNo);
	}








	
	
}
