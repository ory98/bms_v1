package com.spring.bms_v1.admin.member.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring.bms_v1.admin.member.dao.AdminMemberDao;
import com.spring.bms_v1.admin.member.dto.AdminDto;
import com.spring.bms_v1.member.dto.MemberDto;

@Service
public class AdminMemberServiceImpl implements AdminMemberService {
	
	@Autowired
	private AdminMemberDao adminMemberDao;
	
	@Override
	public boolean adminLogin(AdminDto adminDto) throws Exception {
		
		if (adminMemberDao.selectAdminLogin(adminDto) != null) {
			return true;
		}
		
		return false;
		
	}
	
	public List<MemberDto> getMemberList() throws Exception{
		return adminMemberDao.selectListMember();
	}
	
	public void modifyMemberInfo(Map<String,String> memberMap) throws Exception{
		 adminMemberDao.modifyMemberInfo(memberMap);
	}

	
}
