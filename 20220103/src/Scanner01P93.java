import java.util.Scanner;

public class Scanner01P93 {

	public static void main(String[] args) {
		// 코드 실행 중 특정한 사용자에게 직접 입력받고 싶은 경우 스캐너 기능을 사용한다.
		// 아래에 Scanner라고 적은 부분에 마우스를 갖다대고 import를 한다.
		// 만약 안 나오면 r 오른쪽에 커서를 두고 ctrl+space를 눌러서 자동완성을 시켜도 된다.
		// java.util
		Scanner scan = new Scanner(System.in);
		
		// 정수 하나를 a변수에 입력받기.
		System.out.println("정수를 입력해주세요.");
		int a = scan.nextInt();
		
		// 입력받은 정수 콘솔에 찍기
		System.out.println(a);
		// scan기능은 다 썼다면 닫아주는게 더 좋다.
		scan.close();

	}

}
