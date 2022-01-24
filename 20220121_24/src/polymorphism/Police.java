package polymorphism;

public class Police extends Person {
	private int worktime;

	public Police(String name, int age, int worktime) {
		super(name, age);
		this.worktime = worktime;
	}
	public void showPerson() {
		// 부모 쪽 showPerson() 에 이미 name, age를 출력해주는 구문이 있음.
		super.showPerson();
		System.out.println("일한시간(hour) : " + worktime);
	}
	public void showPolice() {
		System.out.println("나는 경찰입니다.");
	}
	

}
