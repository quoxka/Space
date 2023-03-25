package xyz.itwill.dto;

import java.util.List;

import lombok.Data;

@Data
public class PayMember {
	private List<Pay> payList;
	private Member member;
}

