package Member;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import util.DatabaseUtil;

public class testDAO {

	public Date stringToDate(MemberBean member) {
		String year = member.getBirthyy();
		String month = member.getBirthmm();
		String day = member.getBirthdd();
	 
		Date birthday = Date.valueOf(year+"-"+month+"-"+day);
	 
		return birthday;
	 }
	public void insertMember(MemberBean member) throws SQLException {
	 Connection conn = null;
	 PreparedStatement pstmt = null;
	 
	 try {
	 // Ŀ�ؼ��� �����´�.
	 conn = DatabaseUtil.getConnection();
	 
	 // �ڵ� Ŀ���� false�� �Ѵ�.
	 conn.setAutoCommit(false);
	 
	 // ���� �����Ѵ�.
	 // �������� ��� �ڵ����� ���õǰ� �ϱ� ���� sysdate�� ���
	 StringBuffer sql = new StringBuffer();
	 sql.append("insert into JSP_MEMBER values");
	 sql.append("(?, ?, ?, ?, ?, ?, ?, ?, sysdate)"); 
	 stringToDate(member);
	 
	 /* 
	 * StringBuffer�� ��� ���� �������� toString()�޼��带
	 * �̿��ؾ� �Ѵ�.
	 */
	 pstmt = conn.prepareStatement(sql.toString());
	 pstmt.setString(1, member.getId());
	 pstmt.setString(2, member.getPassword());
	 pstmt.setString(3, member.getName());
	 pstmt.setString(4, member.getGender());
	 pstmt.setDate(5, stringToDate(member));
	 pstmt.setString(6, member.getMail1()+"@"+member.getMail2());
	 pstmt.setString(7, member.getPhone());
	 pstmt.setString(8, member.getAddress());
	 
	 // ���� ����
	 pstmt.executeUpdate();
	 // �Ϸ�� Ŀ��
	 conn.commit(); 
	 
	 } catch (SQLException sqle) {
	 // ������ �ѹ�
	 conn.rollback(); 
	 throw new RuntimeException(sqle.getMessage());
	 } finally {
	 // Connection, PreparedStatement�� �ݴ´�.
	 try{
	 if ( pstmt != null ){ pstmt.close(); pstmt=null; }
	 if ( conn != null ){ conn.close(); conn=null; }
	 }catch(Exception e){
	 throw new RuntimeException(e.getMessage());
	 }
	 }
	 }
}
