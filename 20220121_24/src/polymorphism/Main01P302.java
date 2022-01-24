package polymorphism;

public class Main01P302 {

	public static void main(String[] args) {
		// 부모 타입인 Person으로 자식인 Student까지 받을 수 있음
		Person p1 = new Person("김", 10);
		Person s1 = new Student("나", 20 , 99);
		Police po1 = new Police("몰", 14 , 8);
		Creater c1 = new Creater("루", 24, 64);
		
		p1.showPerson();
		System.out.println("========================");
		s1.showPerson();
		System.out.println("========================");
		c1.showPerson();
		System.out.println("========================");
		po1.showPerson();
		
		// s1 이용해 신분밝히기용 메서드를 호출
		// s1.showStudent();	
		// s1은 PERSON 타입이라 PERSON 자원만 호출가능

	}

}
