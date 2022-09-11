package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.CategoryVo;

public class CategoryDao {

	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	private static CategoryDao dao = new CategoryDao();
	
	private CategoryDao() { }
	public static CategoryDao getCategory() {
		return dao;
	}
	
	public List<CategoryVo> viewCate() {
		SqlSession mapper = factory.openSession();
		List<CategoryVo> result = mapper.selectList("category.select");
		mapper.close();
		return result;
	}
	
	public void insert(CategoryVo vo) {
		SqlSession mapper = factory.openSession();
		mapper.insert("category.insert", vo);
		mapper.commit();
		mapper.close();
	}
	
	public int delete(String cgno) {
		SqlSession mapper = factory.openSession();
		int result = mapper.delete("category.delete", cgno);
		mapper.commit();
		mapper.close();
		return result;
	}
	
	public int update(CategoryVo vo) {
		SqlSession mapper = factory.openSession();
		int result = mapper.update("category.update", vo);
		mapper.commit();
		mapper.close();
		return result;
	}
}
