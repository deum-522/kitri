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
	
	public ArrayList<Reply> selectAll(int boardseq) {
		
		Connection conn = null;
		ResultSet rs = null;
		ArrayList<Reply> list = new ArrayList<Reply>();		
		PreparedStatement pstmt = null;		
		
		try {			
			conn = db.getConnection();
			String sql = "select * from reply where boardseq = ? order by replyseq";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardseq);
			
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new Reply(rs.getInt("replyseq"), rs.getInt("boardseq"), rs.getString("id"), rs.getString("name"), rs.getString("content"), rs.getString("w_date")));
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
	
	public void insert(Reply reply) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;		
		ResultSet rs = null;
		
		try {			
			conn = db.getConnection();
			String sql = "insert into reply values(replyseq.nextval, ?, ?, ?, ?, sysdate)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, reply.getBoardseq()); 
			pstmt.setString(2, reply.getId());
			pstmt.setString(3, reply.getName());
			pstmt.setString(4, reply.getContent());
					
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

	public void delete(int replyseq) {
	
		Connection conn = null;
		PreparedStatement pstmt = null;		
		ResultSet rs = null;
	
		try {			
			conn = db.getConnection();
			String sql = "delete from reply where replyseq = ?";
			pstmt = conn.prepareStatement(sql);
		
			pstmt.setInt(1, replyseq); 
				
			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}		
	}// delete method End	
}
