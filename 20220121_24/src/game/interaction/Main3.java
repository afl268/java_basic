package game.interaction;

public class Main3 {
	public static void main(String[] args) {
		
		Knight k1 = new Knight();
		Guardian g1 = new Guardian();
		Monster1 mo1 = new Monster1();
		Monster2 mo2 = new Monster2();
		Rabbit r1 = new Rabbit();
		

	
		System.out.println("------------------------");
		System.out.println("------------------------");
		g1.huntMonster1(mo1);
		System.out.println("------------------------");
		g1.huntMonster1(mo1);
		System.out.println("------------------------");
		g1.huntMonster1(mo1);
		System.out.println("------------------------");
		g1.huntMonster1(mo1);
		System.out.println("------------------------");
		g1.huntMonster2(mo2);
		System.out.println("------------------------");
		g1.huntMonster2(mo2);
		System.out.println("------------------------");
		g1.huntMonster2(mo2);
		System.out.println("------------------------");
		g1.huntRabbit(r1);
		
	}

}
