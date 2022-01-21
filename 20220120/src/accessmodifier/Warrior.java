package accessmodifier;

public class Warrior extends Commoner {

	public Warrior(String name) {
		super(name);
	}
	public void hunt() {
		System.out.println("전사 기본 사냥.");
		System.out.println("===================");
		setHp(getHp()-1);
		setExp(getExp()+10);
}
	public void doubleAttack() {
		System.out.println("전사 특수스킬 사용.");
		System.out.println("===================");
		setHp(getHp() -4);
		setExp(getExp() +25);
	}
	public void getInfo() {
		System.out.println("현재 마나 : "+ getMp());
		System.out.println("현재 HP : " + getHp());
		System.out.println("현재 레벨 : " + getLv());
		System.out.println("현재 경험치 : " + getExp());
		System.out.println("이름 : " + getName());
		System.out.println("===================");
	}
	}
