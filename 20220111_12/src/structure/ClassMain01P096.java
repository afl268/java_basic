package structure;

public class ClassMain01P096 {
	
	// PersonClass를 조회할 메서드는 작성할 필요가 없다.
	// 이미 PersonClass 내부에 필요한 메서드를 작성해놓았기 때문이다.

	public static void main(String[] args) {
		
		// 사람을 두 명 만들어보세요(PersonClass)
		
		PersonClass p1 = new PersonClass();
		p1.name = "김이박";
		p1.age = 20;
		p1.pNum = "01098765432";
		p1.uNum = 1;	
		p1.height = 174;
		
		PersonClass p2 = new PersonClass();
		p2.name = "김한수";
		p2.age = 23;
		p2.pNum = "01014725896";
		p2.uNum = 2;		
		p2.height = 165;
		
		p1.getInfo();
		System.out.println("==================");
		p2.getInfo(); 

	}

}
