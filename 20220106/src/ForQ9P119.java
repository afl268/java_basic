
public class ForQ9P119 {

	public static void main(String[] args) {
		// 중첩 반복문을 이용해서
		// 다음 방정식의 양의 정수
		// 해를 모두 구하세요
		// 4x + 5y = 60
		// x for문, y for문, if 문이 필요합니다.
		for (int x = 0; x <= 15; x++) {
			for(int y = 0; y <= 15; y++) {
	
			if ((4 * x) + (5 * y) == 60) {
				System.out.println("x = "+ x + ", " + "y = " + y );
				}
			}
		}
	}
}
