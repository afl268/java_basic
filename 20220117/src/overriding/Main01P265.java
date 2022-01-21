package overriding;

public class Main01P265 {

	public static void main(String[] args) {
		// 말 하나 생성
		// 오버라이드된 메서드들을 하나씩 호출
		
		Horse h1 = new Horse();
		h1.gender = "F";
		h1.age = 6;
		h1.name = "빌";
		h1.rank = 1;
		
		h1.howl();
		h1.getInfo();
		
		Tiger t1 = new Tiger();
		
		t1.gender = "F";
		t1.age = 5;
		t1.name = "범";
		t1.size = 300;
		
		t1.howl();
		t1.getInfo();

	}

}
