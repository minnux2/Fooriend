package be.good.model;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDAOImpl implements OrderDAO {
	@Inject
	SqlSession sql;

	@Override
	public List<OrderDTO> ordertoday(String mid) throws Exception {
		return sql.selectList("resMapper.ordertoday", mid);

	}

	@Override
	public List<OrderDTO> orderhistory(String mid) throws Exception {

		return sql.selectList("resMapper.orderhistory", mid);
	}

}
