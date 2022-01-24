package game.interaction;

public class Monster1 {
	
	private int hp;
	private int atk;
	private int exp;
	
	public int getExp() {
		return exp;
	}

	public void setExp(int exp) {
		this.exp = exp;
	}

	public Monster1() {
		this.hp = 10;
		this.atk = 1;
	}
	
	public void doBattle(int uAtk) {
		this.hp -= uAtk;
		System.out.println("몬스터1의 남은 체력 : " + this.hp);
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
