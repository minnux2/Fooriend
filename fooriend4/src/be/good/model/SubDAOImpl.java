package be.good.model;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class SubDAOImpl implements SubDAO {

	@Inject
	SqlSession sql;

	@Override
	public void insertSub(SubDTO dto) {
		sql.insert("subMapper.insertSub", dto);
	}

	@Override
	public void insertDay(SubDTO dto) {
		sql.insert("subMapper.insertDay", dto);
	}

	@Override
	public List<SubDTO> sublist(String str) {
		return sql.selectList("subMapper.sublist", str);
	}

}
