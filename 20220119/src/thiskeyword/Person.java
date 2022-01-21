package thiskeyword;

public class Person {
	// private으로 사람 정보를 만들어주는거야
	// 이름, 나이, 돈, 전공
	private String name;
	private int age;
	private int money;
	private String major;
	
	// 생성자를 만들어주는거야. 4개 항목을 모두 입력받아 대입해주는거야
	public Person(String name, int age, int money, String major) {
		this.name = name;
		this.age = age;
		this.money = money;
		this.major = major;
	}
	
	// 이름 나이 소지금액 전공을 콘솔에 찍어주는 getInfo() 작성
	public void getInfo() {
		System.out.println("이름 : " + name + ",  나이 : " + 
						age + ", 소지금액 : " + money + ", 전공 : " + major);
	}
}
