package student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.DBConnUtils;
import student.Stu;


public class StuDAO {
	
	private Connection conn;
	private ResultSet rs;
	
	public StuDAO() {
		try {

			// 모든 DAO에서 이제 이거만 복붙하면 connection은 완료되게끔 짜놧어 이걸로 가져다가써
			DBConnUtils dbUtils = new DBConnUtils();
			conn = dbUtils.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public String getDate() {
		String SQL = "SELECT  NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next())
				return rs.getString(1);
		
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return ""; //DATABASE ERROR
		} 
	
	public int getNext() {
		String SQL = "SELECT stuID FROM SE ORDER BY stuID DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; //첫번째 게시물
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return -1; //DATABASE ERROR
	}
	public int write(String stuTitle, String userID, String stuContent) {
		String SQL = "INSERT INTO SE VALUES (?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,  getNext());
			pstmt.setString(2,  stuTitle);
			pstmt.setString(3,  userID);
			pstmt.setString(4,  getDate());
			pstmt.setString(5,  stuContent);
			pstmt.setInt(6,  1);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return -1; //DATABASE ERROR
	}

	public ArrayList<Stu> getList(int pageNumber) {
		String SQL = "SELECT * FROM SE WHERE stuID < ? AND stuAvailable = 1 ORDER BY stuID DESC LIMIT 10";
		ArrayList<Stu> list = new ArrayList<Stu>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Stu student = new Stu();
				student.setStuID(rs.getInt(1));
				student.setStuTitle(rs.getString(2));
				student.setUserID(rs.getString(3));
				student.setStuDate(rs.getString(4));
				student.setStuContent(rs.getString(5));
				student.setStuAvailable(rs.getInt(6));
				list.add(student);
			}
					} catch (Exception e) {
			e.printStackTrace();
		} 
		return list; //DATABASE ERROR
	}
	public boolean nextPage(int pageNumber) {
		String SQL = "SELECT * FROM SE WHERE stuID < ? AND stuAvailable = 1";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return true;
			}
					} catch (Exception e) {
			e.printStackTrace();
		} 
		return false; 
		
	}
}
