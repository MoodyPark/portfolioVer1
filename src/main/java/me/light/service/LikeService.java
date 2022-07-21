package me.light.service;

public interface LikeService {
	void updateLike(int bno,String userId);
	void cancelLike(int bno,String userId);
	int likeCheck(int bno,String userId);
	void updateLikeCheck(int bno,String userId,int likeCheck);
	void insertLike(int bno,String userId);
	void deleteLike(int bno,String userId);
}
