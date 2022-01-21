import java.util.Scanner;

public class PlzDontOpenThisClass {
	public static void main(String[] args) {
	
	Scanner scan = new Scanner(System.in);
	System.out.println("이번엔 또 누구야?");
	String a = scan.nextLine();
	if (a.equals("아유무")) {
		System.out.println("오");
	} else {
		for(int i = 1; i>0; i+= 1 ) {
		System.out.println(a+" 쪽이 더 중요한거야?");
		}
	}
}
}