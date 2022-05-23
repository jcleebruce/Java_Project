package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import Board.BoardBean;

public class BoardDAO {
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
		public void insertBoard(BoardBean bean) {
			getCon();
			try {
			String sql="insert into board values(board_seq.nextval,?,?,sysdate,0,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, bean.getWriter());			
			pstmt.setString(2, bean.getSubject());			
			pstmt.setString(3, bean.getContent());
			pstmt.executeQuery();
			
			pstmt.close();
			conn.close();
			
			}catch(Exception e) {
			e.printStackTrace();
			}
		}
		
	public Vector<BoardBean> getAllBoard(int start, int end){
		Vector<BoardBean> vec=new Vector<>();
		getCon();
		try {
			String sql="select * from(select A.*,Rownum Rnum from(select * from board order by ref desc, re_step asc)A)"+"where Rnum >= ? and Rnum <= ?";
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rs=pstmt.executeQuery();
			while(rs.next()) {
				BoardBean bean=new BoardBean();
				bean.setNum(rs.getInt(1));
				bean.setWriter(rs.getString(2));
				bean.setSubject(rs.getString(3));
				bean.setReg_date(rs.getDate(4).toString());
				bean.setReadcount(rs.getInt(5));
				bean.setContent(rs.getString(6));
				vec.add(bean);				
			}
			pstmt.close();
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return vec;
	}
	//BoardInfo 일때 : 하나의 게시글을 리턴하는 매서드
		public BoardBean getOneBoard(int num) {
			BoardBean bean = new BoardBean();
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
					bean.setNum(rs.getInt(1));
					bean.setWriter(rs.getString(2));					
					bean.setSubject(rs.getString(3));					
					bean.setReg_date(rs.getDate(4).toString());
					bean.setReadcount(rs.getInt(5));
					bean.setContent(rs.getString(6));
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return bean;
		}
		
		//Boardupdate용 하나의 게시글을 리턴
		//Boardupdate용 delete시 하나의 게시글을 리턴
		public BoardBean getOneUpdateBoard(int num) {
			getCon();
			BoardBean bean=new BoardBean();
			try {
				String sql="Select * from board where num=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, num);
				rs=pstmt.executeQuery();
				if(rs.next()) {
					bean.setNum(rs.getInt(1));
					bean.setWriter(rs.getString(2));					
					bean.setSubject(rs.getString(3));					
					bean.setReg_date(rs.getDate(4).toString());
					bean.setReadcount(rs.getInt(5));
					bean.setContent(rs.getString(6));
				}
				pstmt.close();
				conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}return bean;
		}
		
		public void updateBoard(BoardBean bean) {
			getCon();
			try {
				String sql="update board set subject=?, content=? where num=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, bean.getSubject());
				pstmt.setString(2, bean.getContent());
				pstmt.setInt(3, bean.getNum());
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
		//검색을 하기 위한 매서드
		public BoardBean selectProductBysubject(String subject) {
			BoardBean bean=null;
			getCon();
			
						
			try {
				String sql="select * from board where subject=?";
				pstmt=conn.prepareStatement(sql);
				
				pstmt.setString(1,subject);
				rs=pstmt.executeQuery();
				
				if(rs.next()) {
					bean=new BoardBean();
					bean.setNum(rs.getInt(1));
					bean.setWriter(rs.getString(2));					
					bean.setSubject(rs.getString(3));					
					bean.setReg_date(rs.getDate(4).toString());
					bean.setReadcount(rs.getInt(5));
					bean.setContent(rs.getString(6));
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return bean;
		}
}
