package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import vo.FreeboardVo;
import mybatis.SqlSessionBean;

public class FreeboardDao {
	private static FreeboardDao dao = new FreeboardDao();
	private FreeboardDao() {}
	public static FreeboardDao getInstance() {
		return dao;
	}
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	public int getCount() {
		SqlSession mapper = factory.openSession();
		int count=mapper.selectOne("getCount");
		mapper.close();
		return count;
	}
	
	public List<FreeboardVo> getPageList(Map<String,Integer> map){
		SqlSession mapper = factory.openSession();
		List<FreeboardVo> list = mapper.selectList("getPageList",map);
		mapper.close();
		return list;
	}
	
	public FreeboardVo getDetail(int idx){
		SqlSession mapper = factory.openSession();
		FreeboardVo vo = mapper.selectOne("Freeboard.detail",idx);
		mapper.close();
		return vo;
	}
	
	public void insert(FreeboardVo vo) {
		SqlSession mapper = factory.openSession();
		mapper.insert("Freeboard.insert",vo );  
		mapper.commit();
		mapper.close();
	}
	
	public void readcountUp(int idx) {
		SqlSession mapper = factory.openSession();
		mapper.update("readcountUp", idx);
		mapper.commit();
		mapper.close();
	}
	
	public int delete (Map<String,Object> map) {
		SqlSession mapper = factory.openSession();
		int result = mapper.delete("Freeboard.delete",map);
		mapper.commit();
		mapper.close();
		return result;
	}
	
	public void update(FreeboardVo vo) {
		SqlSession mapper = factory.openSession();
		mapper.update("Freeboard.update", vo);
		mapper.commit();
		mapper.close();
	}
}