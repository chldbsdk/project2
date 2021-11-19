package Login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DatabaseUtil;

public class LoginDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
//	private static LoginDAO instance;
//	private LoginDAO() {}
//	public static LoginDAO getInstance() {
//		if(instance == null) 
//			instance = new LoginDAO();
//		return instance;
//	}
	
	public int join(String userID,String userPassword) { //�׽�Ʈ�غ��� ȸ������
		 String SQL="INSERT INTO USER VALUES(?,?)"; 
		 try { 
			Connection conn =DatabaseUtil.getConnection(); 
			PreparedStatement pstmt=conn.prepareStatement(SQL); 
			
			pstmt.setString(1, userID);
			pstmt.setString(2, userPassword); 
			return pstmt.executeUpdate(); 
		 }catch (Exception e) { 
			 e.printStackTrace(); 
		 } return -1; 
	 }
	 
	//ȸ���α��� ���̵�,��й�ȣ Ȯ�� �޼ҵ�
	 public int login(String id,String password) {
		 String SQL="select password from membertbl where id=?"; 
		  try {
			  pstmt=conn.prepareStatement(SQL); 
			  pstmt.setString(1, id);
			  rs=pstmt.executeQuery(); 
			  if(rs.next()) { 
				  if(rs.getString(1).equals(password))
					  return 1; 
				  else return 0; 
			  }return -1; 
		  }catch(Exception e) {
			  e.printStackTrace(); 
		}return -2;
		 
//		 boolean flag = false; 
//		 
//		 String sql = "selct * from membertbl where id=? and password=?";
//		 
//		 conn=DatabaseUtil.getConnection();
//		 try {
//			 pstmt=conn.prepareStatement(sql);
//			 pstmt.setString(1, id);
//			 pstmt.setString(2, password);
//			 rs=pstmt.executeQuery();
//			 
//			 if(rs.next()) 
//				 flag=true;
//		 }catch(SQLException e) {
//			 e.printStackTrace();
//		 }finally {
//			 try {
//				 rs.close();
//				 pstmt.close();
//				 conn.close();
//			 }catch(SQLException e) {
//				 e.printStackTrace();
//			 }
//		 }
//		 return flag;
	
	 }
	
	//�ٸ� �α���
	 public int logincheck(String id,String passwd) {
		 String dbPW="";
		 int x=-1;
		 
		 try {
			 //���� - ���� �Էµ� ���̵�� DB ���� ��й�ȣ�� ��ȸ�Ѵ�
			 StringBuffer query = new StringBuffer();
			 query.append("SELECT password from membertbl where id = ?");
			 
			 conn = DatabaseUtil.getConnection();
			 pstmt=conn.prepareStatement(query.toString());
			 pstmt.setString(1, id);
			 rs=pstmt.executeQuery();
			 
			 if(rs.next()) {
				 dbPW=rs.getString("password");
				 if(dbPW.equals(passwd))
					 x=1; //�α��μ���
				 else x=0; //��й�ȣƲ��
			 }else {
				 x=-1; //���̵�Ʋ��
			 }return x; //����
		 }catch(Exception sqle) {
			 throw new RuntimeException(sqle.getMessage());
		 }finally {
			 try {
				 if(pstmt != null) {pstmt.close(); pstmt=null;}
				 if(conn != null) {conn.close();conn=null;}
			 }catch(Exception e) {
				 throw new RuntimeException(e.getMessage());
			 }
		 }
	 }
	//�α��������� ȸ���̸����ϱ�
	public String getName(String id) {
		String name="";
		
//		String SQL="select * from user where id=?";
//		conn=DatabaseUtil.getConnection();
		
		try {
			 StringBuffer query = new StringBuffer();
			 query.append("select name from membertbl where id=?");
			 
			 conn = DatabaseUtil.getConnection();
			 pstmt=conn.prepareStatement(query.toString());
			 pstmt.setString(1, id);
			 rs=pstmt.executeQuery();
			 
			 name=rs.getString("name");
			 return name;
//			pstmt=conn.prepareStatement(SQL);
//			pstmt.setString(1,id);
//			rs=pstmt.executeQuery();
		}catch(Exception sqle) {
			 throw new RuntimeException(sqle.getMessage());
		 }finally {
			 try {
				 if(pstmt != null) {pstmt.close(); pstmt=null;}
				 if(conn != null) {conn.close();conn=null;}
			 }catch(Exception e) {
				 throw new RuntimeException(e.getMessage());
			 }
		 }
	}
	
	//�̸��Ϸ� ���̵� ã��
	public String idSearchEmail(String name, String email) {
		String id = null;
		try {
			 StringBuffer query = new StringBuffer();
			 query.append("select id from membertbl where name=? and email=?");
			 
			 conn = DatabaseUtil.getConnection();
			 pstmt=conn.prepareStatement(query.toString());
			 pstmt.setString(1, name);
			 pstmt.setString(2, email);
			 rs=pstmt.executeQuery();
			 if(rs.next()) {
				 id=rs.getString("id");
			 }
		}catch(Exception sqle) {
			 throw new RuntimeException(sqle.getMessage());
		 }finally {
			 try {
				 if(pstmt != null) {pstmt.close(); pstmt=null;}
				 if(conn != null) {conn.close();conn=null;}
			 }catch(Exception e) {
				 throw new RuntimeException(e.getMessage());
			 }
		 }
		return id;
	}
	
	//�޴�����ȣ�� ���̵� ã��
	public String idSearchPhone(String name, String birth,String number) {
		String id = null;
		try {
			 StringBuffer query = new StringBuffer();
			 query.append("select id from membertbl where name=? and birth=? and number=?");
			 
			 conn = DatabaseUtil.getConnection();
			 pstmt=conn.prepareStatement(query.toString());
			 pstmt.setString(1, name);
			 pstmt.setString(2, birth);
			 pstmt.setString(3, number);
			 rs=pstmt.executeQuery();
			 if(rs.next()) {
				 id=rs.getString("id");
			 }
		}catch(Exception sqle) {
			 throw new RuntimeException(sqle.getMessage());
		 }finally {
			 try {
				 if(pstmt != null) {pstmt.close(); pstmt=null;}
				 if(conn != null) {conn.close();conn=null;}
			 }catch(Exception e) {
				 throw new RuntimeException(e.getMessage());
			 }
		 }
		return id;
	}
	
	//��й�ȣã��
	public String pwdSearch(String id, String name,String email) {
		String pwd = null;
		try {
			 StringBuffer query = new StringBuffer();
			 query.append("select password from membertbl where id=? and name=? and email=?");
			 
			 conn = DatabaseUtil.getConnection();
			 pstmt=conn.prepareStatement(query.toString());
			 pstmt.setString(1, id);
			 pstmt.setString(2, name);
			 pstmt.setString(3, email);
			 rs=pstmt.executeQuery();
			 if(rs.next()) {
				 pwd=rs.getString("password");
			 }
		}catch(Exception sqle) {
			 throw new RuntimeException(sqle.getMessage());
		 }finally {
			 try {
				 if(pstmt != null) {pstmt.close(); pstmt=null;}
				 if(conn != null) {conn.close();conn=null;}
			 }catch(Exception e) {
				 throw new RuntimeException(e.getMessage());
			 }
		 }
		return pwd;
	}
}
