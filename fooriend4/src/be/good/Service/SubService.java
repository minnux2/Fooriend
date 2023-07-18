package be.good.Service;

import java.util.List;

import javax.inject.Inject;


import org.springframework.stereotype.Service;

import be.good.model.SubDAO;
import be.good.model.SubDTO;

@Service // 빈 생성
public class SubService {
	

	@Inject
	SubDAO dao;
 // SqlSessionTemplate

	// 입력받은 모든 정보 저장
	public void insertSub(SubDTO dto) {
	
		dao.insertSub(dto);
	}

	// 요일 저장
	public void insertDay(SubDTO dto) {
		
		dao.insertDay(dto);

	}
//구독내역조회
	public List<SubDTO> sublist(String mid) throws Exception {

		return dao.sublist(mid);
	}
}
