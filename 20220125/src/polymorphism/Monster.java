package polymorphism;

public class Monster {
	private int hp;
	private int atk;
	
	public Monster(int hp, int atk) {
		this.hp = hp;
		this.atk = atk;
	}
	public void doBattle(int uAtk) {
		this.hp -= uAtk;
		System.out.println("몬스터가 공격을 받았다.");
		System.out.println("체력이 " + this.hp + "남았다.");
		
	}
	public int getHp() {
		return hp;
	}
	public void setHp(int hp) {
		this.hp = hp;
	}
	public int getAtk() {
		return atk;
	}
	public void setAtk(int atk) {
		this.atk = atk;
	}

}
