package xyz.itwill.mapper;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Faq;

public interface FaqMapper {
	int insertfaq(Faq faq);
	int updateFaq(Faq faq);
	int deleteFaq(int fNo);
	int selectFaqCount();
	Faq selectFaq(int fNo);
	List<Faq> selectFaqList(Map<String, Object> map);
	List<Faq> selectstatusFaqList(Map<String, Object> map);
	List<Faq> selectorstatusFaqList(Map<String, Object> map);
}
