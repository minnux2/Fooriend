package be.good.model;


import java.time.LocalDate;
import java.time.LocalTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SubDTO {

	private int subno, submno;
	private String subscribing, subday, subloc, sublocdetail,subcate;
	private LocalDate substart, subend;
	private LocalTime deliverytime;

}