package overloading;

public class Main01 {
	public static void main(String[] args) {
		// 1. Calculator를 생성		
		// 2. plus(int)를 호출하기
		Calculator c1 = new Calculator();
		c1.plus(2);
		c1.plus(3, 4);
		c1.plus(5.5);
		c1.plus("니히히");
	}

}
