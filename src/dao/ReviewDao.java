package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.ReviewVo;

public class ReviewDao {
	private static ReviewDao dao = new ReviewDao();

	private ReviewDao() { }

	public static ReviewDao getInstance() {
		return dao;
	}

	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	public int delete(int idx) {
		SqlSession mapper = factory.openSession();
		int result = mapper.delete("Review.delete", idx);
		mapper.commit(); mapper.close();
		return result;	
	}
	
	public int insert(ReviewVo vo) {
		SqlSession mapper = factory.openSession();
		int result = mapper.insert("Review.insert", vo);
		mapper.commit(); mapper.close();
		return result;
	}
	
	public List<ReviewVo> getReview(int mno){
		SqlSession mapper = factory.openSession();
		List<ReviewVo> list = mapper.selectList("getReview", mno);
		mapper.close();
		return list;
	}
}
