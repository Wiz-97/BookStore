package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.BookListVo;

public class BookListDao {
	
	SqlSessionFactory factory =  SqlSessionBean.getSessionFactory();
	private static BookListDao dao = new BookListDao();
	
	private BookListDao() { }
	public static BookListDao getInstance() {
		return dao;
	}
	
	public List<BookListVo> select(String cgno) {
		SqlSession mapper = factory.openSession();
		List<BookListVo> result = mapper.selectList("booklist.select", cgno);
		mapper.close();
		return result;
	}
	
	public BookListVo getDetail(int bno){
		SqlSession mapper = factory.openSession();
		BookListVo result = mapper.selectOne("booklist.detail", bno);
		mapper.close();
		return result;
	}
	
	public List<BookListVo> search(Map<String,String>map){
		SqlSession mapper = factory.openSession();
		List<BookListVo> list = mapper.selectList("booklist.search", map);
		mapper.close();
		return list;
	}
	
	public void insert(BookListVo vo) {
		SqlSession mapper = factory.openSession();
		mapper.insert("booklist.insert", vo);
		mapper.commit();
		mapper.close();
	}
	
	public int delete(int bno) {
		SqlSession mapper = factory.openSession();
		int result = mapper.delete("booklist.delete", bno);
		mapper.commit();
		mapper.close();
		return result;
	}
	
	public int update(BookListVo vo) {
		SqlSession mapper = factory.openSession();
		int result = mapper.update("booklist.update", vo);
		mapper.commit();
		mapper.close();
		return result;
	}
}
