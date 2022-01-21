package Inheritance;

public class Main01P254 {

	public static void main(String[] args) {
		// Student가 Person을 상속했기 때문에
		// Student는 Person의 자원을 상속 할 수 있다.
		Student s1 = new Student();
		s1.name = "김철수";
		s1.age = 15;
		s1.stuNum = 201405011;
		
		s1.getInfo();
		s1.getStuInfo();
		
		// Student를 하나 더 만들고
		// 코드 복붙해서 보내고
		// 메모리 구조는 그림으로 그려서 캡쳐 후 보내기
		Student s2 = new Student();
		s2.name = "김길동";
		s2.age = 24;
		s2.stuNum = 18;
		
		s2.getInfo();
		s2.getStuInfo();
		
	}
}
