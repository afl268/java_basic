package thiskeyword;

public class Main01P224 {

	public static void main(String[] args) {
		// person 하나 먼저 생성, getInfo()로 조회까지 하는거야
		
		Person p1 = new Person("김",20,50000,"국어국문");
		p1.getInfo();
		
		Person p2 = new Person("이",24,53000,"일어일문");
		p2.getInfo();
	}

}
