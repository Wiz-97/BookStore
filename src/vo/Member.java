package vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor


public class Member {
	private int mno;
	private String m_name;
	private String m_address;
	private String nickName;
	private String m_email;
	private String m_tel;
	private String m_password;
	
	
	@Override
	public String toString() {
		return m_name + "��";
	}
}
