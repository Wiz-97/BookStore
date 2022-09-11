package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.Member;

public class MemberDao {
private static MemberDao dao = new MemberDao();
private MemberDao() {};
public static MemberDao getInstance() {
	return dao;
}

SqlSessionFactory factory = SqlSessionBean.getSessionFactory();

public Member login(Map<String,String> map) {
	SqlSession mapper = factory.openSession();
	Member vo = mapper.selectOne("mLogin", map);// xml �� ��ġ�°� ���Ƽ� �տ� m ����
	mapper.close();
	return vo;
}


// ȸ�� ��� 
public void insert(Member vo) { 
	SqlSession mapper = factory.openSession();
	mapper.insert("minsert", vo);// xml �� ��ġ�°� ���Ƽ� �տ� m ����
	mapper.commit();
	mapper.close();
}

//ȸ�� ���� ���� 
public int update(Member vo) {
	SqlSession mapper =factory.openSession();
	int result = mapper.update("mupdate", vo);// xml �� ��ġ�°� ���Ƽ� �տ� m ����
	mapper.commit();
	mapper.close();
	return result;
}
// ȸ�� ��ȸ (ȸ����ȣ�� 1�� ��ȸ)
public Member selectOne(int mno) {
	SqlSession mapper =factory.openSession();
	Member result = mapper.selectOne("mselectOne", mno);   
	mapper.close();
	return result;
}
//ȸ�� �˻� (����÷��� �̿��ؼ� �˻��Ҽ��ִ� ��� [��� �����Ҷ� ���])
public List<Member> search(Map<String,String>map){
	SqlSession mapper = factory.openSession();
	List<Member> list = mapper.selectList("searchMember", map);//�̹� dlTsms xml id�� ����
	mapper.close();
	return list;
}

//ȸ�� ��ü��ȸ
public List<Member> selectAll(){
	SqlSession mapper = factory.openSession();
	List<Member> result=mapper.selectList("mselectAll");  
	mapper.close();
	return result;
}
// ȸ�� ����
public int delete(int mno) {
	SqlSession mapper = factory.openSession();
	int result = mapper.delete("mdeleteOne", mno);
	  mapper.commit();
      mapper.close();
      return result;
   }



}






