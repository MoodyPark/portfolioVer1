package me.light.model;

import java.time.LocalDateTime;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Board {
	private Long bno; 
	private String title;  
	private String content;  
	private String writer;  
	private int replyCnt;
	private Long viewCount;
	private Long likeCount;
	private Long likeHit;
	
	private LocalDateTime regDate; 
	private LocalDateTime updateDate;
	
	private List<BoardAttachVO> attachList;

}
