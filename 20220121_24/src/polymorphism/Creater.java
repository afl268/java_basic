package polymorphism;

public class Creater extends Person {

	private int upvod;
	public Creater(String name, int age, int vod) {
		super(name, age);
		this.upvod = upvod;
	}
	public void showPerson() {
		super.showPerson();
		System.out.println("올린영상 수 : " + upvod);
	}
	public void showCreater() {
		System.out.println("나는 크리에이터입니다.");
	}
	
	

}
