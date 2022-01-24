package game.interaction;

public class Monster2 {
	
	private int hp;
	private int atk;
	private int exp;
	
	public int getExp() {
		return exp;
	}

	public void setExp(int exp) {
		this.exp = exp;
	}

	public Monster2() {
		this.hp = 5;
		this.atk = 2;
	}
	
	public void doBattle(int uAtk) {
		this.hp -= uAtk;
		System.out.println("몬스터2의 남은 체력 : " + this.hp);
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
