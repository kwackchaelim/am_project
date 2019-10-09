package book;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookDAO {

	Connection conn = null;
	PreparedStatement pstmt = null;

	// MySQL �������� 
	String jdbc_driver = "com.mysql.jdbc.Driver";
	
	String jdbc_url = "jdbc:mysql://127.0.0.1/jspdb?useSSL=true&verifyServerCertificate=false&serverTimezone=UTC";

	// DB ����
	void connect() {
		try {
			Class.forName(jdbc_driver);

			conn = DriverManager.getConnection(jdbc_url,"jspbook","1234");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// DB ��������
	void disconnect() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} 
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	// ��� ��ȸ
	public List<BookDTO> getDBList(String searchBookName) {
		
		connect();
		
		List<BookDTO> bookList = new ArrayList<BookDTO>();
		
		String sql = "select bookNumber, bookName, author, publishingHouse, category, symbol, status from book where bookName like ?";
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			

			// SQL���� ���� �Է�
			
			pstmt.setString(1,searchBookName+"%");

			//SQL�� ����
			ResultSet rs = pstmt.executeQuery();

			while(rs.next()) {
				
				// DTO ��ü ����
				BookDTO bookDTO = new BookDTO();
				
				// DB Select����� DO ��ü�� ����
				bookDTO.setBookNumber(rs.getInt("booknumber"));
				bookDTO.setBookName(rs.getString("bookName"));
				bookDTO.setAuthor(rs.getString("author"));
				bookDTO.setPublishingHouse(rs.getString("publishingHouse"));
				bookDTO.setCategory(rs.getString("category"));
				bookDTO.setSymbol(rs.getString("symbol"));
				bookDTO.setStatus(rs.getString("status"));
				
							
				bookList.add(bookDTO);
			}
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return bookList;
	}
}
