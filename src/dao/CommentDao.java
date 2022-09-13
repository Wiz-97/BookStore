package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.CommentVo;

public class CommentDao {
	private static CommentDao dao = new CommentDao();
	private CommentDao() { }
	public static CommentDao getInstance() {
		return dao;
	}
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	public int updateCmtCount(int mref) {
		SqlSession mapper = factory.openSession();
		int result = mapper.update("comments.updateCmtCount", mref);
		mapper.commit(); mapper.close();
		return result;
	}
	
	public int delete(int idx) {
		SqlSession mapper = factory.openSession();
		int result = mapper.delete("comments.delete", idx);
		mapper.commit(); mapper.close();
		return result;	
	}
	
	public int insert(CommentVo vo) {
		SqlSession mapper = factory.openSession();
		int result = mapper.insert("comments.insert", vo);
		mapper.commit(); mapper.close();
		return result;
	}
	
	public List<CommentVo> getComments(int mref){
		SqlSession mapper = factory.openSession();
		List<CommentVo> list = mapper.selectList("getComments", mref);
		mapper.close();
		return list;
	}
	
	
	
}
