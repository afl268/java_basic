package superkeyword;

public class Main01 {

	public static void main(String[] args) {
		// 비행기를 생성해서 초기속도는 300으로 세팅
		// 가속 2번으로 900으로 속도를 만들어주고
		// 0까지 내리기
		Airplane a1 = new Airplane(300);
		a1.fly();
		a1.fly();
		a1.breakSpeed();

	}

}
