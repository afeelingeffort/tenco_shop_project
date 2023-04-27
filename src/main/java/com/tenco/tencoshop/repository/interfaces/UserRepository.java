package com.tenco.tencoshop.repository.interfaces;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tenco.tencoshop.dto.JoinResponseDto;
import com.tenco.tencoshop.dto.LoginResponseDto;
import com.tenco.tencoshop.repository.model.Product;
import com.tenco.tencoshop.repository.model.User;

@Mapper
public interface UserRepository {
	
	public User findByPassword(LoginResponseDto loginResponseDto);
	public int insert(JoinResponseDto joinResponseDto);
	public int delete(String username);
	
	// 구매목록 보기
	public List<Product> buyList(Integer userId);

	// 유저 정보 보기
	public User userInfoSelect(Integer userId);
}
