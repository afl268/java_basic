package accessmodifier;


public class MainP197 {

	public static void main(String[] args) {
		Warrior w1 = new Warrior("ArisA");
		// public 요소는 외부지역에서 마음대로 값을 변경 할 수 있음
		// private 요소는 외부지역에서는 절대로 값을 조회하거나 변경 할 수 없음.
		w1.hunt();
		w1.hunt();
		w1.hunt();
	}
}
