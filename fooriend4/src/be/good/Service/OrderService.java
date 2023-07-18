package be.good.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import be.good.model.OrderDAO;
import be.good.model.OrderDTO;

@Service
public class OrderService {
	@Inject
	OrderDAO dao;
	
	// 주문 만들기(레스토랑 랜덤 뽑기)
	public List<OrderDTO> ordertoday(String mid) throws Exception {

		return dao.ordertoday(mid);
	}
	
	public List<OrderDTO> orderhistory(String mid) throws Exception {

		return dao.orderhistory(mid);
	}

}
