package vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class ReviewVo {
	private int rno;
	private int mno;
	private int bno;
	private String nickName;
	private String r_content;
	private String r_date;
	private int r_heart;
	;

}
