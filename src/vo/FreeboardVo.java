package vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class FreeboardVo {
	private int f_idx;
	private String nickName;
	private String password;
	private String f_subject;
	private String f_content;
	private int readCount;
	private Timestamp fdate;
	private int commentCount;
}