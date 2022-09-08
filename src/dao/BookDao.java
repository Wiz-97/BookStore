package dao;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import mybatis.SqlSessionBean;

import vo.BookVo;



public class BookDao {
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	private static BookDao dao = new BookDao();
	private BookDao() {}
	public static BookDao getInstance() {
		return dao;
		
	}
	public List<BookVo> search(Map<String,String>map){
		SqlSession mapper = factory.openSession();
		List<BookVo> list = mapper.selectList("search", map);
		mapper.close();
		return list;
	}
	public void insert(BookDao g) {
		SqlSession mapper = factory.openSession();
		mapper.insert("bookgallery.insert", g);
		mapper.commit();
		mapper.close();
	}
}
