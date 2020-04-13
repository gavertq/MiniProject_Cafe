package members;

public class MemberDTO {
	private  String id;
	private  String pwd;
	private  String name;
	private  String dept;
	private  String rank;
	private  String idChkR;
	
	public String getId() {return id;}
	public void setId(String id) {this.id = id;}
	
	public String getPwd() {return pwd;}
	public void setPwd(String pwd) {this.pwd = pwd;}
	
	public String getName() {return name;}
	public void setName(String name) {this.name = name;}

	public String getDept() {return dept;}
	public void setDept(String dept) {this.dept = dept;}
	
	public String getRank() {return rank;}
	public void setRank(String rank) {this.rank = rank;}
	
	public String getIdChkR() {		return idChkR;	}
	public void setIdChkR(String idChkR) {		this.idChkR = idChkR;	}	
}
