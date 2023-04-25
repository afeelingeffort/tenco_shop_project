package com.tenco.tencoshop.repository.interfaces;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tenco.tencoshop.dto.ProductRequestDto;
import com.tenco.tencoshop.repository.model.User;

@Mapper
public interface UserRepository {
	// 구매목록 보기
	public List<ProductRequestDto> buyList(Integer userId);
	
	// 구매목록 조회하기 
	public List<ProductRequestDto> searchBuyList(ProductRequestDto productRequestDto);
	
	// 유저 정보 보기
	public User userInfoSelect(Integer userId);
	
	// 유저 정보 수정하기
	public int userInfoUpdate(User user);
}
