package structure;

public class Structure03P190 {
	public static void getInfo(Cat c) {
		System.out.println(c.cname + "의 정보입니다.");
		System.out.println("이름 : " + c.cname +
							", 나이 : " + c.cage +  
							", 키 : " + c.cheight);
	}

	public static void main(String[] args) {
		Cat c1 = new Cat();
		c1.cname = "야옹";
		c1.cage = 5;
		c1.cheight = "30cm";
	
		getInfo(c1);
		
		Cat c2 = new Cat();
		c2.cname = "냐옹";
		c2.cage = 5;
		c2.cheight = "20cm";
	
		System.out.println("==================");
		getInfo(c2);
		

	}

}
