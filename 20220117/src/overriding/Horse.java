package overriding;

// Animal을 상속
public class Horse extends Animal {
	public int rank;
	
	// overriding 요건
	// 이름과 리턴 자료형 등이
	// 같은 부모 쪽 메서드를
	// 자식 쪽에 다시 중복해서 작성함
	public void howl() {
		System.out.println("히힝");
	}
	
	public void getInfo() {
		System.out.println("이름 : " + name + ", 나이 : " + age
							+ ", 성별 : " + gender + ", 순위 : " + rank);
		
	}

}
