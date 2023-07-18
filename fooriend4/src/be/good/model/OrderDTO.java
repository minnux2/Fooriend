package be.good.model;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderDTO {

	private int ORNO, OMNO, ONO, OFOODPRICE;
	private String OCATEGORY, ORNAME, OFOODNAME, OLOCATION, OLOCDETAIL, OFOODALLERGYS;
	private LocalDate ODATE;

}