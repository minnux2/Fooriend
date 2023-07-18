package be.good.model;

import java.util.List;
import java.util.Map;

public interface OrderDAO {
	
	public List<OrderDTO> ordertoday(String mid) throws Exception;

	public List<OrderDTO> orderhistory(String mid) throws Exception;

}
