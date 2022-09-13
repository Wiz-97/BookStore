package dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.ReviewVo;

public class ReviewDao {

	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	private static ReviewDao dao = new ReviewDao();
	private ReviewDao() {}
	public static ReviewDao getInstance() {
		return dao;
}
	public int getCount() {
	      SqlSession mapper = factory.openSession();
	      int count = mapper.selectOne("review.getCount");
	      mapper.close();
	      return count;
	   }
	public int insert(ReviewVo vo) {
		SqlSession mapper = factory.openSession();
		int result  = mapper.insert("review.insert", vo);	
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
	 public ReviewVo myreview(int cno) {
	      SqlSession mapper = factory.openSession();
	      ReviewVo vo = mapper.selectOne("review.myReview", cno);
	      mapper.close();
	      return vo;
	   }
	 public ReviewVo bookreviewdetail(int bno) {
	      SqlSession mapper = factory.openSession();
	      ReviewVo vo = mapper.selectOne("review.BookReviewDetail", bno);
	      mapper.close();
	      return vo;
	   }
	 	public ReviewVo getDetails(int rno) {
	      SqlSession mapper = factory.openSession();
	      ReviewVo vo = mapper.selectOne("reviewdetail" ,rno);
	      mapper.close();
	      return vo;
}
	 	public ReviewVo getReview(ReviewVo rno) {
		      SqlSession mapper = factory.openSession();
		      mapper.selectOne("getreview" ,rno);
		      mapper.close();
		      return rno;
	} 	

}
