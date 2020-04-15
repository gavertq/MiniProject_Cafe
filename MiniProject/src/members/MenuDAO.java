package members;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MenuDAO {
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
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
	
	public ArrayList<String> menuView(String category, String detail) {
		String sql = "select menu_name from Menu where category=? and detail=?";
		ArrayList<String> al = new ArrayList<String>();
		try {
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, category);
			ps.setString(2, detail);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				String name = rs.getString("menu_name");
				al.add(name);
			}
			
		} catch (SQLException e) {e.printStackTrace();}
		return al;				
	}
	
	public ArrayList<String> menuViewAll(String category) {
		String sql = "select menu_name from Menu where category=? order by detail asc";
		ArrayList<String> al = new ArrayList<String>();
		try {
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, category);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				String name = rs.getString("menu_name");
				al.add(name);
			}
			
		} catch (SQLException e) {e.printStackTrace();}
		return al;				
	}
	
	public ArrayList<MenuDTO> menuDetailView(String menuName) {
		String sql = "select * from Menu where menu_name=?";
		ArrayList<MenuDTO> menuDetail = new ArrayList<MenuDTO>();
		
		try {
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, menuName);
			rs = ps.executeQuery();
			
			if(rs.next()) {			
				MenuDTO dto = new MenuDTO();
				dto.setMenu_name(rs.getString("menu_name"));
				dto.setMenu_Info(rs.getString("menu_Info"));
				dto.setMenu_size(rs.getString("menu_size"));
				dto.setKcal(rs.getInt("kcal"));
				dto.setFat(rs.getInt("fat"));
				dto.setNatrium(rs.getInt("natrium"));
				dto.setSugars(rs.getInt("sugars"));
				dto.setProtein(rs.getInt("protein"));		
				menuDetail.add(dto);
			}			
		} catch (SQLException e) {e.printStackTrace();}		
		return menuDetail;		
	}
}

/*테이블 생성시
CREATE TABLE Menu(category varchar2(10),detail varchar2(10), 
menu_name varchar2(50), menu_Info varchar2(200), menu_size varchar2(10),
kcal number,fat number, natrium number, sugars number, protein number,
PRIMARY KEY (menu_name));

insert into MENU values('drink', 'coffee', '아메리카노', 
'강렬한 에스프레소 샷에 시원한 물의 조화', '355ml', 10, 0, 5, 0, 1);

insert into MENU values('drink', 'juice', '망고주스', 
'노랗게 익은 열대과일 망고가 입안 가득 느껴지는 주스', '190ml', 112, 0, 35, 24, 1);

insert into MENU values('dessert', 'cake', '번트 치즈 케이크', 
'크림치즈가 듬뿍 들어간 케이크를 높은 온도로 짧은 시간 구워 낸 진한 맛의 치즈 케이크입니다.
', '200(g)', 825, 0, 640, 59, 11);
*/