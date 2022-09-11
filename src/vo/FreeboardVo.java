package vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class FreeboardVo {
	private int f_idx;
	private int mno;
	private String nickName;
	private String f_subject;
	private String f_content;
	private String f_password;
	private int readCount;
	private Timestamp fdate;
	private int commentCount;
	private int f_heart;
}