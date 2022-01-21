
public class UnaryQ1P65 {

	public static void main(String[] args) {
		// int a에 15를 담은 다음 후위 -> 전위 순으로 --를 Unary01P65처럼 사용해서
		// 1씩 차감하고 콘솔에 찍는 것을 반복하기.
		// 단, 실행 로직은 Unary01P65에서 그랬듯 주석으로 하단에 풀어서 작성까지 하기.
		int a = 15;
		System.out.println(a--); // 후위 수식 : sysout 실행 후에  a값 -1 
		// 1. a값을 먼저 콘솔에 찍음 : sysout(a(15))
		// 2. 그 후에 a 값을 1 감소시킴 : a(15) - 1
		System.out.println(a); // 위에서 감소된 a값 출력
		System.out.println(--a); // 전위 수식 : sysout 실행 전에 a값 -1
		// 1. a 값을 전위수식이므로 먼저 감소시킴 : a(14) -1
		// 2. 감소된 a 값을 콘솔에 나타나게 함  : sysout(a(13))
		System.out.println(a); // 위에서 전위수식으로 먼저 감소되었기 때문에 위의 sysout과 동일한 값 출력

	}

}
