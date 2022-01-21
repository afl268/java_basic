package superkeyword;

public class Main02 {

	public static void main(String[] args) {
		// 초음속 비행기를 만드는거야. 초기속도는 300
		
		// 비행을 2번 하는거야
		
		SupersonicAirplane sa1 = new SupersonicAirplane(300);
		
		sa1.fly();
		sa1.fly();

	}

}
