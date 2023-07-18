package be.good.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberDTO {

	private int mno;
	private String mname;
	private String maddress;
	private String memail;
	private String mid;
	private String mpassword;
	private String mphone;
	private String mcardnumber;
	private String mcardname;
	private int mallergy;
	private int point;

}
