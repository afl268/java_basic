import java.util.Scanner;

public class ElseifQ1P97 {

	public static void main(String[] args) {
		// 성적 판독기를 만들어보겠습니다.
		// if ~ else if ~ else 구문을 사용해 만들어주세요.
		// 성적기준 95 이상 A+, 90 이상 A0, 85이상 B+, 80이상 B0
		// 75이상 C+, 70이상 C0, 65이상 D+, 60이상 D0
		// 60미만 F 로 콘솔창에 출력해주세요.
		// 스캐너로 INT SCORE; 변수에 성적을 입력한 결과로 콘솔에 성적이 나오면 됩니다.
		Scanner scan = new Scanner(System.in);
		System.out.println("성적을 입력해주세요.");
		int score = scan.nextInt();
		if (score>100){
			System.out.println("그런 성적이 어딨어요");
		}
		  else if (score>=95) {
			System.out.println("A+ 입니다.");
		} else if (score>=90) {
			System.out.println("A0 입니다.");
		} else if (score>=85) {
			System.out.println("B+ 입니다.");
		} else if (score>=80) {
			System.out.println("B0 입니다.");
		} else if (score>=75) {
			System.out.println("C+ 입니다.");
		} else if (score>=70) {
			System.out.println("C0 입니다.");
		} else if (score>=65) {
			System.out.println("D+ 입니다.");
		} else if (score>=60) {
			System.out.println("D0 입니다.");
		} else {
			System.out.println("F 입니다.");
		} scan.close();
	}
}