package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.springframework.stereotype.Component;

import model.CommunityVO;


@Component
public class CommunityDAO {
	ResultSet rs;
	Connection conn;
	PreparedStatement pstmt;
	
	public void getCon() {
		try {
			Context initctx=new InitialContext();
			Context envctx=(Context)initctx.lookup("java:comp/env");
			DataSource ds=(DataSource)envctx.lookup("jdbc/Oracle11g");
			conn=ds.getConnection();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				//pstmt.close();
				//conn.close();
				//rs.close();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
	}
	
	//하나의 새로운 게시글이 넘어와서 BD에 저장되는 메서드
		public void insertBoard(CommunityVO CVO) {
			getCon();
			try {
			String sql="insert into community values(community_seq.nextval,?,?,sysdate,0,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, CVO.getWriter());			
			pstmt.setString(2, CVO.getSubject());			
			pstmt.setString(3, CVO.getContent());
			pstmt.executeQuery();
			
			pstmt.close();
			conn.close();
			
			}catch(Exception e) {
			e.printStackTrace();
			}
		}
		
	public Vector<CommunityVO> getAllBoard(int start, int end){
		Vector<CommunityVO> vec=new Vector<>();
		getCon();
		try {
			String sql="select * from(select A.*,Rownum Rnum from(select * from community order by ref desc, re_step asc)A)"+"where Rnum >= ? and Rnum <= ?";
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rs=pstmt.executeQuery();
			while(rs.next()) {
				CommunityVO CVO=new CommunityVO();
				CVO.setNum(rs.getInt(1));
				CVO.setWriter(rs.getString(2));
				CVO.setSubject(rs.getString(3));
				CVO.setReg_date(rs.getDate(4).toString());
				CVO.setReadcount(rs.getInt(5));
				CVO.setContent(rs.getString(6));
				CVO.setReply(rs.getString(7));
				CVO.setReplynum(rs.getInt(8));
				
				vec.add(CVO);				
			}
			pstmt.close();
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return vec;
	}
	//BoardInfo 일때 : 하나의 게시글을 리턴하는 매서드
		public CommunityVO getOneBoard(int num) {
			CommunityVO CVO = new CommunityVO();
			getCon();
			
			try {
				//조횟수 증가 쿼리
				String readsql="update board set readcount=readcount+1 where num=?";
				pstmt=conn.prepareStatement(readsql);
				pstmt.setInt(1, num);
				pstmt.executeUpdate();
				
				//하나의 게시글 정보(BoardBean)을 DB에서 가져와 클래스에 저장
				String sql="select * from board where num=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, num);
				rs=pstmt.executeQuery();
				
				if(rs.next()) {
					CVO.setNum(rs.getInt(1));
					CVO.setWriter(rs.getString(2));					
					CVO.setSubject(rs.getString(3));					
					CVO.setReg_date(rs.getDate(4).toString());
					CVO.setReadcount(rs.getInt(5));
					CVO.setContent(rs.getString(6));
					CVO.setReply(rs.getString(7));
					CVO.setReplynum(rs.getInt(8));
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return CVO;
		}
		
		//Boardupdate용 하나의 게시글을 리턴
		//Boardupdate용 delete시 하나의 게시글을 리턴
		public CommunityVO getOneUpdateBoard(int num) {
			getCon();
			CommunityVO CVO=new CommunityVO();
			try {
				String sql="Select * from board where num=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, num);
				rs=pstmt.executeQuery();
				if(rs.next()) {
					CVO.setNum(rs.getInt(1));
					CVO.setWriter(rs.getString(2));					
					CVO.setSubject(rs.getString(3));					
					CVO.setReg_date(rs.getDate(4).toString());
					CVO.setReadcount(rs.getInt(5));
					CVO.setContent(rs.getString(6));
					CVO.setReply(rs.getString(7));
					CVO.setReplynum(rs.getInt(8));
				}
				pstmt.close();
				conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}return CVO;
		}
		
		public void updateBoard(CommunityVO CVO) {
			getCon();
			try {
				String sql="update board set subject=?, content=? where num=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, CVO.getNum());
				pstmt.setString(2, CVO.getSubject());
				pstmt.setString(3, CVO.getContent());
				pstmt.executeUpdate();
				
				
				pstmt.close();
				conn.close();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		//전체글의 갯수를 리턴하는 매서드
		public int getAllCount() {
			getCon();
			int count=0;
			try {
				String sql="select count(*) from board";
				pstmt=conn.prepareStatement(sql);
				//count = pstmt.getUpdateCount();
				rs=pstmt.executeQuery();
				if(rs.next()) {
					count=rs.getInt(1);
				}
				pstmt.close();
				conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
			return count;
		}
		//제목으로 검색을 하기 위한 매서드
		public CommunityVO selectProductBysubject(String subject) {
			CommunityVO CVO=null;
			getCon();
			
						
			try {
				String sql="select * from community where subject=?";
				pstmt=conn.prepareStatement(sql);
				
				pstmt.setString(1,subject);
				rs=pstmt.executeQuery();
				
				if(rs.next()) {
					CVO=new CommunityVO();
					CVO.setNum(rs.getInt(1));
					CVO.setWriter(rs.getString(2));					
					CVO.setSubject(rs.getString(3));					
					CVO.setReg_date(rs.getDate(4).toString());
					CVO.setReadcount(rs.getInt(5));
					CVO.setContent(rs.getString(6));
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return CVO;
		}
		
		
}
