package constructor;

public class Main02P204 {

	public static void main(String[] args) {
		// 농구선수를 생성해주세요.
		
		BasketballPlayer p1 = new BasketballPlayer(190, 50); 
		BasketballPlayer p2 = new BasketballPlayer(191, 110);
		p1.dunkShoot();
		p2.dunkShoot();
	}
}
