package Inheritance;

public class Main02P2543 {

	public static void main(String[] args) {
		// 여기에 학생 하나와 샐러리맨 하나를 임의로 만들어보세요.
		// 샐러리맨에는 본인 이름과 희망 연봉을 적어주세요.
		// 학생은 알아서 적어주세요
		// 생성한 객체의 정보를 get~Info()를 이용해 콘솔에도 같이 찍어주세양.
		
		Salaryman sa1 = new Salaryman();
		sa1.salary = 3000;
		
		Student s1 = new Student();
		s1.name = "김철수";
		s1.age = 15;
		s1.stuNum = 14;
		
		sa1.getSalaryInfo();
		s1.getStuInfo();
	}
}
