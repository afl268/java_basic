package accessmodifier;

public class Dog { // 정의부
	// 강아지의 정보를 자율적으로 4개 부여해주세요.
	// String name은 고정입니다.
	public int age;
	public int weight;
	public int height;
	private String name;
	
	// 생성자로 강아지 정보를 처리하시되
	// 이름은 무조건 입력받게 해주세요.
	public Dog(String n) {
		age = 5;
		weight = 10;
		height = 70;
		name = n;
	}

	// 수치 정보값이 변경되는 형태의 메서드 하나를 만들어주세요.
	public void grow() {
		age += 1;
		weight += 2;
		height += 3;
	System.out.println("이름 : " + name + " 나이 : " + age +" 무게 : " + weight + " 키 : " + height);
	}

}
