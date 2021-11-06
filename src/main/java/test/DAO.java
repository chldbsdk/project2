package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DatabaseUtil;



public class DAO {
	/*
	 * private Connection conn; private PreparedStatement pstmt; private ResultSet
	 * rs;
	 */
	
	/*
	 * public void UserDAO() { try { String dbURL
	 * ="jdbc:mysql://localhost:3306/shoppingmall?serverTimezone=UTC"; String
	 * dbID="root"; String dbPassword="a202044033";
	 * Class.forName("com.mysql.jdbc.Driver");
	 * conn=DriverManager.getConnection(dbURL,dbID,dbPassword); } catch (Exception
	 * e) { e.printStackTrace(); } }
	 */

	/*
	 * public int join(String userID,String userPassword) { String
	 * SQL="INSERT INTO USER VALUES(?,?)"; try { Connection conn =
	 * DatabaseUtil.getConnection(); PreparedStatement
	 * pstmt=conn.prepareStatement(SQL); pstmt.setString(1, userID);
	 * pstmt.setString(2, userPassword); return pstmt.executeUpdate(); }catch
	 * (Exception e) { e.printStackTrace(); } return -1; }
	 */
	//회원로그인 아이디,비밀번호 확인 메소드
	public boolean login(String id, String password) {
		 
		 Connection conn=null; 
		 PreparedStatement pstmt=null; 
		 ResultSet rs=null;
		 String sql=null;
		 boolean flag = false;
		 
		  
		 try { 
			 conn=DatabaseUtil.getConnection();
			 sql="select id from membertbl where id=? and password=?";
			 pstmt=conn.prepareStatement(sql);
			 pstmt.setString(1,id); 
			 pstmt.setString(2,password); 
			 rs=pstmt.executeQuery();
			 flag=rs.next();
		 //비밀번호가 맞는 데이터가 있으면 true 반환 if(rs.next()) flag=true; 
		 }catch(Exception e) {
			 e.printStackTrace(); 
		 }finally { 
			 try { 
				 rs.close();
				 pstmt.close();
				 conn.close();
			 }catch(SQLException e) { 
				 e.printStackTrace(); 
			 } 
		 } return flag;
		 
		/*
		 * String SQL="select password from membertbl where id=?"; try {
		 * pstmt.getConnection().prepareStatement(SQL); pstmt.setString(1, id);
		 * rs=pstmt.executeQuery(); if(rs.next()) { if(rs.getString(1).equals(password))
		 * return 1; else return 0; }return -1; }catch(Exception e) {
		 * e.printStackTrace(); }return -2;
		 */
	}
	
	//로그인했을때 회원이름구하기
	public String getName(String id) {
		String name="";
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String SQL="select * from user where id=?";
		conn=DatabaseUtil.getConnection();
		
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1,id);
			rs=pstmt.executeQuery();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return id;
	}
}
