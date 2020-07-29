package reply.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.DBConnect;
import model.Reply;

public class Dao {
	
	private DBConnect db;
	public Dao(){
		db = DBConnect.getInstance();
	}
	
	public ArrayList<Reply> selectAll() {
		
		Connection conn = null;
		ResultSet rs = null;
		ArrayList<Reply> list = new ArrayList<Reply>();		
		PreparedStatement pstmt = null;		
		
		try {			
			conn = db.getConnection();
			String sql = "select * from reply";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new Reply(rs.getInt("seq"), rs.getString("id"), rs.getString("name"), rs.getString("content"), rs.getString("w_date")));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}// selectAll method End	
	
public void insert(String content) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;		
		ResultSet rs = null;
		
		try {			
			conn = db.getConnection();
			String sql = "insert into reply values(?, ?, ?, ?, sysdate)";
			pstmt = conn.prepareStatement(sql);
			int a = 2;
			pstmt.setInt(1, a); // 수정필요 next val 사용
			pstmt.setString(2, "id" ); // 수정필요 session id
			pstmt.setString(3, "park"); // 수정필요 session name
			pstmt.setString(4, content);
					
			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}		
	}// insert method End	
}
