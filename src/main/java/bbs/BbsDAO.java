package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;

import util.DatabaseUtil;

public class BbsDAO {
	//dao: database access object
	private PreparedStatement pstmt;
	private Connection conn; //connection�� db�� �����ϰ� ���ִ� ��ü
	private ResultSet rs; //ResultSet�� �������� ������ ������ �������� Ŭ����
	
	//mysql ó���κ�
//	public BbsDAO() {

	
//	//���� �ð��� �������� �Լ�
//	public String getDate() {
//		String SQL = "SELECT NOW()";
//		try {
//			PreparedStatement pstmt = conn.prepareStatement(SQL);
//			rs = pstmt.executeQuery();
//			if(rs.next()) {
//				return rs.getString(1);
//			}
//		}catch (Exception e) {
//			e.printStackTrace();
//		}
//		return ""; //�����ͺ��̽� ����
//	}
	
	//bbsID �Խñ� ��ȣ �������� �Լ�
	public int getNext() {
		String SQL = "SELECT bbsID FROM BBS ORDER BY bbsID DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; //ù ��° �Խù��� ���
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //����
	}
	
	//������ ���� �ۼ��ϴ� �Լ�
//	public int write(String bbsTitle, String userID, String bbsContent, String imageFile) {
//		String SQL = "INSERT INTO BBS VALUES(?, ?, ?, ?, ?, ?, ?)";
//		try {
//			PreparedStatement pstmt = conn.prepareStatement(SQL);
//			pstmt.setInt(1, getNext());
//			pstmt.setString(2, bbsTitle);
//			pstmt.setString(3, userID);
//			pstmt.setString(4, getDate());
//			pstmt.setString(5, bbsContent);
//			pstmt.setInt(6, 1); //1�� �� �ǹ��ϴ� �� �𸣰���
//			pstmt.setString(7, imageFile);
//			
//			
//			return pstmt.executeUpdate();
//		}catch (Exception e) {
//			e.printStackTrace();
//		}
//		return -1; //����
//	}
	
	public String getDatetime() throws SQLException{
		try {
			Date date=new Date();
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			String time = sdf.format(date);
			return time;
		}catch(Exception sqle) {
			throw new RuntimeException(sqle.getMessage());
		}
	}
	
	public Timestamp localDateTimeToTimeStamp(LocalDateTime ldt) {
		return Timestamp.valueOf(ldt);
	}
	
	public LocalDateTime timeStampToLocalDateTime(Timestamp ts) {
		return ts.toLocalDateTime();
	}
	
	public int write(String bbsTitle,String userID,String bbsContent,String fileName,String fileRealName) throws SQLException {
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		String SQL="insert into bbs(bbsID,bbsTitle,userID,bbsDate,bbsContent,fileName,fileRealName,bbsAvailable) VALUES(?,?,?,?,?,?,?,?)";
		try {
			conn=DatabaseUtil.getConnection();
			pstmt=conn.prepareStatement(SQL);
			
			pstmt.setString(1, null);
			pstmt.setString(2, bbsTitle);
			pstmt.setString(3, userID);
			pstmt.setString(4, getDatetime());
			pstmt.setString(5, bbsContent);
			pstmt.setString(6, fileName);
			pstmt.setString(7, fileRealName);
			pstmt.setInt(8, 1); //���� ��ȿ��ȣ 1�� ���, �������� ���� �Խù��� �ǹ�
			return pstmt.executeUpdate();
		}catch(SQLException e) {
			throw new RuntimeException(e.getMessage());
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}finally {
			try {
				if(pstmt!=null) {pstmt.close(); pstmt=null;}
				if(conn != null) {conn.close(); conn=null;}
			}catch (Exception e) {
				throw new RuntimeException(e.getMessage());
			}
		}return -1;
	}
	
	//�Խñ� ����Ʈ �޼ҵ�
	public ArrayList<Bbs> getList(int pageNumber) {
		String sql="select * from bbs where bbsID < ? and bbsAvailavle = 1 order by bbsID desc limit 10";
		ArrayList<Bbs> list= new ArrayList<Bbs>();
		try {
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,getNext()-(pageNumber-1)*10);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Bbs bbs=new Bbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserID(rs.getString(3));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable(rs.getInt(6));
				list.add(bbs);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	//����¡ ó�� �޼ҵ�
	public boolean nextPage(int pageNumber) {
		String sql = "select * from bbs where bbsID < ? and bbsAvailable = 1";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	//�ϳ��� �Խñ��� ���� �޼ҵ�
	public Bbs getBbs(int bbsID) {
		String sql="select * from bbs where bbsID=?";
		try {
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, bbsID);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				Bbs bbs=new Bbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserID(rs.getString(3));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable(rs.getInt(6));
				return bbs;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
 }
