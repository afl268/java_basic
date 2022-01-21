package overloading;

public class Main02 {

	public static void main(String[] args) {
		// 알바생 둘 만들어주세요
		// 하나는 시급을 15000원으로 해주시고
		// 다른 하나는 입력 없이 생성해주세요.
		
		Parttimer p1 = new Parttimer(true, 15000, "노브랜드", "김길동");
		System.out.println("===============================================");
		Parttimer p2 = new Parttimer(false, "노브랜드", "김진동");
		System.out.println("===============================================");
		// 시급 5000원을 넣고 파트타이머 만들기
		Parttimer p3 = new Parttimer(true, 5000, "노브랜드", "김동");
	}

}
