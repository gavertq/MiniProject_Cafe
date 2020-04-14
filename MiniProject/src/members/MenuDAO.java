package members;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MenuDAO {
	private String url = "jdbc:oracle:thin:@192.168.0.49:1521:xe";
	private String id = "java";
	private String pwd="1234";
	
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public MenuDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<MenuDTO> menuView(String category, String detail) {
		String sql = "select * from DrinkMenu where category=?, detail=?";
		ArrayList<MenuDTO> al = new ArrayList<MenuDTO>();
		try {
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, category);
			ps.setString(2, detail);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				MenuDTO dto = new MenuDTO();
				
				dto.setMenu_name(rs.getString("menu_name"));
				dto.setImage(rs.getString("image"));
				al.add(dto);
			}
			
		} catch (SQLException e) {e.printStackTrace();}
		return al;				
	}
	
	public MenuDTO menuDetailView(String menuName) {
		String sql = "select * from DrinkMenu where menu_name=?";
		MenuDTO dto = new MenuDTO();
		
		try {
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, menuName);
			rs = ps.executeQuery();
			
			if(rs.next()) {								
				dto.setMenu_name(rs.getString("menu_name"));
				dto.setMenu_Info(rs.getString("menu_Info"));
				dto.setSize(rs.getInt("size"));
				dto.setKcal(rs.getInt("kcal"));
				dto.setFat(rs.getInt("fat"));
				dto.setNatrium(rs.getInt("natrium"));
				dto.setSugars(rs.getInt("sugars"));
				dto.setProtein(rs.getInt("protein"));				
			}			
		} catch (SQLException e) {e.printStackTrace();}		
		return dto;		
	}
}
