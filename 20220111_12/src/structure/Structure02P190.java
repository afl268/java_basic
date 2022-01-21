package structure;

public class Structure02P190 {
	
	// Person 내부의 정보를 쉽게 조회하기 위한 메서드 생성
	
	public static void getInfo(Person p) {
		System.out.println(p.name + "의 정보입니다.");
		System.out.println("이름 : " + p.name +
							", 나이 : " + p.age + 
							", 연락처 : " + p.pNum + 
							", 번호 : " + p.uNum);
	}

	public static void main(String[] args) {
		// 사람을 두 명 만들어보세요(a, b)
		Person p3 = new Person();
		p3.name = "김철수";
		p3.age = 21;
		p3.pNum = "01098765432";
		p3.uNum = 3;	
	
		getInfo(p3);
		
		Person p4 = new Person();
		p4.name = "김수한";
		p4.age = 22;
		p4.pNum = "01014725896";
		p4.uNum = 4;		
		
		System.out.println("==================");
		getInfo(p4);
		


	}

}
