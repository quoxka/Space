package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Notice;

public interface NoticeDAO {
	int insertNotice(Notice notice);
	int updateNotice(Notice notice);
	int deleteNotice(int nNo);
	int selectNoticeCount();
	Notice selectNotice(int nNo);
	List<Notice> selectNoticeList(Map<String, Object> map);
	List<Notice> selectstatusNoticeList(Map<String, Object> map);
	List<Notice> selectorstatusNoticeList(Map<String, Object> map);
}