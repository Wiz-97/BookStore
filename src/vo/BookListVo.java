package vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BookListVo {
	private int bno;
	private String title;
	private String b_date;
	private int b_price;
	private String cgno;
	private String b_writer;
	private String publisher;
	private String b_img;
}
