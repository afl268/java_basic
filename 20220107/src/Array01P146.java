import java.util.Arrays;

public class Array01P146 {

	public static void main(String[] args) {
		// 배열은 일반 변수와 달리 하나의 변수명에 여러 값을 입력할 수 있고
		// 자료형에 []를 붙이는 것으로 선언한다.
		// 배열은 크기를 정해서 생성할 수도 있고, 정하지 않고 생성할 수도 있는데
		// 설정된 크기 이상으로 자료를 넣을 수 없다.
		// 배열의 크기(저장가능갯수)는 "배열의 길이"라 표현한다.
		// 배열명.length를 이용해 배열크기를 알 수 있다.
		
		// 배열의 선언 1(길이 확정 X)
		int a[] = {1, 515, 3, 4}; // a 변수에 1, 2, 3, 4를 동시에 넣기
		// Arrays.toString()이 없으면 콘솔창에 주소만 나온다.
		System.out.println(Arrays.toString(a));
		double b = 5.15;
		System.out.println(b); 
		
		// 배열의 선언2(길이 확정 X)
		double[] c = {5.1, 6.3, 7.2, 8.77};
		// c 변수에 저장된 주소가 아닌 실제 자료를 조회하기
		System.out.println(Arrays.toString(c));
		System.out.println(c);
		
		// 배열의 생성(길이 확정) // 자동으로 0이 채워진다.
		int [] d = new int[10];
		// 일단 10칸이 전부 0으로 채워짐
		System.out.println(Arrays.toString(d));		
		
		// 배열의 조회
		// 배열[순번]을 적으면 해당 순번의 자료만 나온다.
		// 순번은 인덱스번호 라고 지칭하고
		// 인덱스 번호를 이용해 자료를 얻는 행위를 인덱싱이라고 한다.
		System.out.println(a[2]); 
		
		//배열 내부 자료의 개수(길이)
		// 는 배열명.length 로 알 수 있다.
		System.out.println(d.length);
	}
}
