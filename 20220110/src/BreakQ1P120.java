import java.util.Scanner;

public class BreakQ1P120 {

	public static void main(String[] args) {
		// Scanner로 정수를 입력받으세요.
		// 1 ~ n 까지 차곡차곡 순서대로 더해나갔을 때
		// 1부터 몇 까지 더해야 입력된 정수를 초과하는지 계싼해주는
		// 프로그램을 작성하세요.
		// ex) 40 입력시 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 = 45
		// 1부터 9까지 더하면 40을 초과해 총합이 45가 됩니다. 라고 출력되게 해주세요.
		
		Scanner scan = new Scanner(System.in);
		System.out.println("정수를 입력해주세요.");
		int goal = scan.nextInt();
		int count = 1;
		int total = 0;
		
		while (true) {
			total += count;
				if (total>goal) {
					System.out.println("목표값 : "+ goal);
					System.out.println("총합 : " + total);
					System.out.println("몇 까지 더했나? " + count);
					System.out.println("1부터 " + count + "까지의 총합은 : " + goal + 
							"를 초과해 " + total + "입니다.");
					break;
			} 
				count++;
		}
	}
}
