package dao;



import java.util.List;

import model.CommunityVO;

public interface CommunityDAO {
	public void write(CommunityVO CVO) throws Exception; //글쓰기
	public void update(CommunityVO CVO) throws Exception; //글수정
	public void delete(int num) throws Exception; //글수정
    
	 //목록 (페이지 나누기, 검색 기능 포함)
    //매개변수는 시작 레코드번호, 끝번호, 옵션과 키워드가 들어간다)
	
	public List<CommunityVO> listAll(String search_option, String keyword,int start, int end) throws Exception;
	
	 //조회수 증가 처리
    public void increateViewcnt(int num) throws Exception;
    
    //레코드 갯수 계산
    public int countArticle(String search_option, String keyword) throws Exception;
    
    //레코드 조회
    public CommunityVO read(int num) throws Exception;
}
