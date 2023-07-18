package be.good.model;

import java.util.List;

public interface SubDAO {

	public void insertSub(SubDTO dto);

	public void insertDay(SubDTO dto);

	public List<SubDTO> sublist(String str);
}
