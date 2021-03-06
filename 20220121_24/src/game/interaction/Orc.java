package game.interaction;

public class Orc {
	// 오크는 hp, atk
	private int hp;
	private int atk;
	private int exp;
	
	// 생성자는 오크에게 hp 5, atk 3 부여
	
	public int getExp() {
		return exp;
	}

	public void setExp(int exp) {
		this.exp = exp;
	}

	public Orc() {
		this.hp = 5;
		this.atk = 3;
	}

	// doBattle() 메서드 생성
	// 유저의 공격력을 입력받아 오크의 체력을 차감
	public void doBattle(int uAtk) {
		this.hp -= uAtk;
		System.out.println("오크의 남은 체력 : " + this.hp);
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
