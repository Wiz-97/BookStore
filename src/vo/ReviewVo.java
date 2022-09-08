package vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class ReviewVo {
	private int rno;
	private int mno;
	private int bno;
	private String nickName;
	private String r_content;
	private Timestamp r_date;
	private int r_heart;
}
