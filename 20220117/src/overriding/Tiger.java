package overriding;

public class Tiger extends Animal{
public int size;
	
	// overriding 요건
	// 이름과 리턴 자료형 등이
	// 같은 부모 쪽 메서드를
	// 자식 쪽에 다시 중복해서 작성함
	public void howl() {
		System.out.println("어흥");
	}
	
	public void getInfo() {
		System.out.println("이름 : " + name + ", 나이 : " + age
							+ ", 성별 : " + gender + ", 크기 : " + size);
		
	}

}
