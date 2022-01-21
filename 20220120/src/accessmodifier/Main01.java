package accessmodifier;

public class Main01 {

	public static void main(String[] args) {
		// Magician을 하나 생성
		// getInfo()로 정보 조회
		// hunt()를 2번 호출해 사냥 2번
		// 사냥 끝나고 다시 getInfo()
		Magician m1 = new Magician("wizard");
		
		m1.getInfo();
		m1.hunt();
		m1.hunt();
		m1.getInfo();

	}

}
