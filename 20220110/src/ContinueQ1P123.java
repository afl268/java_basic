import java.util.Scanner;

public class ContinueQ1P123 {

	public static void main(String[] args) {
		// 1부터 n까지의 총합을 구하되 홀수끼리만 더한
		// 총합을 구하는 구문을 작성해주세요.
		// continue문을 반드시 사용하는 로직으로 작성해주세요.
		// n은 스캐너로 입력받습니다.
		
		Scanner scan = new Scanner(System.in);
		System.out.println("정수를 입력해주세요.");
		int num = scan.nextInt();
		int total = 0;
	
		for (int i = 0; i <= num; i++) {
			
			if(i % 2 == 0) {
				continue;
				
			} total += i;
		}
		System.out.println("현재 1부터 " + num + "까지 더했습니다.");
		System.out.println("총합 = " +total + "입니다.");
	}

}
