
public class ForQ7P118 {
	public static void main(String[] args) {
		// 피라미드형 별을 찍어보겠습니다.
		// 아래와 같은 별을 찍을 수 있도록 코드를 작성해주세요
		// ****
		// ***
		// **
		// *
		// 중첩 반복문의 어느곳이 세로, 가로를 담당하는지 생각해보세요.
		for(int i = 4; i >= 1 ; i--) {
			// 별 갯수는 점점 줄어듬으로 i for문은 큰 수에서 점점 작아지도록 하고
			// j의 반복횟수는 처음엔 컸다가 점점 작아지는 i 변수를 받아서
			// 줄어들게 세팅한다.
			for(int j = 0; j < i; j++) {
				System.out.print("*");
			} System.out.println("");
		}
	}
}
