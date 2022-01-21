package interaction;

public class Main01 {
	// 판매자 하나 생성
	// 판매자 정보 조회
	// 구매자 하나 생성
	// 구매자 정보 조회
	// 구매자가 판매자를 지정해 망고구매
	// 구매 후 판매자 정보 조회
	// 구매 후 구매자 정보 조회
	public static void main(String[] args) {
		Seller s1 = new Seller(100);
		s1.showSeller();
		Buyer b1 = new Buyer(200000);
		b1.showBuyer();
		b1.buyMango(s1, 101);
		s1.showSeller();
		b1.showBuyer();
	
	}
		
	}
