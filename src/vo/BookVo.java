package vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class BookVo {
	private int bno;
	private String title;
	private String b_idx;
	private int b_price;
	private String genre;
	private String b_writer;
	private String publisher;
	private String b_img;

	
}
