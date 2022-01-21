import java.util.Arrays;

public class EnhancedFor01P162 {

	public static void main(String[] args) {
		// 향상된 for문은 반복문 진행 시 타겟으로 배열을 넣는다.
		// 이 경우 반복실행 횟수는 배열의 내부요소 개수만큼이다.
		
		// 7개의 요소를 묶어서 arr1에 저장
		int [] arr1 = {100, 211, 339, 475, 591, 600, 700};
		// arr1에 자료가 맞게 들어갔나 확인
		System.out.println(Arrays.toString(arr1));
		// arr1[순번]을 입력해서 내부 요소를 하나만 꺼낼 수 있음(순번은 0부터 시작)
		System.out.println(arr1[2]);
		// for(하나씩 받을 변수 : 배열) {
		//   실행문들...;
		// }
		
		for (int Arisa : arr1) {
			System.out.println(Arisa);
		}
	}

}
