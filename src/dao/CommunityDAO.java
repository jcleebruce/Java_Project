package dao;

import java.util.List;

import model.CommunityVO;

public interface CommunityDAO {
	//하나의 새로운 게시글이 넘어와서 BD에 저장되는 메서드, 글쓰기
	public void insertBoard(CommunityVO CVO) throws Exception;
	
	//하나의 게시글을 리턴하는 매서드
	public CommunityVO getOneBoard(int num) throws Exception;
	
	//Boardupdate용 하나의 게시글을 리턴, 글수정
	//Boardupdate용 delete시 하나의 게시글을 리턴, 글삭제
	public CommunityVO getOneUpdateBoard(int num) throws Exception;
	
	public void updateBoard(CommunityVO CVO) throws Exception;
	
	//전체글의 갯수를 리턴하는 매서드
	//public int getAllCount();
	public int getAllCount(String search_option, String keyword) throws Exception;
	
	//게시글 조회
    public CommunityVO read(int num) throws Exception;
	
	
	//검색을 하기 위한 매서드
	public CommunityVO selectProductBysubject(String subject);
	
	
	 //목록 (페이지 나누기, 검색 기능 포함)
    //매개변수는 시작 레코드번호, 끝번호, 옵션과 키워드가 들어간다)
	public List<CommunityVO> listAll(String search_option, String keyword,int start, int end) throws Exception;
	
	//조회수 증가 처리
    public void increatereadcount(int num) throws Exception;
    
    
}
