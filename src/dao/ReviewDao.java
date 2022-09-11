package dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import vo.ReviewVo;
import mybatis.SqlSessionBean;

public class ReviewDao {

	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	private static ReviewDao dao = new ReviewDao();
	private ReviewDao() {}
	public static ReviewDao getInstance() {
		return dao;
}
	public int getCount() {
	      SqlSession mapper = factory.openSession();
	      int count = mapper.selectOne("getCount");
	      mapper.close();
	      return count;
	   }
	public int insert(ReviewVo vo) {
		SqlSession mapper = factory.openSession();
		int result  = mapper.insert("insert", vo);	
		mapper.commit();     
		mapper.close();
		return result;

}
	public int delete (Map<String, Object>map) {
		   SqlSession mapper = factory.openSession();
		   int result = mapper.delete("review.delete",map);
		   mapper.commit();
		   mapper.close();
		   return result;
	   }
	
	public void update(ReviewVo vo) {
		   SqlSession mapper = factory.openSession();
		   mapper.update("review.update", vo);
		   mapper.commit();
		   mapper.close();
		
	}
	
}
