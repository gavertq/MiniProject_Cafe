package members;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.tomcat.util.buf.UDecoder;

import com.sun.org.apache.regexp.internal.recompile;

public class MemberDAO {
	private String url = "jdbc:oracle:thin:@192.168.0.49:1521:xe";
	private String id = "java";
	private String pwd="1234";
	
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean memberIn(MemberDTO dto) {
		String sql = "INSERT INTO TestMembers VALUES(?, ?, ?, ?, ?)";
		
		try {				
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);		
					
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPwd());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getDept());
			ps.setString(5, dto.getRank());					
			ps.executeUpdate();

			return true;
		} catch (SQLException e) {
			e.printStackTrace(); return false;
		}
	}
	
	public int memberLogin(String uid,String uPwd) {
		String sql = "select pwd from TestMembers where id=?";
		
		try {
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, uid);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				if(rs.getString("pwd").equals(uPwd)) {
					return 0;
				}else {
					return 1;
				}
				
			}else {return -1;}
			
		} catch (SQLException e) {
			e.printStackTrace();
			return -1;
		}
		
	}
	
	public ArrayList<MemberDTO> memberView() {
		String sql = "select * from TestMembers order by id asc";
		ArrayList<MemberDTO> members = new ArrayList<MemberDTO>();
		
		try {
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				MemberDTO m = new MemberDTO();
				m.setId(rs.getString("id"));
				m.setPwd(rs.getString("pwd"));
				m.setName(rs.getString("name"));
				m.setDept(rs.getString("dept"));
				m.setRank(rs.getString("rank"));
				members.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace(); 
		}	
		return members;
	}
	
	public ArrayList<MemberDTO> memberDetailView(String uId) {
		String sql = "select * from TestMembers where id=?";
		ArrayList<MemberDTO> members = new ArrayList<MemberDTO>();
		
		try {
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, uId);
			rs = ps.executeQuery();
			if(rs.next()) {
				MemberDTO m = new MemberDTO();
				m.setId(rs.getString("id"));
				m.setPwd(rs.getString("pwd"));
				m.setName(rs.getString("name"));
				m.setDept(rs.getString("dept"));
				m.setRank(rs.getString("rank"));
				members.add(m);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}	return members;
	}
	
	public boolean idChk(String idChk) {
		String sql = "select id from TestMembers where id=?";
		
		try {
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, idChk);
			rs = ps.executeQuery();
			if(rs.next()) return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}	return false;
	}

}
