package be.good.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Getter
public class BoardDTO {

	// list 게시글번호, 게시글 제목, 맴버 이름, 게시 날짜, 조회수
	// write
	private int qno, qmno;
	private String qtitle, datecreated, qcount, qcontent;

	// reply

	private int rno, rqno, rmno;
	private String rcontent;

	private Date replydate;

	private int mno;
	private String mname;
	private String maddress;
	private String memail;
	private String mid;
	private String mpassword;
	private String mphone;
	private String mcardnumber;
	private String mcardname;
	private int mallergypeanut;
	private int mallergypeach;
	private int mallergydairy;
	private int mallergyseafood;
	private int mallergyshellfish;
	private int point;
}
