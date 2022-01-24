package polymorphism;

public class Student extends Person {

	private int grade;
	
	public Student(String name, int age, int grade) {
		super(name, age);
		this.grade = grade;
	}
	public void showPerson() {
		// 부모 쪽 showPerson() 에 이미 name, age를 출력해주는 구문이 있음.
		super.showPerson();
		System.out.println("성적 : " + grade);
	}
	public void showStudent() {
		System.out.println("저는 학생입니다.");
	}

}
