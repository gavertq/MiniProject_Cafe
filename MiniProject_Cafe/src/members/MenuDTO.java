package members;

public class MenuDTO {
	//메뉴 이름
	private String menu_name;
	
	//메뉴 정보
	private String menu_Info;
	
	//메뉴 영양정보
	private String menu_size;		//무게
	private int kcal;		//칼로리
	private int fat;		//포화지방
	private int natrium;	//나트륨
	private int sugars;		//당류
	private int protein;	//단백질
	
	//메뉴 이미지 경로
	private String image;
	
	public String getMenu_name() {return menu_name;	}
	public void setMenu_name(String menu_name) {this.menu_name = menu_name;	}
	
	public String getMenu_Info() {return menu_Info;	}
	public void setMenu_Info(String menu_Info) {this.menu_Info = menu_Info;	}
	
	public String getMenu_size() {return menu_size;}
	public void setMenu_size(String menu_size) {this.menu_size = menu_size;}
	
	public int getKcal() {return kcal;}
	public void setKcal(int kcal) {this.kcal = kcal;}
	
	public int getFat() {return fat;}
	public void setFat(int fat) {this.fat = fat;}
	
	public int getNatrium() {return natrium;}
	public void setNatrium(int natrium) {this.natrium = natrium;}
	
	public int getSugars() {return sugars;}
	public void setSugars(int sugars) {this.sugars = sugars;}
	
	public int getProtein() {return protein;}
	public void setProtein(int protein) {this.protein = protein;}
	
	public String getImage() {return image;}
	public void setImage(String image) {this.image = image;}	

}
