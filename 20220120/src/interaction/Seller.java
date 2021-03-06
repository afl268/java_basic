package interaction;

public class Seller {
	// 변수로 int money(매출), int mango(재고)를 가진다.
	private int money;
	private int mango;
	private int MANGO_PRIZE;
	
	// 생성자에서 money는 초기값이 0이고, mango는 입력받도록 해주는거야
	
	public Seller(int mango) {
		money = 0;
		this.mango = mango;
		this.MANGO_PRIZE = 1000;
	}
	
	// showSeller() 이용해 현재 소지금, 망고개수를 조회하도록 메서드 작성
	
	public void showSeller() {
		System.out.println("---------상인정보-------------");
		System.out.println("현재 소지금 : " + this.money + ", 현재망고재고 : " + this.mango);
		System.out.println("-------------------------------");
	}
	
	// sellMango(int mango)를 이용해서 망고개수를 입력받으면
	// 자신의 망고는 입력받은 망고개수만큼 차감하고, this.money는
	// 망고개수 * 망고가격만큼 증가
	public void sellMango(int mango) {
		// 망고가 모자랄 시 "망고가 모자랍니다" 라고 하고 메서드를
		// return;을 마지막에 적어 강종
		
		if (this.mango < mango ) {
			System.out.println("망고가 모자랍니다. 현재 재고 : " + this.mango);
			return;
		}
		this.mango -= mango;	
		this.money += mango * MANGO_PRIZE;
	}

	public int getMango() {
		return this.mango;
	}


}
