import java.util.Scanner;

public class if02O93 {

	public static void main(String[] args) {
		// 교재 93페이지의 프로그램 4-1 코드
		Scanner scan  = new Scanner(System.in);
		
		// 변수 선언
		int su;
		
		System.out.println("정수 입력 : ");
		su = scan.nextInt();
		
		// if문의 실행문이 단 한줄이라면, {}를 생략해도 작동한다.
		if (su > 0) {
			System.out.println("양수입니다.");
		}
		scan.close();
	}
}