package game.interaction;

public class Main02 {

	public static void main(String[] args) {
		Warrior w2 = new Warrior();
		Monster1 mo1 = new Monster1();
		Monster2 mo2 = new Monster2();
		Rabbit r1 = new Rabbit();
		

		w2.huntMonster1(mo1);
		System.out.println("------------------------");
		w2.huntMonster1(mo1);
		System.out.println("------------------------");
		w2.huntMonster1(mo1);
		System.out.println("------------------------");
		w2.huntMonster1(mo1);
		System.out.println("------------------------");
		w2.huntMonster2(mo2);
		System.out.println("------------------------");
		w2.huntMonster2(mo2);
		System.out.println("------------------------");
		w2.huntMonster2(mo2);
		System.out.println("------------------------");
		w2.huntRabbit(r1);


		

	}

	}

