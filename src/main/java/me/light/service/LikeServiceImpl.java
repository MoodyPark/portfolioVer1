package me.light.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.light.mapper.LikeMapper;

@Service
public class LikeServiceImpl implements LikeService {

	@Autowired
	LikeMapper mapper;
	
	
	@Override
	public void updateLike(int bno, String userId) {
		mapper.updateLike(bno, userId);
	}

	@Override
	public int likeCheck(int bno, String userId) {
		return mapper.likeCheck(bno, userId);
	}

	@Override
	public void updateLikeCheck(int bno,String userId,int likeCheck){
		mapper.updateLikeCheck(bno, userId,likeCheck);
	}

	@Override
	public void cancelLike(int bno, String userId) {
		mapper.cancelLike(bno, userId);
	}

	@Override
	public void insertLike(int bno, String userId) {
		mapper.insertLike(bno, userId);
	}

	@Override
	public void deleteLike(int bno, String userId) {
		mapper.deleteLike(bno, userId);
	}

}
