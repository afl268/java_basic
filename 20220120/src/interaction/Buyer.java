package interaction;

public class Buyer {
	// 구매자는 money(소지금), mango(소지망고개수)를 멤버변수로 가진다
	
	// 생성자는 돈을 받아 소지금을 초기화해주고 망고는 0으로 초기화한다.
	
	private int money;
	private int mango;
	private int MANGO_PRIZE;
	
	public Buyer(int money) {
		this.money = money;
		this.mango = 0;
		this.MANGO_PRIZE = 1000;
	}
	
	public void showBuyer() {
		System.out.println("---------구매자정보-------------");
		System.out.println("현재 소지금 : " + this.money + ", 소지망고개수 : " + this.mango);
		System.out.println("-------------------------------");
	}
	
	// 구매자 입장에서 망고 구매하는 buyMango 만들기
	// 구매자가 buyMango를 호출할 때 동시에 판매자의 sellMango도 동시에 호출
	// 누구에게 몇 개를 구매할지 적음
	// 내 금액이 차감되고 망고가 늘어나는 로직
	public void buyMango(Seller seller, int mango) {
		// 판매자의 망고가 내가 구매하려는 망고보다 적은 경우
		// "망고 재고가 부족합니다." 라고 알리고 메서드를 중지시킨다.
		// Seller쪽의 망고 재고를 Buyer쪽에서 미리 아는 방법은
		// getMango()를 Seller 쪽에 만들어주는 수 밖에 없으므로
		// getMango()를 Seller 쪽에 생성해줘서 Buyer쪽에서
		// 망고개수를 조회할 수 있도록 해 주시고, 그 결과를 토대로
		// 망고재고가 부족하다면 return;으로 buyMango가 실행되지 않게 하기
		
		System.out.println("망고 재고 : " + seller.getMango());
		if (mango > seller.getMango()) {
			System.out.println("망고 재고 부족  , 망고 재고 : " + seller.getMango());
			return;
		}
		this.money -= MANGO_PRIZE * mango;
		this.mango += mango;
		seller.sellMango(mango);
	}

}
