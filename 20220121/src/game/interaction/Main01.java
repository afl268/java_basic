package game.interaction;

public class Main01 {

	public static void main(String[] args) {
		// 전사 하나와 오크 하나 생성
		
		// 2번 쇼부
		
		Warrior w1 = new Warrior();
		Orc o1 = new Orc();
		
		w1.huntOrc(o1);
		System.out.println("------------------------");
		w1.huntOrc(o1);
		System.out.println("------------------------");
		w1.huntOrc(o1);

	}

}