package be.good.model;

import java.util.HashMap;
import java.util.List;

public interface BoardDAO {

	// 게시판
	// 쓰기, 리스트, 읽기, 수정, 삭제, 조회수증가, 글의수

	public List<BoardDTO> getBoardList(HashMap map);// 리스트

	public BoardDTO getBoard(int Qno);// 읽기

	public void insertBoard(BoardDTO dto); // 쓰기

	public Object getinfo(BoardDTO dto); // 정보뽑기

	public int deleteBoard(BoardDTO dto); // 삭제

	public int updateBoard(BoardDTO dto); // 수정

	public void updateHit(int Qno); // 조회수 증가

	public int getBoardCount(); // 글의수 세기

	// ----------------------------------------------
	// 댓글

	public int deleteReply(BoardDTO dto);

	public List<BoardDTO> getReplyList(int qno);

	public void insertReply(BoardDTO dto);

	public List<MemberDTO> bring(MemberDTO dto);
}