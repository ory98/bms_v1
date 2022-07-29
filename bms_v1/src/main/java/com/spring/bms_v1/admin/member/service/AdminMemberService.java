package com.spring.bms_v1.admin.member.service;

import java.util.List;
import java.util.Map;

import com.spring.bms_v1.admin.member.dto.AdminDto;
import com.spring.bms_v1.member.dto.MemberDto;

public interface AdminMemberService {
	
	public boolean adminLogin(AdminDto adminDto) throws Exception;
	public List<MemberDto> getMemberList() throws Exception;
	public void modifyMemberInfo(Map<String,String> memberMap) throws Exception;
	
}
