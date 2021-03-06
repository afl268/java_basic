package heapmemory;

public class ArrayComparison {
	
	public static void main(String[] args) {
		int[] arr1 = {1, 2, 3, 4, 5};
		int[] arr2 = arr1;
		int[] arr3 = {1, 2, 3, 4, 5};
		arr1[0] = 10;
		System.out.println(arr1[0]);
		System.out.println(arr2[0]);
		System.out.println(arr3[0]);
		// 다시 1, 2, 3, 4, 5로 돌려놓음
		arr1[0] = 1;
		
		// arr1(arr2)와 arr3의 내용물은
		// 둘 다 {1, 2, 3, 4, 5}로 동일함
		System.out.println(arr1 == arr3);
		
		// equals()를 사용하면 주소값이 아닌
		// 힙에 직접 저장된 데이터가 동일한지 비교한다.
		// 대상1.equals(대상2);
		System.out.println(arr1.equals(arr3));
	}
}
