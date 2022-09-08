package vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class CommentVo {
	private int cno;
	private int mno;
	private int f_idx;
	private String nickName;
	private String c_content;
	private Timestamp c_date;
	private int c_heart;
}
