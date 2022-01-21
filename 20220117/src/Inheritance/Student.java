package Inheritance;

// 상속 문법
// 클래스명칭 오른쪽에 <extends 부모클래스 이름> 을 적는다.
// 이렇게 상속한 클래스는 부모, 자식클래스가 하나의 객체 내부에
// 공존하는 형태로 메모리에 생성된다.
public class Student extends Person {
	// name, age
	// 공통속성(이름, 나이) 가 아닌 학생만의 개별적 특성 정의
	public int stuNum; // 학번
	
	// getStuInfo()를 생성해주세요
	// 이름, 나이, 학번을 모두 콘솔에 찍어줍니다.
	
	public void getStuInfo() {
		System.out.println("이름은 " + name + "이고 나이는 " + 
	                      age + "이며 학번은 " + stuNum + "입니다.");
	}
}
