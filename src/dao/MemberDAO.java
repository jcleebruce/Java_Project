package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import model.MemberVO;
import util.DBManager;

public class MemberDAO {
	final String tbl = "tbl_member";
	
	private MemberDAO() {	
	}
	
	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	//사용자 존재 유무
	public int isExistId(String userId) {
		int result = -1;
		String sql="select \"id\" from " + tbl + " where \"id\"=?";
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			conn = DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = 1;
			}else {
				result = -1;
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null)
					rs.close();
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	//닉네임 존재 유무
	public int isExistNickName(String nickName) {
		int result = -1;
		String sql="select \"nickName\" from " + tbl + " where \"nickName\"=?";
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			conn = DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, nickName);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = 1;
			}else {
				result = -1;
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null)
					rs.close();
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	//사용자 인증
	public int login(String userId, String pwd) {
		int result = -1;
		String sql = "select \"pwd\" from " + tbl + " where \"id\"=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString("pwd") != null && rs.getString("pwd").equals(pwd)) {
					result = 1;//아이디 패스워드 일치
				}else {
					result = 0;
				}
			}else {
				result = -1; //아이디 없음
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null)
					rs.close();
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	//Create
	public int insert(MemberVO mvo) {
		int result = -1;
		int idx = 1;
		String sql= "insert into " + tbl + " values(?,?,?,?,?,?,?,?,?,?,?)";
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
						
			pstmt.setString(idx++, mvo.getId());
			pstmt.setString(idx++, mvo.getPwd());
			pstmt.setString(idx++, mvo.getUserName());
			pstmt.setString(idx++, mvo.getNickName());
			pstmt.setString(idx++, mvo.getEmail());
			pstmt.setString(idx++, mvo.getAddress1());
			pstmt.setString(idx++, mvo.getAddress2());
			pstmt.setString(idx++, mvo.getPhone());
			pstmt.setString(idx++, mvo.getJoinRoute());
			pstmt.setString(idx++, mvo.getChargingType());
			pstmt.setInt(idx++, mvo.getAdmin());
			
			result = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;	
	}
	
	//Read
	public MemberVO read(String userId) {
		MemberVO mvo = null;
		String sql = "select * from " + tbl + " where \"id\"=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				mvo = new MemberVO();
				mvo.setId(rs.getString("id"));
				mvo.setPwd(rs.getString("pwd"));
				mvo.setUserName(rs.getString("userName"));
				mvo.setNickName(rs.getString("nickName"));
				mvo.setEmail(rs.getString("email"));
				mvo.setAddress1(rs.getString("address1"));
				mvo.setAddress2(rs.getString("address2"));
				mvo.setPhone(rs.getString("phone"));
				mvo.setJoinRoute(rs.getString("joinRoute"));
				mvo.setChargingType(rs.getString("chargingType"));
				mvo.setAdmin(rs.getInt("admin"));
			}			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null)
					rs.close();
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return mvo;	
	}	
	
	//Update
	public int update(MemberVO mvo) {
		int result = -1;
		int idx = 1;
		String sql = "update " + tbl + " set \"pwd\"=?, \"userName\"=?, \"nickName\"=?, \"email\"=?, \"address1\"=?, \"address2\"=?, \"phone\"=?, \"joinRoute\"=?, \"chargingType\"=?, \"admin\"=? where \"id\"=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(idx++, mvo.getPwd());
			pstmt.setString(idx++, mvo.getUserName());
			pstmt.setString(idx++, mvo.getNickName());
			pstmt.setString(idx++, mvo.getEmail());
			pstmt.setString(idx++, mvo.getAddress1());
			pstmt.setString(idx++, mvo.getAddress2());
			pstmt.setString(idx++, mvo.getPhone());
			pstmt.setString(idx++, mvo.getJoinRoute());
			pstmt.setString(idx++, mvo.getChargingType());
			pstmt.setInt(idx++, mvo.getAdmin());
			pstmt.setString(idx++, mvo.getId());
			
			result = pstmt.executeUpdate();	
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;	
	}
	
	//Delete
	public int delete(String userId) {
		int result = -1;
		String sql = "delete from " + tbl + " where \"id\"=?";
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			conn = DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			result = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null)
					rs.close();
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;		
	}
}
