package me.light.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import me.light.service.LikeService;

@RestController
public class LikeController {
	
	
	@Autowired
	private LikeService service;
	
	@RequestMapping(value = "/board/updateLike" , method = RequestMethod.POST)
	public int clickLike(int bno, String userId)throws Exception{
		
		int likeCheck = service.likeCheck(bno, userId);
		System.out.println("==============="+likeCheck);
		
		if(likeCheck == 0) {
			//좋아요 처음누름
			service.insertLike(bno, userId);
			service.updateLike(bno, userId);	//게시판테이블 +1
		}else if(likeCheck == 1) {
			System.out.println("||||||||||||||||||||||||||||||||||||"+likeCheck);
            service.cancelLike(bno, userId); //게시판테이블 - 1
            service.deleteLike(bno, userId);
		}
		
		service.updateLikeCheck(bno, userId,likeCheck);
		
		return likeCheck;
}
	
}
