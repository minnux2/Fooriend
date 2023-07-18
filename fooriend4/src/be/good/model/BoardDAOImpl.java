package be.good.model;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSession sqlsession;

	// boardloginlist
	@Override
	public List<BoardDTO> getBoardList(HashMap map) {
		BoardDAO boardDAO = sqlsession.getMapper(BoardDAO.class);
		return boardDAO.getBoardList(map);
	}

	@Override
	public BoardDTO getBoard(int Qno) {
		BoardDAO boardDAO = sqlsession.getMapper(BoardDAO.class);
		return boardDAO.getBoard(Qno);
	}

	@Override
	public void insertBoard(BoardDTO dto) {
		BoardDAO boardDAO = sqlsession.getMapper(BoardDAO.class);
		boardDAO.insertBoard(dto);
	}

	@Override
	public int deleteBoard(BoardDTO dto) {
		BoardDAO boardDAO = sqlsession.getMapper(BoardDAO.class);
		return boardDAO.deleteBoard(dto);
	}

	@Override
	public int updateBoard(BoardDTO dto) {
		BoardDAO boardDAO = sqlsession.getMapper(BoardDAO.class);
		return boardDAO.updateBoard(dto);
	}

	@Override
	public void updateHit(int Qno) {
		BoardDAO boardDAO = sqlsession.getMapper(BoardDAO.class);
		boardDAO.updateHit(Qno);
	}

	@Override
	public int getBoardCount() {
		BoardDAO boardDAO = sqlsession.getMapper(BoardDAO.class);
		return boardDAO.getBoardCount();
	}

	// reply

	@Override
	public List<BoardDTO> getReplyList(int qno) {

		BoardDAO boardDAO = sqlsession.getMapper(BoardDAO.class);

		return boardDAO.getReplyList(qno);
	}

	@Override
	public void insertReply(BoardDTO dto) {
		BoardDAO boardDAO = sqlsession.getMapper(BoardDAO.class);
		boardDAO.insertReply(dto);
	}

	@Override
	public List<MemberDTO> bring(MemberDTO dto) {
		BoardDAO boardDAO = sqlsession.getMapper(BoardDAO.class);
		return boardDAO.bring(dto);
	}

	@Override
	public int deleteReply(BoardDTO dto) {
		BoardDAO boardDAO = sqlsession.getMapper(BoardDAO.class);
		return boardDAO.deleteReply(dto);
	}

	@Override
	public Object getinfo(BoardDTO dto) {
		BoardDAO boardDAO = sqlsession.getMapper(BoardDAO.class);
		return boardDAO.getinfo(dto);

	}

}
