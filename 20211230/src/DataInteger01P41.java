
public class DataInteger01P41 {
	public static void main(String[] args) {
		// 정수형을 나타낼 수 있는 자료는 크게 4가지이다.
		// byte(1바이트), short(2바이트), int(4바이트), long(8바이트)
		// 변수 선언시 자료형을 위의 키워드로 써주면 된다.
		// byte형 자료 생성 및 초기화(변수 만들고 바로 값 넣기)
		// 10101(2진수) -> -5 , 맨 왼쪽 수는 음수 양수 표현 0이면 +, 1이면 -
		byte a = 127; // 8비트(0~ 2^8 -1)
		short b = 32767; // 16비트(0 ~2^16 -1)
		int c = 2100000000; // 32비트(0 ~ 2^32 - 1)
		long d = 2041894; // 64비트(0 ~ 2^64 -1 )
		System.out.println(a); // 빠른 복사 -> 블럭지정 후 ctrl + alt + 아래방향키
		System.out.println(b);
		System.out.println(c);
		System.out.println(d);
		} //main 종료
}