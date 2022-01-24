package game.interaction;

public class Guardian {
	private int hp;
	private int mp;
	private int atk;
	private int exp;
	private int lv;
	
	public Guardian() {
		this.hp = 30;
		this.mp = 10;
		this.atk = 2;
		this.lv = 1;
		this.exp = 0;
	}
	// 오크와 교전할 수 있도록 huntOrc() 생성
	public void Strike(Orc orc) {
		// orc의 체력을 검사해서 0 이하라면 공격 없이
		// 이미 죽은 오크입니다. 라는 멘트만 뜨게 해주는거야
		if (orc.getHp() <= 0) {
			System.out.println("이미 오크가 죽었습니다.");
			return;
		}
		orc.doBattle(this.atk * 2);
		this.mp -= 3;
		
		// 오크가 전사의 공격으로 죽은 경우 경험치 10 플러스
		// 오크가 죽었습니다. 라는 멘트가 뜨고 메서드 종료
		if(orc.getHp() <= 0) {
			System.out.println("오크 사망. 전사 경험치 10 상승.");
			System.out.println("필살 스트라이크.");
			this.exp += 10;
			System.out.println("가디언의 경험치 : " + this.exp);
			System.out.println("가디언의 남은 체력 : " + this.hp);
			
		} else {
			this.hp -= orc.getAtk();
			System.out.println("가디언의 남은 체력 : " + this.hp);
		}
		}
	public void huntMonster1(Monster1 mon1) {

		if (mon1.getHp() <= 0) {
			System.out.println("이미 몬스터1은 죽었습니다.");
			return;
		}
		mon1.doBattle(this.atk);

		if(mon1.getHp() <= 0) {
			System.out.println("몬스터 1 사망. 전사 경험치 8 상승.");
			this.exp += 8;
			System.out.println("가디언의 경험치 : " + this.exp);
			System.out.println("가디언의 남은 체력 : " + this.hp);
			
		} else {
			this.hp -= mon1.getAtk();
			System.out.println("가디언의 남은 체력 : " + this.hp);
		}
		}
	public void huntMonster2(Monster2 mon2) {

		if (mon2.getHp() <= 0) {
			System.out.println("이미 몬스터2가 죽었습니다.");
			return;
		}
		mon2.doBattle(this.atk);

		if(mon2.getHp() <= 0) {
			System.out.println("몬스터 2 사망. 전사 경험치 7 상승.");
			this.exp += 7;
			System.out.println("가디언의 경험치 : " + this.exp);
			System.out.println("가디언의 남은 체력 : " + this.hp);
			
		} else {
			this.hp -= mon2.getAtk();
			System.out.println("가디언의 남은 체력 : " + this.hp);
		}
		}
	public void huntRabbit(Rabbit rabbit) {

		if (rabbit.getHp() <= 0) {
			System.out.println("rabbit 죽었습니다.");
			return;
		}
		rabbit.doBattle(this.atk);

		if(rabbit.getHp() <= 0) {
			System.out.println("rabbit 사망. 전사 경험치 7 상승.");
			this.exp += 7;
			System.out.println("가디언의 경험치 : " + this.exp);
			System.out.println("가디언의 남은 체력 : " + this.hp);
			
		} else {
			this.hp -= rabbit.getAtk();
			System.out.println("가디언의 남은 체력 : " + this.hp);
		}
		}
	
	public int getHp() {
		return hp;
	}

	public void setHp(int hp) {
		this.hp = hp;
	}

	public int getMp() {
		return mp;
	}

	public void setMp(int mp) {
		this.mp = mp;
	}

	public int getAtk() {
		return atk;
	}

	public void setAtk(int atk) {
		this.atk = atk;
	}

	public int getExp() {
		return exp;
	}

	public void setExp(int exp) {
		this.exp = exp;
	}

	public int getLv() {
		return lv;
	}

	public void setLv(int lv) {
		this.lv = lv;
	}

}
