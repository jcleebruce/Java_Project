package dao;

import org.springframework.stereotype.Repository;

@Repository
public class CommunityDAOImpl implements CommunityDAO{
	
	//@Inject 의존성 주입
	//SqlSession sqlSession
	
	//게시물 목록 리턴
	@Override
	public List<CommunityVO> listAll(String search_option, String keyword,int start, int end) throws Exception{
		return sqlSession.selectList("board.listAll");
	}
	
	
}
