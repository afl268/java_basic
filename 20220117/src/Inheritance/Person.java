package Inheritance;

public class Person {
	// 사람이라면 공통적으로 가질 수 있는 속성들을 정의한다.
	public String name;
	public int age;
	
	// getInfo()
	// 이름은 name 입니다. 나이는 age입니다 라고 찍어보세요
	
	public void getInfo() {
		System.out.println("이름은 " + name + "입니다. 나이는 " + age + "입니다.");
	}

}
