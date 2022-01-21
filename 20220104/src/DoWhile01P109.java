
public class DoWhile01P109 {

	public static void main(String[] args) {
		// do ~ while 구문은 while문과 기본적인 동작 원리는 같다.
		// 단, 첫 번째 바퀴는 조건비교 없이 바로 실행하고
		// 두 번째 바퀴부터 조건비교를 통해 추가 실행 여부를 결정한다.
		int a = 1;
		
		do { // do 구문을 먼저 쓰고 하단에 while문을 적는다
			a += 2;
			System.out.println("a는 5보다 작은가?");
		} while(a < 4); // 일반 while문과 달리 끝나는 지점에 ;를 붙인다.

	}

}
