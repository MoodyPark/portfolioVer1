package me.light.mapper;

import org.apache.ibatis.annotations.Param;

public interface LikeMapper {
	
	public void updateLike(@Param("bno") int bno, @Param("userId") String userId);
	public void cancelLike(@Param("bno")int bno, @Param("userId")String userId);
	public int likeCheck(@Param("bno")int bno, @Param("userId") String userId);
	public void updateLikeCheck(@Param("bno")int bno, @Param("userId")String userId,@Param("likeCheck") int likeCheck);
	void insertLike(@Param("bno")int bno, @Param("userId")String userId);
	void deleteLike(@Param("bno")int bno, @Param("userId")String userId);
}
