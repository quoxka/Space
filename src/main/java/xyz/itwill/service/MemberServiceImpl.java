package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang.RandomStringUtils;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import xyz.itwill.dao.MemberDAO;
import xyz.itwill.dto.Heart;
import xyz.itwill.dto.Member;
import xyz.itwill.dto.Pay;
import xyz.itwill.dto.Question;
import xyz.itwill.dto.Review;
import xyz.itwill.exception.ExistsMemberException;
import xyz.itwill.exception.HeartNotFoundException;
import xyz.itwill.exception.LoginAuthFailException;
import xyz.itwill.exception.MemberNotFoundException;
import xyz.itwill.exception.SpaceNotFoundException;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService{
	
	private final MemberDAO memberDAO;
	
	@Transactional
	@Override
	public void addMember(Member member) throws ExistsMemberException {
		//전달받은 회원정보의 아이디가 이미 있을 경우 예외전달
		if(memberDAO.selectMember(member.getMId())!=null){
			throw new ExistsMemberException("이미 사용 중인 게스트 아이디를 입력 하였습니다.", member);
		}
		//아니라면 암호화된 비밀번호로 변경후
		member.setMPw(BCrypt.hashpw(member.getMPw(),BCrypt.gensalt()));
		//삽입처리
		memberDAO.insertMember(member);
	}

	@Transactional
	@Override
	public void modifyMember(Member member) throws MemberNotFoundException {
		//전달받은 회원정보의 아이디가 없을 경우 예외전달
		if(memberDAO.selectMember(member.getMId())==null) {
			throw new MemberNotFoundException("게스트 아이디의 회원정보가 존재하지 않습니다.");
		}
		//전달받은 회원정보의 비밀번호가 존재할 경우 암호화된 비밀번호로 필드값 변경
		if(member.getMPw()!=null && !member.getMPw().equals("")) {
			member.setMPw(BCrypt.hashpw(member.getMPw(),BCrypt.gensalt()));
		}
		//전달받은 회원정보의 이름이 존재할 경우 필드값 변경
		if(member.getMName()!=null && !member.getMName().equals("")) {
			member.setMName(member.getMName());
		}
		//전달받은 회원정보의 이메일이 존재할 경우 필드값 변경
		if(member.getMEmail()!=null && !member.getMEmail().equals("")) {
			member.setMEmail(member.getMEmail());
		}
		//전달받은 회원정보의 전화번호가 존재할 경우 필드값 변경
		if(member.getMPhone()!=null && !member.getMPhone().equals("")) {
			member.setMPhone(member.getMPhone());
		}
		//전달받은 회원정보의 상태가 0(탈퇴회원)이거나 1(일반회원)일 경우 필드값 변경 
		if(member.getMStatus()==0 || member.getMStatus()==1) {
			member.setMStatus(member.getMStatus());
		}
		//변경처리
		memberDAO.updateMember(member); 
	}
	
	@Override
	public Member getMember(String mId) throws MemberNotFoundException {
		//전달받은 아이디로 기존 회원정보를 검색하여 검색결과를 반환받아 저장
		Member member=memberDAO.selectMember(mId);
		//검색된 회원정보의 아이디가 없을 경우 예외전달
		if(member==null) {
			throw new MemberNotFoundException("게스트 아이디의 회원정보가 존재하지 않습니다.");
		}
		return member;
	}

	@Override
	public Member loginAuth(Member member) throws LoginAuthFailException {
		//전달받은 회원정보의 아이디로 기존 회원정보를 검색하여 검색결과를 반환받아 저장
		Member loginMember=memberDAO.selectMember(member.getMId());
		
		//검색된 회원정보가 없는 경우 - 아이디 인증 실패
		if(loginMember==null || loginMember.getMId().equals("")) {
			throw new LoginAuthFailException("게스트 아이디의 회원정보가 존재하지 않습니다.", member.getMId());
		}
		//전달받은 비밀번호와 검색된 회원정보의 비밀번호를 비교하여 같지 않은 경우 - 비밀번호 인증 실패
		if(!BCrypt.checkpw(member.getMPw(), loginMember.getMPw())) {
			throw new LoginAuthFailException("게스트의 비밀번호가 맞지 않습니다.", member.getMId());
		}
		return loginMember;
	}

		@Override
		public void pwModifyMember(Member member) throws MemberNotFoundException {
			
			 // 랜덤한 10자리 비밀번호 생성
		    String randomPassword = RandomStringUtils.randomAlphanumeric(10);
			//아니라면 암호화된 비밀번호로 변경후
			member.setMPw(randomPassword);
			//삽입처리
			memberDAO.updatePassword(member);
			
		}
		
		@Override
		public void pwModifyMember2(Member member) throws MemberNotFoundException {
			
			
			//암호화된 비밀번호로 변경후
			member.setMPw(BCrypt.hashpw(member.getMPw(),BCrypt.gensalt()));
			//삽입처리
			memberDAO.updateMember(member);
			
		}

		@Override
		public Member getEmailMember(String mEmail) throws MemberNotFoundException {
		//전달받은 아이디로 기존 회원정보를 검색하여 검색결과를 반환받아 저장
				Member member=memberDAO.selectEmailMember(mEmail);
				//검색된 회원정보의 아이디가 없을 경우 예외전달
				if(member==null) {
					throw new MemberNotFoundException("게스트 아이디의 회원정보가 존재하지 않습니다.");
				}
				return member;
		}

		@Transactional
		@Override
		public List<Heart> getHeartList(String hMid) {
			return memberDAO.selectHeartList(hMid);
		}
		
		
		@Transactional
		@Override
		public List<Heart> getHeartListInfo(int hSid) throws SpaceNotFoundException {
			//전달받은 공간번호로 기존 공간번호의 공간정보를 검색하여 검색결과가 없는 경우 인위적 예외 발생 
			if(memberDAO.selectHeartListInfo(hSid)==null) {
				throw new SpaceNotFoundException("공간번호의 공간정보가 존재하지 않습니다.");
			}
			return memberDAO.selectHeartListInfo(hSid);
		}

		@Transactional
		@Override
		public void deleteMember(String mId) throws MemberNotFoundException {
			//전달받은 아이디로 기존 회원정보를 검색하여 검색결과를 반환받아 저장
			Member member=memberDAO.selectMember(mId);
			//검색된 회원정보의 아이디가 없을 경우 예외전달
			if(member==null) {
				throw new MemberNotFoundException("게스트 아이디의 회원정보가 존재하지 않습니다.");
			}
		}

		@Transactional
		@Override
		public int getHeartCount(String hMid) {
			return memberDAO.selectHeartCount(hMid);
		}

		@Transactional
		@Override
		public List<Heart> getHeartPaging(Map<String, Object> map) {
			return memberDAO.selectHeartPaging(map);
		}

		@Transactional
		@Override
		public void addHeart(Heart heart) {
			
			memberDAO.insertHeart(heart);
		}


	
		
}
